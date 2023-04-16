def get_value_from_string(string, key):
    """
    从给定字符串中查找包含给定键的值，并返回该值
    :param string: 给定的字符串
    :param key: 要查找的键
    :return: 包含给定键的值，如果没有找到则返回 None
    """
    split_string = string.split(" ")
    for s in split_string:
        if key in s:
            value = s.split("=")[1][0]
            return value
    return None

string = "change_1=00000000 inserted_025=00000000 inserted_05=00000000 inserted_1=00000000 inserted_5=00000000 out_spit_d=0 out_spit_c=0 out_spit_b=0 out_spit_a=0 out_change_025=0 out_change_05=0 out_csel_d=0 out_csel_c=0 out_csel_b=0 out_csel_a=1 out_stock_d=1 out_stock_c=1 out_stock_b=1 out_stock_a=1 in_finish=0 in_next=0 in_sel_d=0 in_sel_c=0 in_sel_b=0 in_sel_a=0 in_restart=0 in_clkb=1 in_clka=0"
key = "out_csel_a"
value = get_value_from_string(string, key)
print(value)

