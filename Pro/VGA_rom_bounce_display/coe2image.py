from PIL import Image

def coe_to_rgb565_image(coe_path, image_path):
    # 用来存储从COE文件读取的RGB565数据
    rgb565_values = []
    with open(coe_path, 'r') as f:
        lines = f.readlines()
        in_vector = False
        for line in lines:
            line = line.strip()
            # 检查是否开始读取数据向量
            if line.startswith("memory_initialization_vector="):
                in_vector = True
                continue
            if in_vector and line.endswith(";"):
                # 去除行尾的分号和逗号
                values = line[:-1].split(',')
                rgb565_values.extend([int(value, 16) for value in values])
                break
            if in_vector:
                # 去除逗号
                values = line.split(',')
                rgb565_values.extend([int(value, 16) for value in values if value])

    # 创建一个100x100的RGB565格式图像
    img = Image.new('RGB', (100, 100))
    index = 0
    for y in range(100):
        for x in range(100):
            # 获取当前的RGB565值
            rgb565 = rgb565_values[index]
            # 分离出红、绿、蓝通道的值
            r = ((rgb565 >> 11) & 0x1F) << 3
            g = ((rgb565 >> 5) & 0x3F) << 2
            b = (rgb565 & 0x1F) << 3
            # 设置像素值
            img.putpixel((x, y), (r, g, b))
            index = index + 1

    # 保存为RGB565格式图像
    img.save(image_path)

# 示例调用
coe_path = "image_bmp.coe"  # 替换为你的COE文件路径
image_path = "output_image_bmp.bmp"  # 输出的图片路径，建议使用bmp格式
coe_to_rgb565_image(coe_path, image_path)
print("转换完成。")
print("图片已保存为:", image_path)