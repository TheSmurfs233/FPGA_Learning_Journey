from PIL import Image

def image_to_coe(image_path, coe_path):
    # 打开图片
    image = Image.open(image_path)
    # 检查图片尺寸是否为100x100
    if image.size != (100, 100):
        raise ValueError("图片尺寸必须是100x100像素。")
    # 初始化一个空列表来存储转换后的RGB24值
    rgb24_values = []
    # 遍历图片的每个像素
    for y in range(100):
        for x in range(100):
            # 获取当前像素的RGB值
            r, g, b = image.getpixel((x, y))
            # print("x={}, y={}, r,g,b={}, {}, {}".format(x, y, r, g, b))
            # 将RGB值合并成24位整数
            rgb24 = (r << 16) | (g << 8) | b
            # print("rgb24={}".format(rgb24))
            # 将RGB24值转换为6位十六进制字符串
            hex_str = "{:06X}".format(rgb24)
            print("hex_str={}".format(hex_str))
            rgb24_values.append(hex_str)
    # 写入COE文件
    with open(coe_path, 'w') as f:
        # 写入COE文件的头部信息，指定基数为16
        f.write("memory_initialization_radix=16;\n")
        f.write("memory_initialization_vector=\n")
        # 写入RGB24值，每行一个值，最后一个值后面加分号
        for i, value in enumerate(rgb24_values):
            if i < len(rgb24_values) - 1:
                f.write(value + ",\n")
            else:
                f.write(value + ";\n")

# 示例调用
image_path = "img_100_100.jpg"  # 替换为你的图片路径
coe_path = "img_100_100.coe"  # 输出的COE文件路径
image_to_coe(image_path, coe_path)
print("转换完成。")
print("COE文件已保存为:", coe_path)