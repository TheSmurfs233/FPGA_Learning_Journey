import socket
import numpy as np
import cv2
import time
import threading
from queue import Queue

# -------------------- 配置参数 --------------------
UDP_IP = "0.0.0.0"
UDP_PORT = 6102
WIDTH, HEIGHT = 640, 480
BUFFER_SIZE = 1282  # 640*2 + 2
MAX_QUEUE_SIZE = 100  # 接收队列最大长度

# -------------------- 共享资源与同步机制 --------------------
frame_lock = threading.Lock()
current_frame = np.zeros((HEIGHT, WIDTH, 3), dtype=np.uint8)
exit_flag = False
data_queue = Queue(maxsize=MAX_QUEUE_SIZE)

# -------------------- UDP接收线程 --------------------
class UDPReceiver(threading.Thread):
    def __init__(self):
        super().__init__()
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.sock.bind((UDP_IP, UDP_PORT))
        self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_RCVBUF, 1024 * 1024)
        self.last_line_time = time.time()

    def run(self):
        global exit_flag, current_frame
        print("UDP接收线程启动")
        
        while not exit_flag:
            try:
                # 非阻塞接收
                data, _ = self.sock.recvfrom(BUFFER_SIZE)
                
                if len(data) != BUFFER_SIZE:
                    continue

                # 解析行号（大端字节序）
                line_number = int.from_bytes(data[-2:], byteorder='big')

                # 帧同步处理
                if line_number == 0:
                    with frame_lock:
                        current_frame.fill(0)
                    continue

                # 有效性检查
                if not (1 <= line_number <= HEIGHT):
                    continue

                # 解析像素数据
                line_index = line_number - 1
                pixel_data = data[:1280]
                pixels = np.frombuffer(pixel_data, dtype='>u2')

                # RGB565转BGR888（优化后的向量化操作）
                r = (pixels & 0xF800) >> 11
                g = (pixels & 0x07E0) >> 5
                b = pixels & 0x001F
                
                r = (r << 3) | (r >> 2)
                g = (g << 2) | (g >> 4)
                b = (b << 3) | (b >> 2)
                
                bgr = np.stack([b, g, r], axis=1).astype(np.uint8)

                # 更新帧缓冲区
                with frame_lock:
                    current_frame[line_index] = bgr
                    self.last_line_time = time.time()

            except Exception as e:
                print(f"接收异常: {str(e)}")
        
        self.sock.close()
        print("UDP接收线程已退出")

# -------------------- 显示线程 --------------------
class DisplayThread(threading.Thread):
    def __init__(self):
        super().__init__()
        self.last_display_time = time.time()
        self.display_interval = 1/30  # 30 FPS

    def run(self):
        global exit_flag
        print("显示线程启动")
        
        while not exit_flag:
            try:
                # 控制显示频率
                if time.time() - self.last_display_time < self.display_interval:
                    time.sleep(0.001)
                    continue
                
                # 拷贝当前帧数据
                with frame_lock:
                    display_frame = current_frame.copy()

                # 显示图像
                cv2.imshow('UDP Video Stream', display_frame)
                self.last_display_time = time.time()

                # 处理退出按键
                if cv2.waitKey(1) & 0xFF == ord('q'):
                    exit_flag = True
                    break

            except Exception as e:
                print(f"显示异常: {str(e)}")
        
        cv2.destroyAllWindows()
        print("显示线程已退出")

# -------------------- 主程序 --------------------
if __name__ == "__main__":
    # 启动线程
    receiver = UDPReceiver()
    display = DisplayThread()
    
    receiver.start()
    display.start()

    # 等待线程结束
    try:
        while not exit_flag:
            time.sleep(0.1)
    except KeyboardInterrupt:
        exit_flag = True
    
    receiver.join()
    display.join()
    print("程序已正常退出")
