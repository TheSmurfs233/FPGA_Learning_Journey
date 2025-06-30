import ctypes
from ctypes import wintypes
import sys
import win32file
import win32con
import shlex

# --- Constants from C++ source ---
XDMA_FILE_H2C_0 = r"\h2c_0"
XDMA_FILE_C2H_0 = r"\c2h_0"

# GUID_DEVINTERFACE_XDMA {74C7E4A9-6D5D-4A70-BC0D-20691DFF9E9D}
class GUID(ctypes.Structure):
    _fields_ = [
        ("Data1", wintypes.ULONG),
        ("Data2", wintypes.USHORT),
        ("Data3", wintypes.USHORT),
        ("Data4", wintypes.BYTE * 8),
    ]
GUID_DEVINTERFACE_XDMA = GUID(0x74C7E4A9, 0x6D5D, 0x4A70,
                             (0xBC, 0x0D, 0x20, 0x69, 0x1D, 0xFF, 0x9E, 0x9D))

# --- Windows API Definitions ---
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

# Constants
DIGCF_PRESENT = 0x00000002
DIGCF_DEVICEINTERFACE = 0x00000010
INVALID_HANDLE_VALUE = -1
FILE_BEGIN = 0

def find_device_base_path():
    """Finds the base path of the XDMA device using its GUID."""
    dev_info = SetupDiGetClassDevs(ctypes.byref(GUID_DEVINTERFACE_XDMA), None, None, DIGCF_PRESENT | DIGCF_DEVICEINTERFACE)
    if dev_info == INVALID_HANDLE_VALUE:
        print(f"Error: SetupDiGetClassDevs failed with error code {kernel32.GetLastError()}", file=sys.stderr)
        return None

    dev_interface_data = SP_DEVICE_INTERFACE_DATA()
    dev_interface_data.cbSize = ctypes.sizeof(dev_interface_data)
    
    if not SetupDiEnumDeviceInterfaces(dev_info, None, ctypes.byref(GUID_DEVINTERFACE_XDMA), 0, ctypes.byref(dev_interface_data)):
        print(f"Error: SetupDiEnumDeviceInterfaces failed with error code {kernel32.GetLastError()}", file=sys.stderr)
        SetupDiDestroyDeviceInfoList(dev_info)
        return None

    required_len = wintypes.DWORD()
    SetupDiGetDeviceInterfaceDetail(dev_info, ctypes.byref(dev_interface_data), None, 0, ctypes.byref(required_len), None)
    
    detail_data_buffer = ctypes.create_string_buffer(required_len.value)
    
    if sys.maxsize > 2**32:  # 64-bit
        cb_size = 8
    else:  # 32-bit
        cb_size = 5
    ctypes.cast(detail_data_buffer, ctypes.POINTER(wintypes.DWORD))[0] = cb_size

    if not SetupDiGetDeviceInterfaceDetail(dev_info, ctypes.byref(dev_interface_data), detail_data_buffer, required_len.value, None, None):
        print(f"Error: SetupDiGetDeviceInterfaceDetail failed with error code {kernel32.GetLastError()}", file=sys.stderr)
        SetupDiDestroyDeviceInfoList(dev_info)
        return None
    
    device_path_offset = SP_DEVICE_INTERFACE_DETAIL_DATA.DevicePath.offset
    device_path = ctypes.wstring_at(ctypes.addressof(detail_data_buffer) + device_path_offset)

    SetupDiDestroyDeviceInfoList(dev_info)
    
    return device_path

def open_device(path, access_flags):
    """Opens a device handle."""
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
             print(f"Error opening device {path}: Win32 Error Code {kernel32.GetLastError()}", file=sys.stderr)
             return None
        return handle
    except Exception as e:
        print(f"Exception opening device {path}: {e}", file=sys.stderr)
        return None

def close_device(handle):
    """Closes a device handle."""
    if handle and handle != win32file.INVALID_HANDLE_VALUE:
        win32file.CloseHandle(handle)

def handle_read(c2h_handle, args):
    if len(args) != 2:
        print("Usage: read <address> <size>")
        return
    try:
        address = int(args[0], 0)
        size = int(args[1], 0)
    except ValueError:
        print("Invalid address or size.")
        return

    print(f"Reading {size} bytes from address 0x{address:X}...")
    
    try:
        win32file.SetFilePointer(c2h_handle, address, FILE_BEGIN)
        
        # Replicate logic from pcie_dev.c:c2h_transfer
        if size < 5:
            actual_read_size = 10
        else:
            actual_read_size = size
            
        err, data = win32file.ReadFile(c2h_handle, actual_read_size)
        if err != 0:
            print(f"ReadFile error: {err}", file=sys.stderr)
            return
            
        read_data = data[:size]
        print(f"  Data (hex): {read_data.hex().upper()}")
    except Exception as e:
        print(f"Exception during read: {e}", file=sys.stderr)

def handle_write(h2c_handle, args):
    if len(args) != 2:
        print("Usage: write <address> <hex_data>")
        return
    try:
        address = int(args[0], 0)
        data = bytes.fromhex(args[1])
    except ValueError:
        print("Invalid address or hex data string.")
        return

    print(f"Writing {data.hex().upper()} to address 0x{address:X}...")

    try:
        win32file.SetFilePointer(h2c_handle, address, FILE_BEGIN)
        err, written = win32file.WriteFile(h2c_handle, data)
        if err != 0:
            print(f"WriteFile error: {err}", file=sys.stderr)
            return
        if written != len(data):
            print(f"Warning: Wrote {written} bytes, but expected {len(data)}", file=sys.stderr)
        print("Write successful.")
    except Exception as e:
        print(f"Exception during write: {e}", file=sys.stderr)

def main():
    print("--- PCIe Interactive Memory Read/Write Utility ---")
    
    base_path = find_device_base_path()
    if not base_path:
        print("Could not find XDMA device. Please ensure drivers are installed correctly.", file=sys.stderr)
        sys.exit(1)
    print(f"Found device base path: {base_path}")

    h2c_handle, c2h_handle = None, None
    try:
        h2c_path = base_path + XDMA_FILE_H2C_0
        c2h_path = base_path + XDMA_FILE_C2H_0
        
        print(f"Opening write channel: {h2c_path}")
        h2c_handle = open_device(h2c_path, win32con.GENERIC_WRITE)
        
        print(f"Opening read channel: {c2h_path}")
        c2h_handle = open_device(c2h_path, win32con.GENERIC_READ)

        if not h2c_handle or not c2h_handle:
            print("Failed to open device handles.", file=sys.stderr)
            sys.exit(1)
            
        print("\nDevice handles opened. Ready for commands.")
        print("Usage: write <addr> <hexdata> | read <addr> <size> | exit")
        
        while True:
            try:
                cmd_line = input("pcie> ")
                if not cmd_line:
                    continue
                
                parts = shlex.split(cmd_line)
                command = parts[0].lower()
                args = parts[1:]

                if command == 'exit':
                    break
                elif command == 'write':
                    handle_write(h2c_handle, args)
                elif command == 'read':
                    handle_read(c2h_handle, args)
                else:
                    print(f"Unknown command: {command}")

            except (EOFError, KeyboardInterrupt):
                # Handle Ctrl+C or Ctrl+Z to exit gracefully
                break
            except Exception as e:
                print(f"An error occurred: {e}", file=sys.stderr)

    finally:
        print("\nClosing device handles...")
        close_device(h2c_handle)
        close_device(c2h_handle)
        print("Exiting.")

if __name__ == "__main__":
    main() 