#coding=utf-8
# -*- coding: UTF-8 -*-
import socket
import numpy as np
import cv2

# -------------------- 配置参数 --------------------
UDP_IP = "0.0.0.0"   # 监听所有网络接口
UDP_PORT = 6102       # 端口号（需与发送端一致）
WIDTH, HEIGHT = 640, 480  # 视频分辨率
BUFFER_SIZE = 1280    # 每行数据大小（640像素 * 2字节）

# -------------------- 初始化UDP接收 --------------------
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

sock.bind((UDP_IP, UDP_PORT))
sock.setsockopt(socket.SOL_SOCKET, socket.SO_RCVBUF, 1024 * 1024)  # 增大接收缓冲区

# -------------------- 视频帧缓冲区 --------------------
current_line = 0
frame = np.zeros((HEIGHT, WIDTH, 3), dtype=np.uint8)  # 存储BGR格式的帧

print("等待数据输入...按Q键退出")

try:
    while True:

        # 接收UDP数据包
        data, _ = sock.recvfrom(BUFFER_SIZE)
        print("len(data)=",len(data))
        if len(data) != BUFFER_SIZE:
            continue  # 数据长度不符则跳过

        # 将数据解析为16位无符号整数（大端字节序）
        # 如果发送端是小端，请改用 dtype='<u2'
        pixels = np.frombuffer(data, dtype='>u2')  # '>u2' 表示大端16位

        # -------------------- RGB565转BGR888 --------------------
        # 提取RGB分量（位运算）
        r = (pixels & 0xF800) >> 11  # 取高5位红色
        g = (pixels & 0x07E0) >> 5   # 取中间6位绿色
        b = pixels & 0x001F          # 取低5位蓝色

        # 将5/6位扩展到8位（保持亮度比例）
        r = (r << 3) | (r >> 2)      # 5位 -> 8位（乘8.2258）
        g = (g << 2) | (g >> 4)      # 6位 -> 8位（乘4.0476）
        b = (b << 3) | (b >> 2)      # 5位 -> 8位（同红色）

        # 合并为OpenCV的BGR格式
        bgr = np.stack([b, g, r], axis=1).astype(np.uint8)

        # -------------------- 更新帧缓冲区 --------------------
        if current_line < HEIGHT:
            frame[current_line] = bgr
            current_line += 1

        # 当一帧完成时显示
        if current_line == HEIGHT:
            cv2.imshow('UDP Video Stream', frame)
            # 按下Q键退出
            if cv2.waitKey(1) & 0xFF == ord('q'):
                break
            # 重置帧
            current_line = 0
            frame.fill(0)

finally:
    sock.close()
    cv2.destroyAllWindows()
    print("程序已关闭")
