import sys
import random


def generate_data():
    # 生成 50x50 矩阵的 2500 个字节的数据
    data = [random.randint(0, 255) for _ in range(2500)]

    # 将数据转换为十六进制字符串，并用空格连接
    data_str = ' '.join([f'{byte:02x}' for byte in data])

    # 将数据写入文件
    with open('fifo_data.txt', 'w') as file:
        file.write(data_str)

    print("50x50 矩阵数据已成功写入 fifo_data.txt 文件。")


def verify_result():
    try:
        # 从 fifo_data.txt 文件中读取原始数据
        with open('fifo_data.txt', 'r') as data_file:
            data_str = data_file.read()
        data = [int(byte, 16) for byte in data_str.split()]

        # 从 received_data.txt 文件中读取接收到的数据
        with open('received_data.txt', 'r') as result_file:
            received_data_str = result_file.read()
        # 将接收到的十六进制字符串转换为字节列表
        received_data = [int(byte, 16) for byte in received_data_str.split()]

        # 检查接收到的数据长度是否为 48 * 50
        if len(received_data) != 48 * 50:
            print("接收到的数据长度不正确，应为 48 * 50 个字节。")
        else:
            # 将原始数据转换为 48 * 50 的矩阵
            matrix = [data[i * 50:(i + 1) * 50] for i in range(50)]

            # 计算每相邻三行数据对应列的和，得到 48 * 50 的矩阵
            correct_result = []
            for i in range(48):
                row_sum = []
                for j in range(50):
                    # 计算每相邻三行对应列元素的和，并取 8 位结果
                    sum_value = (matrix[i][j] + matrix[i + 1][j] + matrix[i + 2][j]) & 0xFF
                    row_sum.append(sum_value)
                correct_result.extend(row_sum)

            # 检查接收到的结果是否与计算得到的正确结果一致
            if received_data == correct_result:
                print("结果验证通过，接收到的数据正确。")
            else:
                print("结果验证失败，接收到的数据与计算结果不一致。")

    except FileNotFoundError as e:
        if 'fifo_data.txt' in str(e):
            print("未找到原始数据文件 'fifo_data.txt'，请确保文件存在。")
        elif 'received_data.txt' in str(e):
            print("未找到接收到的数据文件 'received_data.txt'，请确保文件存在。")


if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("用法: python script.py [generate|verify]")
        sys.exit(1)

    command = sys.argv[1]
    if command == "generate":
        generate_data()
    elif command == "verify":
        verify_result()
    else:
        print("无效的命令。请使用 'generate' 或 'verify'。")
        sys.exit(1)