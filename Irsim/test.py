def fixed_point_to_decimal(binary_string):
    # 获取二进制数的整数部分和小数部分
    integer_part, decimal_part = binary_string[:13], binary_string[-3:]
    # 将整数部分转换成十进制数
    integer = int(integer_part, 2)
    # 将小数部分转换成十进制数
    print(decimal_part)
    decimal = int(decimal_part[0])*0.5 + int(decimal_part[1])*0.25
    # 返回整数部分和小数部分相加的结果
    return integer + decimal


s = '0000000000000100'
result = fixed_point_to_decimal(s)
print(result)  # 输出 1234567890.123