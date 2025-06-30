from PIL import Image

def hex_stream_to_image(input_path, output_path):
    try:
        # 读取文件并去除空格/换行符
        with open(input_path, 'r') as f:
            hex_str = f.read().strip().replace(' ', '').replace('\n', '')
        
        # 验证总长度：640*480像素 * 8字符/像素 = 2,457,600字符
        expected_len = 640 * 480 * 8
        if len(hex_str) != expected_len:
            raise ValueError(f"输入文件长度应为 {expected_len} 字符，实际为 {len(hex_str)}")
        
        # 分割为每8字符的像素数据（格式：00RRGGBB）
        pixels = [hex_str[i:i+8] for i in range(0, len(hex_str), 8)]
        
        # 解析RGB值并填充到列表
        rgb_data = []
        for pixel in pixels:
            # 提取RR(2:4)、GG(4:6)、BB(6:8)并转为十进制
            r = int(pixel[2:4], 16)
            g = int(pixel[4:6], 16)
            b = int(pixel[6:8], 16)
            rgb_data.append((r, g, b))
        
        # 创建640x480图片并填充像素
        img = Image.new('RGB', (640, 480))
        img.putdata(rgb_data)
        img.save(output_path)
        print(f"图片已保存至 {output_path}")
    
    except Exception as e:
        print(f"错误: {str(e)}")

# 使用示例
hex_stream_to_image('output_hex.txt', 'output_image.jpg')
