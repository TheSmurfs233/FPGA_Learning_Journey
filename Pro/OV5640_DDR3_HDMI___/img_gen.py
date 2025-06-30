# from PIL import Image

# # 创建一个大小为640x480的新图片，模式为RGB
# width, height = 640, 480
# image = Image.new('RGB', (width, height))

# # 获取图像的像素数据
# pixels = image.load()

# # 遍历图像的每一个像素
# for x in range(width):
#     for y in range(height):
#         if x < width // 2:
#             # 左半部分为全蓝
#             pixels[x, y] = (0, 128, 255)  # RGB中的蓝色
#         else:
#             # 右半部分为全红
#             pixels[x, y] = (50, 60, 0)  # RGB中的红色

# # 保存图像
# image.save('test_image.png')

# # 显示图像（可选）
# image.show()

##生成颜色渐变的图片