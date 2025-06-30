import time
import ctypes
from ctypes import wintypes
import sys
import win32file
import win32con

# --- Constants ---
ONE_MB = 1024 * 1024
BUF_SIZE = 8 * ONE_MB  # Match C code's buffer size
TRANSFER_SIZE = 8 * ONE_MB

# --- From xdma_public.h and pcie_dev.c logic ---
XDMA_FILE_H2C_0 = r"\h2c_0"
XDMA_FILE_C2H_0 = r"\c2h_0"

# GUID_DEVINTERFACE_XDMA {74C7E4A9-6D5D-4A70-BC0D-20691DFF9E9D}
# \Device\NTPNP_PCI0026

class GUID(ctypes.Structure):
    _fields_ = [
        ("Data1", wintypes.ULONG),
        ("Data2", wintypes.USHORT),
        ("Data3", wintypes.USHORT),
        ("Data4", wintypes.BYTE * 8),
    ]
GUID_DEVINTERFACE_XDMA = GUID(0x74C7E4A9, 0x6D5D, 0x4A70, 
                             (0xBC, 0x0D, 0x20, 0x69, 0x1D, 0xFF, 0x9E, 0x9D))

# --- Windows API Definitions using ctypes ---
setupapi = ctypes.WinDLL("setupapi")
kernel32 = ctypes.WinDLL("kernel32")

# Define necessary structures
class SP_DEVICE_INTERFACE_DATA(ctypes.Structure):
    _fields_ = [
        ("cbSize", wintypes.DWORD),
        ("InterfaceClassGuid", GUID),
        ("Flags", wintypes.DWORD),
        ("Reserved", ctypes.POINTER(wintypes.ULONG)),
    ]

# This structure is tricky because of the variable-length DevicePath.
# We define it with a placeholder array of 1 WCHAR to allow ctypes
# to calculate the correct size of the fixed part including padding.
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

# Define function prototypes
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

# Constants for SetupDiGetClassDevs
DIGCF_PRESENT = 0x00000002
DIGCF_DEVICEINTERFACE = 0x00000010
INVALID_HANDLE_VALUE = -1

def find_device_base_path():
    """Finds the base path of the XDMA device using its GUID."""
    dev_info = SetupDiGetClassDevs(ctypes.byref(GUID_DEVINTERFACE_XDMA), None, None, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE)
    if dev_info == INVALID_HANDLE_VALUE:
        print(f"Error: SetupDiGetClassDevs failed with error code {kernel32.GetLastError()}")
        return None

    dev_interface_data = SP_DEVICE_INTERFACE_DATA()
    dev_interface_data.cbSize = ctypes.sizeof(dev_interface_data)
    
    if not SetupDiEnumDeviceInterfaces(dev_info, None, ctypes.byref(GUID_DEVINTERFACE_XDMA), 0, ctypes.byref(dev_interface_data)):
        print(f"Error: SetupDiEnumDeviceInterfaces failed with error code {kernel32.GetLastError()}")
        SetupDiDestroyDeviceInfoList(dev_info)
        return None

    # Get required buffer size for the detail data
    required_len = wintypes.DWORD()
    SetupDiGetDeviceInterfaceDetail(dev_info, ctypes.byref(dev_interface_data), None, 0, ctypes.byref(required_len), None)
    
    # Allocate buffer. The structure is variable-length, with SP_DEVICE_INTERFACE_DETAIL_DATA_W followed by the path string.
    detail_data_buffer = ctypes.create_string_buffer(required_len.value)
    
    # Set the cbSize field. ctypes.sizeof() correctly calculates the size
    # of the structure's fixed part, including platform-specific padding.
    # For SP_DEVICE_INTERFACE_DETAIL_DATA, this is typically 8 bytes on 64-bit Windows.
    ctypes.cast(detail_data_buffer, ctypes.POINTER(wintypes.DWORD))[0] = ctypes.sizeof(SP_DEVICE_INTERFACE_DETAIL_DATA)


    if not SetupDiGetDeviceInterfaceDetail(dev_info, ctypes.byref(dev_interface_data), detail_data_buffer, required_len.value, None, None):
        print(f"Error: SetupDiGetDeviceInterfaceDetail failed with error code {kernel32.GetLastError()}")
        SetupDiDestroyDeviceInfoList(dev_info)
        return None
    
    # The device path is a wide-character string that starts at the offset of the DevicePath field.
    device_path_offset = SP_DEVICE_INTERFACE_DETAIL_DATA.DevicePath.offset
    device_path = ctypes.wstring_at(ctypes.addressof(detail_data_buffer) + device_path_offset)

    SetupDiDestroyDeviceInfoList(dev_info)
    
    # The path returned is the full device interface path.
    # The previous logic to partition it was incorrect.
    base_path = device_path
    print(f"Found device base path: {base_path}")
    return base_path

def open_device(path):
    try:
        handle = win32file.CreateFile(
            path,
            win32con.GENERIC_READ | win32con.GENERIC_WRITE,
            win32con.FILE_SHARE_READ | win32con.FILE_SHARE_WRITE,
            None,
            win32con.OPEN_EXISTING,
            0,
            None
        )
        if handle == win32file.INVALID_HANDLE_VALUE:
             print(f"Error opening device {path}: Win32 Error Code {kernel32.GetLastError()}")
             return None
        return handle
    except Exception as e:
        print(f"Exception opening device {path}: {e}")
        sys.exit(1)

def close_device(handle):
    if handle:
        win32file.CloseHandle(handle)

def transfer_test(mode, base_path):
    if mode == "h2c":
        device_path = base_path + XDMA_FILE_H2C_0
        log_prefix = "[H2C]"
        action_word = "写入"
    else:
        device_path = base_path + XDMA_FILE_C2H_0
        log_prefix = "[C2H]"
        action_word = "读取"

    print(f"Opening device: {device_path}")
    handle = open_device(device_path)
    if not handle:
        return 0

    buf = b'\x55' * BUF_SIZE
    total_bytes = 0
    start = time.perf_counter()

    while total_bytes < TRANSFER_SIZE:
        if mode == "h2c":
            to_transfer = min(BUF_SIZE, TRANSFER_SIZE - total_bytes)
            try:
                _, written = win32file.WriteFile(handle, buf[:to_transfer])
                total_bytes += written
            except Exception as e:
                print(f"{log_prefix} Error during WriteFile: {e}")
                break
        else: # c2h
             to_transfer = min(BUF_SIZE, TRANSFER_SIZE - total_bytes)
             try:
                _, data = win32file.ReadFile(handle, to_transfer)
                total_bytes += len(data)
                if len(data) == 0: # End of file or error
                    break
             except Exception as e:
                print(f"{log_prefix} Error during ReadFile: {e}")
                break
    
    end = time.perf_counter()
    close_device(handle)
    
    elapsed = end - start
    if elapsed == 0:
        rate = float('inf')
    else:
        rate = total_bytes / elapsed / ONE_MB

    print(f"{log_prefix} {action_word} {total_bytes} 字节, 用时 {elapsed:.4f} 秒, 速率 {rate:.2f} MB/s")
    return rate

def main():
    print("--- PCIe 速率测试 (Python 自动发现设备版) ---")
    
    base_path = find_device_base_path()
    if not base_path:
        print("未能找到 XDMA 设备，请检查驱动是否正确安装。")
        sys.exit(1)

    while True:
        print("\n1. 主机到卡写速率 (H2C)")
        print("2. 卡到主机读速率 (C2H)")
        print("3. 退出")
        choice = input("请选择测试类型 (1/2/3): ")

        if choice == '1':
            transfer_test("h2c", base_path)
        elif choice == '2':
            transfer_test("c2h", base_path)
        elif choice == '3':
            break
        else:
            print("无效选择，请输入 1, 2, 或 3。")

if __name__ == "__main__":
    main()
