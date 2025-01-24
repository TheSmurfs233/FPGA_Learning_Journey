from PIL import Image

def rgb24_to_rgb565(r, g, b):
    # 将24位RGB转换为RGB565格式  
    r5 = (r >> 3) 
    # 提取绿色的高6位
    g6 = (g >> 2) 
    # 提取蓝色的高5位
    b5 = (b >> 3) 
    # 合并成16位的RGB565值
    rgb565 = (r5 << 11) | (g6 << 5) | b5
    return rgb565

def image_to_coe(image_path, coe_path):
    # 打开图片
    image = Image.open(image_path)
    # 检查图片尺寸是否为100x100
    if image.size != (100, 100):
        raise ValueError("图片尺寸必须是100x100像素。")
    # 初始化一个空列表来存储转换后的RGB565值
    rgb565_values = []
    # 遍历图片的每个像素
    for y in range(100):
        for x in range(100):
            # 获取当前像素的RGB值
            r, g, b = image.getpixel((x, y))
            print("x={}, y={}, r,g,b={}, {}, {}".format(x, y, r, g, b))

            # 将24位RGB转换为RGB565
            rgb565 = rgb24_to_rgb565(r, g, b)
            print("rgb565={}".format(rgb565))
            # 将RGB565值转换为4位十六进制字符串
            hex_str = "{:04X}".format(rgb565)
            print("hex_str={}".format(hex_str))
            rgb565_values.append(hex_str)
    # 写入COE文件
    with open(coe_path, 'w') as f:
        # 写入COE文件的头部信息，指定基数为16
        f.write("memory_initialization_radix=16;\n")
        f.write("memory_initialization_vector=\n")
        # 写入RGB565值，每行一个值，最后一个值后面加分号
        for i, value in enumerate(rgb565_values):
            if i < len(rgb565_values) - 1:
                f.write(value + ",\n")
            else:
                f.write(value + ";\n")

# 示例调用
image_path = "image.bmp"  # 替换为你的图片路径
coe_path = "image.coe"  # 输出的COE文件路径
image_to_coe(image_path, coe_path)
print("转换完成。")
print("COE文件已保存为:", coe_path)
