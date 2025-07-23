import ctypes
import sys
import threading
import time
import tkinter as tk
from tkinter import messagebox
import win32file
import win32con
from ctypes import wintypes
import math

# --- 复用常量和结构体 ---
XDMA_FILE_H2C_0 = r"\h2c_0"
XDMA_FILE_C2H_0 = r"\c2h_0"

class GUID(ctypes.Structure):
    _fields_ = [
        ("Data1", wintypes.ULONG),
        ("Data2", wintypes.USHORT),
        ("Data3", wintypes.USHORT),
        ("Data4", wintypes.BYTE * 8),
    ]
GUID_DEVINTERFACE_XDMA = GUID(0x74C7E4A9, 0x6D5D, 0x4A70,
                             (0xBC, 0x0D, 0x20, 0x69, 0x1D, 0xFF, 0x9E, 0x9D))

setupapi = ctypes.WinDLL("setupapi")
kernel32 = ctypes.WinDLL("kernel32")

class SP_DEVICE_INTERFACE_DATA(ctypes.Structure):
    _fields_ = [
        ("cbSize", wintypes.DWORD),
        ("InterfaceClassGuid", GUID),
        ("Flags", wintypes.DWORD),
        ("Reserved", ctypes.POINTER(wintypes.ULONG)),
    ]

class SP_DEVICE_INTERFACE_DETAIL_DATA(ctypes.Structure):
    _fields_ = [
        ("cbSize", wintypes.DWORD),
        ("DevicePath", wintypes.WCHAR * 1),
    ]

class SP_DEVINFO_DATA(ctypes.Structure):
    _fields_ = [
        ("cbSize", wintypes.DWORD),
        ("ClassGuid", GUID),
        ("DevInst", wintypes.DWORD),
        ("Reserved", ctypes.POINTER(wintypes.ULONG)),
    ]

SetupDiGetClassDevs = setupapi.SetupDiGetClassDevsW
SetupDiGetClassDevs.argtypes = [ctypes.POINTER(GUID), wintypes.LPCWSTR, wintypes.HWND, wintypes.DWORD]
SetupDiGetClassDevs.restype = wintypes.HANDLE

SetupDiEnumDeviceInterfaces = setupapi.SetupDiEnumDeviceInterfaces
SetupDiEnumDeviceInterfaces.argtypes = [wintypes.HANDLE, ctypes.POINTER(SP_DEVINFO_DATA), ctypes.POINTER(GUID), wintypes.DWORD, ctypes.POINTER(SP_DEVICE_INTERFACE_DATA)]
SetupDiEnumDeviceInterfaces.restype = wintypes.BOOL

SetupDiGetDeviceInterfaceDetail = setupapi.SetupDiGetDeviceInterfaceDetailW
SetupDiGetDeviceInterfaceDetail.argtypes = [wintypes.HANDLE, ctypes.POINTER(SP_DEVICE_INTERFACE_DATA), ctypes.c_void_p, wintypes.DWORD, ctypes.POINTER(wintypes.DWORD), ctypes.POINTER(SP_DEVINFO_DATA)]
SetupDiGetDeviceInterfaceDetail.restype = wintypes.BOOL

SetupDiDestroyDeviceInfoList = setupapi.SetupDiDestroyDeviceInfoList
SetupDiDestroyDeviceInfoList.argtypes = [wintypes.HANDLE]
SetupDiDestroyDeviceInfoList.restype = wintypes.BOOL

DIGCF_PRESENT = 0x00000002
DIGCF_DEVICEINTERFACE = 0x00000010
INVALID_HANDLE_VALUE = -1
FILE_BEGIN = 0

# --- 设备操作函数 ---
def find_device_base_path():
    dev_info = SetupDiGetClassDevs(ctypes.byref(GUID_DEVINTERFACE_XDMA), None, None, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE)
    if dev_info == INVALID_HANDLE_VALUE:
        return None
    dev_interface_data = SP_DEVICE_INTERFACE_DATA()
    dev_interface_data.cbSize = ctypes.sizeof(dev_interface_data)
    if not SetupDiEnumDeviceInterfaces(dev_info, None, ctypes.byref(GUID_DEVINTERFACE_XDMA), 0, ctypes.byref(dev_interface_data)):
        SetupDiDestroyDeviceInfoList(dev_info)
        return None
    required_len = wintypes.DWORD()
    SetupDiGetDeviceInterfaceDetail(dev_info, ctypes.byref(dev_interface_data), None, 0, ctypes.byref(required_len), None)
    detail_data_buffer = ctypes.create_string_buffer(required_len.value)
    if sys.maxsize > 2**32:
        cb_size = 8
    else:
        cb_size = 5
    ctypes.cast(detail_data_buffer, ctypes.POINTER(wintypes.DWORD))[0] = cb_size
    if not SetupDiGetDeviceInterfaceDetail(dev_info, ctypes.byref(dev_interface_data), detail_data_buffer, required_len.value, None, None):
        SetupDiDestroyDeviceInfoList(dev_info)
        return None
    device_path_offset = SP_DEVICE_INTERFACE_DETAIL_DATA.DevicePath.offset
    device_path = ctypes.wstring_at(ctypes.addressof(detail_data_buffer) + device_path_offset)
    SetupDiDestroyDeviceInfoList(dev_info)
    return device_path

def open_device(path, access_flags):
    try:
        handle = win32file.CreateFile(
            path,
            access_flags,
            win32con.FILE_SHARE_READ | win32con.FILE_SHARE_WRITE,
            None,
            win32con.OPEN_EXISTING,
            win32con.FILE_ATTRIBUTE_NORMAL | win32con.FILE_FLAG_WRITE_THROUGH,
            None
        )
        if handle == win32file.INVALID_HANDLE_VALUE:
            return None
        return handle
    except Exception:
        return None

def close_device(handle):
    if handle and handle != win32file.INVALID_HANDLE_VALUE:
        win32file.CloseHandle(handle)

# --- 测速线程 ---
class SpeedTestThread(threading.Thread):
    def __init__(self, h2c_handle, c2h_handle, update_callback):
        super().__init__()
        self.h2c_handle = h2c_handle
        self.c2h_handle = c2h_handle
        self.update_callback = update_callback
        self.running = threading.Event()
        self.running.set()
        self.block_size = 1024 * 1024  # 1MB
        self.test_addr = 0

    def run(self):
        data = bytes([0xAA] * self.block_size)
        while self.running.is_set():
            try:
                # 写
                win32file.SetFilePointer(self.h2c_handle, self.test_addr, FILE_BEGIN)
                t0 = time.perf_counter()
                err, written = win32file.WriteFile(self.h2c_handle, data)
                t1 = time.perf_counter()
                if err != 0 or written != self.block_size:
                    self.update_callback(f"写入失败: err={err}, written={written}")
                    break
                write_speed = self.block_size / (t1 - t0) / (1024*1024)
                # 读
                win32file.SetFilePointer(self.c2h_handle, self.test_addr, FILE_BEGIN)
                t2 = time.perf_counter()
                err, read_data = win32file.ReadFile(self.c2h_handle, self.block_size)
                t3 = time.perf_counter()
                if err != 0 or len(read_data) != self.block_size:
                    self.update_callback(f"读取失败: err={err}, read={len(read_data)}")
                    break
                read_speed = self.block_size / (t3 - t2) / (1024*1024)
                # 数据校验和打印
                print(f"[DEBUG] 读回前16字节: {read_data[:16].hex(' ').upper()}")
                if read_data[:16] != data[:16]:
                    print("[WARNING] 读回数据与写入数据不一致，可能为假测速或硬件未响应！")
                # 更新速率
                self.update_callback(f"写入速率: {write_speed:.2f} MB/s\n读取速率: {read_speed:.2f} MB/s")
                time.sleep(0.5)
            except Exception as e:
                self.update_callback(f"异常: {e}")
                break
    def stop(self):
        self.running.clear()

# --- GUI主程序 ---
class SpeedGUI:
    def __init__(self, root):
        self.root = root
        self.root.title("PCIe 测速码表")
        # 仪表盘参数
        self.gauge_max = 500  # MB/s
        self.gauge_radius = 120
        self.gauge_center = (self.gauge_radius + 20, self.gauge_radius + 20)
        self.gauge_start_angle = 210  # 左下
        self.gauge_end_angle = -30    # 右下

        # --- 写入速率仪表盘 ---
        frame1 = tk.Frame(root)
        frame1.pack(side=tk.LEFT, padx=20, pady=10)
        tk.Label(frame1, text="写入速率", font=("Consolas", 14, "bold")).pack()
        self.write_gauge_canvas = tk.Canvas(frame1, width=self.gauge_radius*2+40, height=self.gauge_radius*2+40, bg='white', highlightthickness=0)
        self.write_gauge_canvas.pack()
        self.write_gauge_pointer = None
        self._draw_gauge_base(self.write_gauge_canvas, is_write=True)
        self.write_speed_var = tk.StringVar()
        self.write_speed_var.set("写入速率: 0.00 MB/s")
        tk.Label(frame1, textvariable=self.write_speed_var, font=("Consolas", 12)).pack(pady=5)
        self.btn_start = tk.Button(frame1, text="开始测速", command=self.start_test, width=15, height=2)
        self.btn_start.pack(pady=10)

        # --- 读取速率仪表盘 ---
        frame2 = tk.Frame(root)
        frame2.pack(side=tk.LEFT, padx=20, pady=10)
        tk.Label(frame2, text="读取速率", font=("Consolas", 14, "bold")).pack()
        self.read_gauge_canvas = tk.Canvas(frame2, width=self.gauge_radius*2+40, height=self.gauge_radius*2+40, bg='white', highlightthickness=0)
        self.read_gauge_canvas.pack()
        self.read_gauge_pointer = None
        self._draw_gauge_base(self.read_gauge_canvas, is_write=False)
        self.read_speed_var = tk.StringVar()
        self.read_speed_var.set("读取速率: 0.00 MB/s")
        tk.Label(frame2, textvariable=self.read_speed_var, font=("Consolas", 12)).pack(pady=5)
        self.btn_stop = tk.Button(frame2, text="结束测速", command=self.stop_test, width=15, height=2, state=tk.DISABLED)
        self.btn_stop.pack(pady=10)

        self.test_thread = None
        self.h2c_handle = None
        self.c2h_handle = None

    def _draw_gauge_base(self, canvas, is_write):
        r = self.gauge_radius
        cx, cy = self.gauge_center
        canvas.delete("all")
        # 表盘底色
        canvas.create_oval(cx-r, cy-r, cx+r, cy+r, fill="#f0f0f0", outline="#888", width=3)
        # 刻度
        major_ticks = 5  # 0, 100, 200, 300, 400, 500
        minor_ticks = 25
        for i in range(minor_ticks + 1):
            angle = self.gauge_start_angle - i * (self.gauge_start_angle - self.gauge_end_angle) / minor_ticks
            rad = math.radians(angle)
            if i % (minor_ticks // major_ticks) == 0:
                # 主刻度
                x1 = cx + (r-18) * math.cos(rad)
                y1 = cy - (r-18) * math.sin(rad)
                x2 = cx + r * math.cos(rad)
                y2 = cy - r * math.sin(rad)
                canvas.create_line(x1, y1, x2, y2, width=3, fill='#333')
                value = int(self.gauge_max * i / minor_ticks)
                tx = cx + (r-38) * math.cos(rad)
                ty = cy - (r-38) * math.sin(rad)
                canvas.create_text(tx, ty, text=str(value), font=("Consolas", 12, "bold"))
            else:
                # 次刻度
                x1 = cx + (r-10) * math.cos(rad)
                y1 = cy - (r-10) * math.sin(rad)
                x2 = cx + r * math.cos(rad)
                y2 = cy - r * math.sin(rad)
                canvas.create_line(x1, y1, x2, y2, width=1, fill='#888')
        # 单位
        canvas.create_text(cx, cy + r//2, text="MB/s", font=("Consolas", 14, "bold"), fill="#333")
        # 指针
        pointer = canvas.create_line(cx, cy, cx, cy-r+30, width=4, fill='red', arrow='last')
        # 圆心
        canvas.create_oval(cx-8, cy-8, cx+8, cy+8, fill='black', outline='gray')
        if is_write:
            self.write_gauge_pointer = pointer
        else:
            self.read_gauge_pointer = pointer

    def _update_gauge(self, canvas, pointer, speed):
        r = self.gauge_radius
        cx, cy = self.gauge_center
        speed = min(max(speed, 0), self.gauge_max)
        angle = self.gauge_start_angle - (self.gauge_start_angle - self.gauge_end_angle) * (speed / self.gauge_max)
        rad = math.radians(angle)
        x = cx + (r-5) * math.cos(rad)
        y = cy - (r-5) * math.sin(rad)
        if pointer is None:
            return
        canvas.coords(pointer, cx, cy, x, y)

    def start_test(self):
        self.write_speed_var.set("写入速率: 0.00 MB/s")
        self.read_speed_var.set("读取速率: 0.00 MB/s")
        base_path = find_device_base_path()
        if not base_path:
            messagebox.showerror("错误", "未找到XDMA设备，请检查驱动！")
            return
        h2c_path = base_path + XDMA_FILE_H2C_0
        c2h_path = base_path + XDMA_FILE_C2H_0
        self.h2c_handle = open_device(h2c_path, win32con.GENERIC_WRITE)
        self.c2h_handle = open_device(c2h_path, win32con.GENERIC_READ)
        if not self.h2c_handle or not self.c2h_handle:
            messagebox.showerror("错误", "打开设备句柄失败！")
            return
        self.btn_start.config(state=tk.DISABLED)
        self.btn_stop.config(state=tk.NORMAL)
        self.test_thread = SpeedTestThread(self.h2c_handle, self.c2h_handle, self.update_speed)
        self.test_thread.start()

    def stop_test(self):
        if self.test_thread:
            self.test_thread.stop()
            self.test_thread.join()
            self.test_thread = None
        close_device(self.h2c_handle)
        close_device(self.c2h_handle)
        self.h2c_handle = None
        self.c2h_handle = None
        self.btn_start.config(state=tk.NORMAL)
        self.btn_stop.config(state=tk.DISABLED)
        self.write_speed_var.set("写入速率: 0.00 MB/s")
        self.read_speed_var.set("读取速率: 0.00 MB/s")
        self._update_gauge(self.write_gauge_canvas, self.write_gauge_pointer, 0)
        self._update_gauge(self.read_gauge_canvas, self.read_gauge_pointer, 0)

    def update_speed(self, text):
        def _update():
            try:
                import re
                m1 = re.search(r"写入速率: ([0-9.]+)", text)
                m2 = re.search(r"读取速率: ([0-9.]+)", text)
                write_speed = float(m1.group(1)) if m1 else 0.0
                read_speed = float(m2.group(1)) if m2 else 0.0
                self.write_speed_var.set(f"写入速率: {write_speed:.2f} MB/s")
                self.read_speed_var.set(f"读取速率: {read_speed:.2f} MB/s")
                self._update_gauge(self.write_gauge_canvas, self.write_gauge_pointer, write_speed)
                self._update_gauge(self.read_gauge_canvas, self.read_gauge_pointer, read_speed)
            except Exception as e:
                print(f"GUI update error: {e}")
        self.root.after(0, _update)

if __name__ == "__main__":
    def on_closing():
        app.stop_test()
        root.destroy()

    root = tk.Tk()
    app = SpeedGUI(root)
    root.protocol("WM_DELETE_WINDOW", on_closing)
    root.mainloop() 