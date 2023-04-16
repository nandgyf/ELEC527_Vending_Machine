import subprocess
import fcntl
import os
import time
import sys
from multiprocessing import Pipe
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QLabel
from PyQt5.QtCore import QTimer

# 沟通函数
def irsim_com(cmd):
    # 打印初始文本
    output = []
    ret = ''
    while(output == []):
        output = r_process.stdout.readlines()
    for line in output:
        ret  = ret + line.decode()
        print(ret, end = '')

    # 初始化参数
    # 读取用户输入
    user_input = cmd
    print(user_input)
    # 向irsim发送命令
    r_process.stdin.write(user_input.encode())
    r_process.stdin.write(b'\n')
    r_process.stdin.flush()
    time.sleep(0.05)
    return ret

# 执行函数(一个时钟周期)
def irsim_com_run(cmd):
    irsim_com(cmd)
    ret = irsim_com('c')
    return ret

# 空执行(一个时钟周期)
def irsim_com_run_valid():
    ret = irsim_com('c')
    return ret

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

# Qt主界面
class MainWindow(QMainWindow):

    def __init__(self, conn):
        super().__init__()
        # 存储连接对象
        self.conn = conn

        # 创建按钮并添加到窗口中
        self.buttonA = QPushButton("Item1", self)
        self.buttonA.move(50, 50)
        self.buttonA.clicked.connect(self.on_buttonA_click)
        
        self.buttonB = QPushButton("Item2", self)
        self.buttonB.move(150, 50)
        self.buttonB.clicked.connect(self.on_buttonB_click)

        self.buttonC = QPushButton("Item3", self)
        self.buttonC.move(250, 50)
        self.buttonC.clicked.connect(self.on_buttonC_click)

        self.buttonD = QPushButton("Item4", self)
        self.buttonD.move(350, 50)
        self.buttonD.clicked.connect(self.on_buttonD_click)

        self.label1 = QLabel(self)
        self.label1.setText('0')
        self.label1.move(10, 10)

        self.label2 = QLabel(self)
        self.label2.setText('0')
        self.label2.move(20, 10)
        

        self.timer = QTimer()
        self.timer.timeout.connect(self.read_pipe)
        self.timer.start(100)  # 定时器每隔 100 毫秒触发一次

    def read_pipe(self):
        if self.conn.poll():
            message = self.conn.recv()
            if message == 'A selected':
                self.label1.setText('1')
            elif message == 'A unselected':
                self.label1.setText('0')
            elif message == 'B selected':
                self.label2.setText('1')
            elif message == 'B unselected':
                self.label2.setText('0')

    def on_buttonA_click(self):
        # 用户点击按钮1时，在主进程中打印一条消息
        self.conn.send('select A')

    def on_buttonB_click(self):
        # 用户点击按钮2时，在主进程中打印一条消息
        self.conn.send('select B')
    
    def on_buttonC_click(self):
        # 用户点击按钮2时，在主进程中打印一条消息
        print("1234")

    def on_buttonD_click(self):
        # 用户点击按钮2时，在主进程中打印一条消息
        print("1234")


def run_ui(conn):
    # 在子进程中运行 PyQt5 界面
    app = QApplication(sys.argv)
    window = MainWindow(conn)
    window.show()
    sys.exit(app.exec_())

# 创建双向管道
parent_conn, child_conn = Pipe()

# 创建子进程，运行 PyQt5 界面
pid = os.fork()
if pid == 0:
    child_conn.close()
    run_ui(parent_conn)

# 指定参数文件和仿真文件
param_file = 'scmos30.prm'
sim_file = 'top_module.sim'
cmd_file = '-padtest.cmd'

# 启动R进程
r_process = subprocess.Popen(['irsim', param_file, sim_file], 
stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)

# 将 r_process.stdout 设置为非阻塞式IO
fcntl.fcntl(r_process.stdout, fcntl.F_SETFL, os.O_NONBLOCK)

# 创建向量
irsim_com('vector inserted_5 in_inserted_5[7] in_inserted_5[6] in_inserted_5[5] in_inserted_5[4] in_inserted_5[3] in_inserted_5[2] in_inserted_5[1] in_inserted_5[0]')
irsim_com('vector inserted_1 in_inserted_1[7] in_inserted_1[6] in_inserted_1[5] in_inserted_1[4] in_inserted_1[3] in_inserted_1[2] in_inserted_1[1] in_inserted_1[0]')
irsim_com('vector inserted_05 in_inserted_05[7] in_inserted_05[6] in_inserted_05[5] in_inserted_05[4] in_inserted_05[3] in_inserted_05[2] in_inserted_05[1] in_inserted_05[0]')
irsim_com('vector inserted_025 in_inserted_025[7] in_inserted_025[6] in_inserted_025[5] in_inserted_025[4] in_inserted_025[3] in_inserted_025[2] in_inserted_025[1] in_inserted_025[0]')
irsim_com('vector change out_change[15] out_change[14] out_change[13] out_change[12] out_change[11] out_change[10] out_change[9] out_change[8] out_change[7] out_change[6] out_change[5] out_change[4] out_change[3] out_change[2] out_change[1] out_change[0]')
irsim_com('vector change_1 out_change_1[7] out_change_1[6] out_change_1[5] out_change_1[4] out_change_1[3] out_change_1[2] out_change_1[1] out_change_1[0]')
irsim_com('vector state out_state[1] out_state[0]')
# 添加监视变量
irsim_com('w    in_clka in_clkb in_restart in_sel_a in_sel_a in_sel_b in_sel_c in_sel_d \
                in_next in_finish inserted_5 inserted_1 inserted_05 inserted_025 \
                out_stock_a out_stock_b out_stock_c out_stock_d \
                out_csel_a out_csel_b out_csel_c out_csel_d \
                change_1 out_change_05 out_change_025 \
                out_spit_a out_spit_b out_spit_c out_spit_d')
# 定义时钟信号
irsim_com('clock in_clka 0 1 0 0')
irsim_com('clock in_clkb 0 0 0 1')
# 初始化参数
irsim_com('l in_sel_a')
irsim_com('l in_sel_b')
irsim_com('l in_sel_c')
irsim_com('l in_sel_d')
irsim_com('l in_next')
irsim_com('l in_finish')
irsim_com('set inserted_5 00000000')
irsim_com('set inserted_1 00000000')
irsim_com('set inserted_05 00000000')
irsim_com('set inserted_025 00000000')
# 芯片上电复位
irsim_com_run('h in_restart')
irsim_com_run('l in_restart')

# 在主进程中循环，接收管道中的消息
out_csel_a = '0'
out_csel_b = '0'
out_csel_c = '0'
out_csel_d = '0'
while True:
    # 回传商品 a 选中情况给UI
    ret_text = irsim_com_run_valid()
    key = "out_csel_a"
    value = get_value_from_string(ret_text, key)
    if value != out_csel_a:
        if value == '1':
            child_conn.send('A selected')
        else:
            child_conn.send('A unselected')
    out_csel_a = value

    # 回传商品 b 选中情况给UI
    key = "out_csel_b"
    value = get_value_from_string(ret_text, key)
    if value != out_csel_b:
        if value == '1':
            child_conn.send('B selected')
        else:
            child_conn.send('B unselected')
    out_csel_b = value

    # 回传商品 c 选中情况给UI
    key = "out_csel_c"
    value = get_value_from_string(ret_text, key)
    if value != out_csel_c:
        if value == '1':
            child_conn.send('C selected')
        else:
            child_conn.send('C unselected')
    out_csel_c = value
 
    # 回传商品 d 选中情况给UI
    key = "out_csel_d"
    value = get_value_from_string(ret_text, key)
    if value != out_csel_d:
        if value == '1':
            child_conn.send('D selected')
        else:
            child_conn.send('D unselected')
    out_csel_d = value  

    if child_conn.poll():
        message = child_conn.recv()
        if message == 'select A':
            irsim_com_run('h in_sel_a')
            irsim_com_run('l in_sel_a')
        elif message == 'select B':
            irsim_com_run('h in_sel_b')
            irsim_com_run('l in_sel_b')
            

# while True:
#     # 读取irsim输出并打印到控制台
#     output = []
#     while(output == []):
#         output = r_process.stdout.readlines()
#     for line in output:
#         print(line.decode(), end = '')

#     # 读取用户输入
#     user_input = 'c'
#     print(user_input)

#     # 向irsim发送命令
#     r_process.stdin.write(user_input.encode())
#     r_process.stdin.write(b'\n')
#     r_process.stdin.flush()
