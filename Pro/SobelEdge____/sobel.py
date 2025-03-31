from PIL import Image
import numpy as np
import os

def image_preprocessing(input_path, output_txt_path):
    # 1. 读取图像并调整大小为100x100
    img = Image.open(input_path).convert('RGB')
    img = img.resize((100, 100))
    
    # 2. 转换为灰度图像
    gray_img = img.convert('L')
    
    # 3. 提取灰度值的最高3位 (0-7范围)
    gray_array = np.array(gray_img, dtype=np.uint8)
    high_3bit_array = (gray_array >> 5).astype(np.uint8)  # 右移5位取高3位
    
    # 4. 保存为十六进制文本文件，每行100个数值，两位十六进制空格分隔
    with open(output_txt_path, 'w') as f:
        for row in high_3bit_array:
            # 将每个像素转为两位十六进制（如7 -> "07"）
            hex_line = ' '.join([f"{pixel:02x}" for pixel in row])
            f.write(hex_line)

if __name__ == "__main__":
    # 自动获取脚本所在目录路径
    script_dir = os.path.dirname(os.path.abspath(__file__))
    input_image = os.path.join(script_dir, "img_100_100.png")  # 输入图像路径
    output_txt = os.path.join(script_dir, "gray_high3bit.txt")      # 输出文本路径
    
    image_preprocessing(input_image, output_txt)


