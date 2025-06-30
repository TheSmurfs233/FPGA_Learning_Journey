import ctypes
from ctypes import wintypes
import sys
import win32file
import win32con
import argparse

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
    
    # Set the cbSize field. ctypes.sizeof() is unreliable here.
    # The size of the fixed part of the structure depends on the architecture.
    # The size is 5 for 32-bit python and 8 for 64-bit python.
    # See: https://learn.microsoft.com/en-us/windows/win32/api/setupapi/ns-setupapi-sp_device_interface_detail_data_a
    if sys.maxsize > 2**32:  # 64-bit
        cb_size = 8
    else:  # 32-bit
        cb_size = 5  # sizeof(DWORD) + sizeof(CHAR)
    ctypes.cast(detail_data_buffer, ctypes.POINTER(wintypes.DWORD))[0] = cb_size

    if not SetupDiGetDeviceInterfaceDetail(dev_info, ctypes.byref(dev_interface_data), detail_data_buffer, required_len.value, None, None):
        print(f"Error: SetupDiGetDeviceInterfaceDetail failed with error code {kernel32.GetLastError()}", file=sys.stderr)
        SetupDiDestroyDeviceInfoList(dev_info)
        return None
    
    device_path_offset = SP_DEVICE_INTERFACE_DETAIL_DATA.DevicePath.offset
    device_path = ctypes.wstring_at(ctypes.addressof(detail_data_buffer) + device_path_offset)

    SetupDiDestroyDeviceInfoList(dev_info)
    
    base_path = device_path
    print(f"Found device base path: {base_path}")
    return base_path

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

def read_mem_internal(handle, address, size):
    """Internal read function that uses an existing handle."""
    try:
        win32file.SetFilePointer(handle, address, FILE_BEGIN)

        # Replicate logic from pcie_dev.c:c2h_transfer
        # For small reads, the C code reads a larger fixed block of 10 bytes.
        if size < 5:
            actual_read_size = 10
        else:
            actual_read_size = size

        err, data = win32file.ReadFile(handle, actual_read_size)

        if err != 0:
            print(f"ReadFile error: {err}", file=sys.stderr)
            return None

        # If we read more data than originally requested, truncate it to the desired size.
        return data[:size]

    except Exception as e:
        print(f"Exception during read: {e}", file=sys.stderr)
        return None

def write_mem_internal(handle, address, data):
    """Internal write function that uses an existing handle."""
    try:
        win32file.SetFilePointer(handle, address, FILE_BEGIN)
        err, written = win32file.WriteFile(handle, data)
        if err != 0:
            print(f"WriteFile error: {err}", file=sys.stderr)
            return False
        if written != len(data):
            print(f"Warning: Wrote {written} bytes, but expected {len(data)}", file=sys.stderr)
        return True
    except Exception as e:
        print(f"Exception during write: {e}", file=sys.stderr)
        return False

def read_mem(base_path, address, size):
    """Reads data from a specific memory address on the device."""
    device_path = base_path + XDMA_FILE_C2H_0
    handle = open_device(device_path, win32con.GENERIC_READ)
    if not handle:
        return None
    try:
        return read_mem_internal(handle, address, size)
    finally:
        close_device(handle)

def write_mem(base_path, address, data):
    """Writes data to a specific memory address on the device."""
    device_path = base_path + XDMA_FILE_H2C_0
    handle = open_device(device_path, win32con.GENERIC_WRITE)
    if not handle:
        return False
    try:
        return write_mem_internal(handle, address, data)
    finally:
        close_device(handle)

def main():
    parser = argparse.ArgumentParser(description="Read/Write utility for XDMA PCIe device memory.")
    parser.add_argument('operation', choices=['read', 'write', 'test'], help="The operation to perform. 'test' performs a write then an immediate read.")
    parser.add_argument('address', type=lambda x: int(x, 0), help="The memory address (offset) in hex (e.g., 0x1000) or decimal.")
    
    # Arguments for read
    parser.add_argument('-s', '--size', type=lambda x: int(x, 0), help="Number of bytes to read (for 'read' operation).")
    
    # Arguments for write and test
    parser.add_argument('-d', '--data', help="Data to write in hex format (e.g., 'DEADBEEF') (for 'write' and 'test' operations).")

    args = parser.parse_args()

    # --- Validation ---
    if args.operation == 'read' and args.size is None:
        parser.error("The 'read' operation requires the --size argument.")
    if args.operation in ['write', 'test'] and args.data is None:
        parser.error(f"The '{args.operation}' operation requires the --data argument.")

    base_path = find_device_base_path()
    if not base_path:
        print("Could not find XDMA device. Please ensure drivers are installed correctly.", file=sys.stderr)
        sys.exit(1)

    if args.operation == 'read':
        print(f"Reading {args.size} bytes from address 0x{args.address:X}...")
        read_data = read_mem(base_path, args.address, args.size)
        if read_data:
            print("Read successful.")
            # Print as hex string
            print(f"Data (hex): {read_data.hex().upper()}")
        else:
            print("Read failed.")
            sys.exit(1)

    elif args.operation == 'write':
        try:
            write_data = bytes.fromhex(args.data)
        except ValueError:
            print("Error: Invalid hex data string. Please provide a string of hex characters (e.g., 'DEADBEEF').", file=sys.stderr)
            sys.exit(1)

        print(f"Writing {len(write_data)} bytes to address 0x{args.address:X}...")
        if write_mem(base_path, args.address, write_data):
            print("Write successful.")
        else:
            print("Write failed.")
            sys.exit(1)

    elif args.operation == 'test':
        h2c_handle, c2h_handle = None, None
        try:
            write_data = bytes.fromhex(args.data)
        except ValueError:
            print("Error: Invalid hex data string. Please provide a string of hex characters (e.g., 'DEADBEEF').", file=sys.stderr)
            sys.exit(1)

        try:
            h2c_path = base_path + XDMA_FILE_H2C_0
            c2h_path = base_path + XDMA_FILE_C2H_0
            h2c_handle = open_device(h2c_path, win32con.GENERIC_WRITE)
            c2h_handle = open_device(c2h_path, win32con.GENERIC_READ)

            if not h2c_handle or not c2h_handle:
                print("Failed to open device handles for test.", file=sys.stderr)
                sys.exit(1)

            # --- Write ---
            print(f"Writing {write_data.hex().upper()} to 0x{args.address:X}...")
            if not write_mem_internal(h2c_handle, args.address, write_data):
                print("Write part of test failed.")
                sys.exit(1)
            print("Write successful.")

            # --- Read ---
            read_size = len(write_data)
            print(f"Reading back {read_size} bytes from 0x{args.address:X}...")
            read_data = read_mem_internal(c2h_handle, args.address, read_size)
            if read_data is None:
                print("Read part of test failed.")
                sys.exit(1)
            print("Read successful.")
            
            # --- Compare ---
            print("-" * 20)
            print(f"  Wrote: {write_data.hex().upper()}")
            print(f"  Read:  {read_data.hex().upper()}")
            if write_data == read_data:
                print("SUCCESS: Data matches!")
            else:
                print("ERROR: Data mismatch!")

        finally:
            close_device(h2c_handle)
            close_device(c2h_handle)

if __name__ == "__main__":
    main() 