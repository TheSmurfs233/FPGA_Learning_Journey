from PIL import Image

def image_to_hex_stream(input_path, output_path):
    try:
        # 打开图片并转换为RGB模式
        img = Image.open(input_path).convert('RGB')
        
        # 生成连续十六进制字节流（格式：00RRGGBB）
        hex_stream = []
        for y in range(img.height):
            for x in range(img.width):
                r, g, b = img.getpixel((x, y))
                # 格式化为00 RR GG BB（大写、有空格）
                hex_str = "00 {:02X} {:02X} {:02X} ".format(r, g, b)
                hex_stream.append(hex_str)
        
        # 写入文件
        with open(output_path, 'w') as f:
            f.write(''.join(hex_stream))
        
        print(f"转换成功！已保存到 {output_path}")
    
    except Exception as e:
        print(f"错误发生: {str(e)}")

# 使用示例
image_to_hex_stream('img_640_480.jpg', 'output_hex.txt')
