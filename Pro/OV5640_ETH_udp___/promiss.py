import socket
from ctypes import windll, WinError

# 常量定义
SIO_RCVALL = 0x98000001  # Windows SIO_RCVALL 控制码
RCVALL_ON = 1             # 启用混杂模式

try:
    # 创建原始套接字
    sock = socket.socket(socket.AF_INET, socket.SOCK_RAW, socket.IPPROTO_IP)
    sock.bind(("0.0.0.0", 0))  # 绑定到所有接口

    # 启用混杂模式
    result = windll.ws2_32.WSAIoctl(
        sock.fileno(),
        SIO_RCVALL,
        RCVALL_ON,
        None,
        None,
        None,
        None,
        None
    )
    
    if result != 0:
        raise WinError()  # 检查Windows API错误

    # 接收数据
    while True:
        data, addr = sock.recvfrom(65535)
        print(f"Received from {addr}: {len(data)} bytes")

except PermissionError:
    print("错误：请以管理员权限运行此脚本！")
except Exception as e:
    print(f"操作失败：{e}")
finally:
    sock.close()
