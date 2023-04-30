import subprocess
import fcntl
import os
import time
import sys
import signal
from multiprocessing import Pipe
from PyQt5.QtWidgets import QApplication, QMainWindow, QPushButton, QLabel
from PyQt5.QtCore import QTimer
from PyQt5.QtGui import QPalette, QColor, QPixmap, QFont

# 定点数转十进制
def fixed_point_to_decimal(binary_string):
    # 获取二进制数的整数部分和小数部分
    integer_part, decimal_part = binary_string[:13], binary_string[-3:]
    # 将整数部分转换成十进制数
    integer = int(integer_part, 2)
    # 将小数部分转换成十进制数
    decimal = int(decimal_part[0])*0.5 + int(decimal_part[1])*0.25
    # 返回整数部分和小数部分相加的结果
    if(binary_string[0]=='1'):
        ret = integer + decimal - 8192
    else:
        ret = integer + decimal
    return ret

# 沟通函数
def irsim_com(cmd):
    # 打印初始文本
    output = []
    ret = ''
    while(output == []):
        output = r_process.stdout.readlines()
    for line in output:
        ret  = ret + line.decode()
        # print(ret, end = '')

    # 初始化参数
    # 读取用户输入
    user_input = cmd
    # print(user_input)
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

def get_value_from_string_16(string, key):
    """
    从给定字符串中查找包含给定键的值，并返回该值
    :param string: 给定的字符串
    :param key: 要查找的键
    :return: 包含给定键的值，如果没有找到则返回 None
    """
    split_string = string.split(" ")
    for s in split_string:
        if key in s:
            value = s.split("=")[1][:16]
            return value
    return None

def get_value_from_string_8(string, key):
    """
    从给定字符串中查找包含给定键的值，并返回该值
    :param string: 给定的字符串
    :param key: 要查找的键
    :return: 包含给定键的值，如果没有找到则返回 None
    """
    split_string = string.split(" ")
    for s in split_string:
        if key in s:
            value = s.split("=")[1][:8]
            return value
    return None

# Qt主界面
class MainWindow(QMainWindow):

    def __init__(self, conn):
        super().__init__()
        # 存储连接对象
        self.conn = conn

        # 设置窗口大小
        self.setFixedSize(1000, 700)

        # 设置样式表
        style_sheet = """
            QWidget {
                background-color: #333;
                color: #fff;
            }
        """
        self.setStyleSheet(style_sheet)

        # 设置QPalette颜色
        palette = self.palette()
        palette.setColor(QPalette.Window, QColor(51, 51, 51))
        palette.setColor(QPalette.WindowText, QColor(255, 255, 255))
        palette.setColor(QPalette.Base, QColor(35, 35, 35))
        palette.setColor(QPalette.AlternateBase, QColor(51, 51, 51))
        palette.setColor(QPalette.ToolTipBase, QColor(255, 255, 255))
        palette.setColor(QPalette.ToolTipText, QColor(255, 255, 255))
        palette.setColor(QPalette.Text, QColor(255, 255, 255))
        palette.setColor(QPalette.Button, QColor(51, 51, 51))
        palette.setColor(QPalette.ButtonText, QColor(255, 255, 255))
        palette.setColor(QPalette.BrightText, QColor(255, 0, 0))
        self.setPalette(palette)

        # 创建 Label 用于显示图案
        pixmap = QPixmap('./imgs/cola.jpeg')
        pixmap_scaled = pixmap.scaled(100, 150)  # 将图片缩放为200x200大小
        self.label = QLabel(self)
        self.label.setPixmap(pixmap_scaled)
        self.label.setFixedSize(100, 150)  # 设置控件的宽度为200，高度为200
        self.label.move(50,100)

        pixmap = QPixmap('./imgs/sprite.jpeg')
        pixmap_scaled = pixmap.scaled(100, 150)  # 将图片缩放为200x200大小
        self.label = QLabel(self)
        self.label.setPixmap(pixmap_scaled)
        self.label.setFixedSize(100, 150)  # 设置控件的宽度为200，高度为200
        self.label.move(200,100)

        pixmap = QPixmap('./imgs/yuan.jpeg')
        pixmap_scaled = pixmap.scaled(100, 150)  # 将图片缩放为200x200大小
        self.label = QLabel(self)
        self.label.setPixmap(pixmap_scaled)
        self.label.setFixedSize(100, 150)  # 设置控件的宽度为200，高度为200
        self.label.move(350,100)

        pixmap = QPixmap('./imgs/pq.jpeg')
        pixmap_scaled = pixmap.scaled(100, 150)  # 将图片缩放为200x200大小
        self.label = QLabel(self)
        self.label.setPixmap(pixmap_scaled)
        self.label.setFixedSize(100, 150)  # 设置控件的宽度为200，高度为200
        self.label.move(500,100)

        pixmap = QPixmap('./imgs/1usd.jpeg')
        pixmap_scaled = pixmap.scaled(200, 100)  # 将图片缩放为200x200大小
        self.label = QLabel(self)
        self.label.setPixmap(pixmap_scaled)
        self.label.setFixedSize(200, 100)  # 设置控件的宽度为200，高度为200
        self.label.move(650,100)

        self.label1USDLabel = QLabel(self)
        self.label1USDLabel.setText('1 USD')
        self.label1USDLabel.setStyleSheet('color: white')
        self.label1USDLabel.move(650, 200)

        self.Count_1USD = 0
        self.label1USDCount = QLabel(self)
        self.label1USDCount.setText(str(self.Count_1USD)+' banknote(s)')
        self.label1USDCount.setStyleSheet('color: white')
        self.label1USDCount.move(750, 200)

        pixmap = QPixmap('./imgs/05usd.jpeg')
        pixmap_scaled = pixmap.scaled(100, 100)  # 将图片缩放为200x200大小
        self.label = QLabel(self)
        self.label.setPixmap(pixmap_scaled)
        self.label.setFixedSize(100, 100)  # 设置控件的宽度为200，高度为200
        self.label.move(650,250)

        self.label1USDLabel = QLabel(self)
        self.label1USDLabel.setText('0.5 USD')
        self.label1USDLabel.setStyleSheet('color: white')
        self.label1USDLabel.move(650, 350)

        self.Count_05USD = 0
        self.label05USDCount = QLabel(self)
        self.label05USDCount.setText(str(self.Count_05USD)+' coin(s)')
        self.label05USDCount.setStyleSheet('color: white')
        self.label05USDCount.move(750, 350)

        pixmap = QPixmap('./imgs/025usd.jpeg')
        pixmap_scaled = pixmap.scaled(100, 100)  # 将图片缩放为200x200大小
        self.label = QLabel(self)
        self.label.setPixmap(pixmap_scaled)
        self.label.setFixedSize(100, 100)  # 设置控件的宽度为200，高度为200
        self.label.move(650,400)

        self.label025USDLabel = QLabel(self)
        self.label025USDLabel.setText('0.25 USD')
        self.label025USDLabel.setStyleSheet('color: white')
        self.label025USDLabel.move(650, 500)

        self.Count_025USD = 0
        self.label025USDCount = QLabel(self)
        self.label025USDCount.setText(str(self.Count_025USD)+' coin(s)')
        self.label025USDCount.setStyleSheet('color: white')
        self.label025USDCount.move(750, 500)

        self.buttonGetMoney = QPushButton("Get Money", self)
        self.buttonGetMoney.move(750, 550)
        self.buttonGetMoney.clicked.connect(self.on_buttonGetMoney_click)

        self.buttonGetItem = QPushButton("Get Items", self)
        self.buttonGetItem.move(500, 550)
        self.buttonGetItem.clicked.connect(self.on_buttonGetItem_click)

        # 吐出
        self.CountA = 0
        self.labelSpitA = QLabel(self)
        self.labelSpitA.setText(str(self.CountA)+ ' 个')
        self.labelSpitA.setStyleSheet('color: white')
        self.labelSpitA.move(50, 500)

        self.CountB = 0
        self.labelSpitB = QLabel(self)
        self.labelSpitB.setText(str(self.CountA)+ ' 个')
        self.labelSpitB.setStyleSheet('color: white')
        self.labelSpitB.move(200, 500)

        self.CountC = 0
        self.labelSpitC = QLabel(self)
        self.labelSpitC.setText(str(self.CountA)+ ' 个')
        self.labelSpitC.setStyleSheet('color: white')
        self.labelSpitC.move(350, 500)

        self.CountD = 0
        self.labelSpitD = QLabel(self)
        self.labelSpitD.setText(str(self.CountA)+ ' 个')
        self.labelSpitD.setStyleSheet('color: white')
        self.labelSpitD.move(500, 500)

        # 找零情
        self.labelChange = QLabel(self)
        self.labelChange.setText('Out of Money')
        self.labelChange.setStyleSheet('color: red')
        self.labelChange.move(650, 70)
        self.labelChange.setFixedSize(300, 20)  # 设置控件的宽度为200，高度为200

        # 创建按钮并添加到窗口中
        self.buttonA = QPushButton("Item1", self)
        self.buttonA.move(50, 350)
        self.buttonA.clicked.connect(self.on_buttonA_click)
        
        self.buttonB = QPushButton("Item2", self)
        self.buttonB.move(200, 350)
        self.buttonB.clicked.connect(self.on_buttonB_click)

        self.buttonC = QPushButton("Item3", self)
        self.buttonC.move(350, 350)
        self.buttonC.clicked.connect(self.on_buttonC_click)

        self.buttonD = QPushButton("Item4", self)
        self.buttonD.move(500, 350)
        self.buttonD.clicked.connect(self.on_buttonD_click)

        self.buttonNext = QPushButton("Next", self)
        self.buttonNext.move(50, 450)
        self.buttonNext.clicked.connect(self.on_buttonNext_click)

        self.buttonFinish = QPushButton("Finish", self)
        self.buttonFinish.move(200, 450)
        self.buttonFinish.clicked.connect(self.on_buttonFinish_click)

        self.buttonInsert5 = QPushButton("$5", self)
        self.buttonInsert5.move(50, 400)
        self.buttonInsert5.clicked.connect(self.on_buttonInsert5_click)

        self.buttonInsert1 = QPushButton("$1", self)
        self.buttonInsert1.move(200, 400)
        self.buttonInsert1.clicked.connect(self.on_buttonInsert1_click)

        self.buttonInsert05 = QPushButton("$0.5", self)
        self.buttonInsert05.move(350, 400)
        self.buttonInsert05.clicked.connect(self.on_buttonInsert05_click)

        self.buttonInsert025 = QPushButton("$0.25", self)
        self.buttonInsert025.move(500, 400)
        self.buttonInsert025.clicked.connect(self.on_buttonInsert025_click)

        # 创建标签并添加到窗口中
        self.labelTitle = QLabel(self)
        self.labelTitle.setText('Vending Machine')
        self.labelTitle.setStyleSheet('color: white')
        self.labelTitle.setFixedSize(300, 50)  # 设置控件的宽度为200，高度为200
        font = QFont("Arial", 20)  # 设置字体为Arial，大小为20
        self.labelTitle.setFont(font)
        self.labelTitle.move(200, 10)

        self.labelA = QLabel(self)
        self.labelA.setText('Unselected')
        self.labelA.setStyleSheet('color: white')
        self.labelA.move(50, 310)

        self.labelAText = QLabel(self)
        self.labelAText.setText('Cola $1.75')
        self.labelAText.setStyleSheet('color: white')
        self.labelAText.move(50, 250)

        self.labelAStock = QLabel(self)
        self.labelAStock.setText('Out of Stock')
        self.labelAStock.setStyleSheet('color: white')
        self.labelAStock.move(50, 275)

        self.labelB = QLabel(self)
        self.labelB.setText('Unselected')
        self.labelB.setStyleSheet('color: white')
        self.labelB.move(200, 310)

        self.labelBText = QLabel(self)
        self.labelBText.setText('Sprite $1.50')
        self.labelBText.setStyleSheet('color: white')
        self.labelBText.move(200, 250)

        self.labelBStock = QLabel(self)
        self.labelBStock.setText('Out of Stock')
        self.labelBStock.setStyleSheet('color: white')
        self.labelBStock.move(200, 275)
        
        self.labelC = QLabel(self)
        self.labelC.setText('Unselected')
        self.labelC.setStyleSheet('color: white')
        self.labelC.move(350, 310)

        self.labelCText = QLabel(self)
        self.labelCText.setText('Genki $1.25')
        self.labelCText.setStyleSheet('color: white')
        self.labelCText.move(350, 250)

        self.labelCStock = QLabel(self)
        self.labelCStock.setText('Out of Stock')
        self.labelCStock.setStyleSheet('color: white')
        self.labelCStock.move(350, 275)

        self.labelD = QLabel(self)
        self.labelD.setText('Unselected')
        self.labelD.setStyleSheet('color: white')
        self.labelD.move(500, 310)

        self.labelDText = QLabel(self)
        self.labelDText.setText('PQ B $1.00')
        self.labelDText.setStyleSheet('color: white')
        self.labelDText.move(500, 250)

        self.labelDStock = QLabel(self)
        self.labelDStock.setText('Out of Stock')
        self.labelDStock.setStyleSheet('color: white')
        self.labelDStock.move(500, 275)

        self.labelDeposit = QLabel(self)
        self.labelDeposit.setText('123')
        self.labelDeposit.setStyleSheet('color: white')
        self.labelDeposit.setFixedSize(300, 50)  # 设置控件的宽度为200，高度为200
        font = QFont("Arial", 20)  # 设置字体为Arial，大小为20
        self.labelDeposit.setFont(font)
        self.labelDeposit.move(40, 60)

        self.timer = QTimer()
        self.timer.timeout.connect(self.read_pipe)
        self.timer.start(100)  # 定时器每隔 100 毫秒触发一次

    def read_pipe(self):
        if self.conn.poll():
            message = self.conn.recv()
            if isinstance(message, str):
                if message == 'A selected':
                    self.labelA.setText('Selected')
                    self.labelA.setStyleSheet('color: red')
                elif message == 'A unselected':
                    self.labelA.setText('Unselected')
                    self.labelA.setStyleSheet('color: white')
                elif message == 'B selected':
                    self.labelB.setText('Selected')
                    self.labelB.setStyleSheet('color: red')
                elif message == 'B unselected':
                    self.labelB.setText('Unselected')
                    self.labelB.setStyleSheet('color: white')
                elif message == 'C selected':
                    self.labelC.setText('Selected')
                    self.labelC.setStyleSheet('color: red')
                elif message == 'C unselected':
                    self.labelC.setText('Unselected')
                    self.labelC.setStyleSheet('color: white')
                elif message == 'D selected':
                    self.labelD.setText('Selected')
                    self.labelD.setStyleSheet('color: red')
                elif message == 'D unselected':
                    self.labelD.setText('Unselected')
                    self.labelD.setStyleSheet('color: white')
                elif message == 'out_stock_a true':
                    self.labelAStock.setText('In Stock')
                    self.labelAStock.setStyleSheet('color: green')
                elif message == 'out_stock_a false':
                    self.labelAStock.setText('Out of Stock')
                    self.labelAStock.setStyleSheet('color: white')
                elif message == 'out_stock_b true':
                    self.labelBStock.setText('In Stock')
                    self.labelBStock.setStyleSheet('color: green')
                elif message == 'out_stock_b false':
                    self.labelBStock.setText('Out of Stock')
                    self.labelBStock.setStyleSheet('color: white')
                elif message == 'out_stock_c true':
                    self.labelCStock.setText('In Stock')
                    self.labelCStock.setStyleSheet('color: green')
                elif message == 'out_stock_c false':
                    self.labelCStock.setText('Out of Stock')
                    self.labelCStock.setStyleSheet('color: white')
                elif message == 'out_stock_d true':
                    self.labelDStock.setText('In Stock')
                    self.labelDStock.setStyleSheet('color: green')
                elif message == 'out_stock_d false':
                    self.labelDStock.setText('Out of Stock')
                    self.labelDStock.setStyleSheet('color: white')
                elif message[:7] == 'Deposit':
                    self.labelDeposit.setText(message)
                elif message == "05++":
                    self.Count_05USD = self.Count_05USD + 1
                    self.label05USDCount.setText(str(self.Count_05USD)+' coin(s)')
                elif message == "025++":
                    self.Count_025USD = self.Count_025USD + 1
                    self.label025USDCount.setText(str(self.Count_025USD)+' coin(s)')
                elif message == "a++":
                    self.CountA = self.CountA + 1
                    self.labelSpitA.setText(str(self.CountA)+' 个')
                elif message == "b++":
                    self.CountB = self.CountB + 1
                    self.labelSpitB.setText(str(self.CountB)+' 个')
                elif message == "c++":
                    self.CountC = self.CountC + 1
                    self.labelSpitC.setText(str(self.CountC)+' 个')
                elif message == "d++":
                    self.CountD = self.CountD + 1
                    self.labelSpitD.setText(str(self.CountD)+' 个')
                elif message == "change no":
                    self.labelChange.setText('Out of Money')
                    self.labelChange.setStyleSheet('color: red')
                elif message == "change ok":
                    self.labelChange.setText('Ready for Change')
                    self.labelChange.setStyleSheet('color: green')
            else:
                print(message)
                self.Count_1USD = self.Count_1USD + int(message)
                self.label1USDCount.setText(str(self.Count_1USD)+' banknote(s)')
    def on_buttonA_click(self):
        # 用户点击按钮a时，在主进程中打印一条消息
        self.conn.send('select A')

    def on_buttonB_click(self):
        # 用户点击按钮b时，在主进程中打印一条消息
        self.conn.send('select B')
    
    def on_buttonC_click(self):
        # 用户点击按钮c时，在主进程中打印一条消息
        self.conn.send('select C')

    def on_buttonD_click(self):
        # 用户点击按钮d时，在主进程中打印一条消息
        self.conn.send('select D')

    def on_buttonNext_click(self):
        # 用户点击按钮Next时，在主进程中打印一条消息
        self.conn.send('Next pressed')

    def on_buttonFinish_click(self):
        # 用户点击按钮Finish时，在主进程中打印一条消息
        self.conn.send('Finish pressed')

    def on_buttonInsert5_click(self):
        # 用户点击按钮Insert5时，在主进程中打印一条消息
        self.conn.send('5 dollor inserted')
    
    def on_buttonInsert1_click(self):
        # 用户点击按钮Insert1时，在主进程中打印一条消息
        self.conn.send('1 dollor inserted')

    def on_buttonInsert05_click(self):
        # 用户点击按钮Insert05时，在主进程中打印一条消息
        self.conn.send('0.5 dollor inserted')

    def on_buttonInsert025_click(self):
        # 用户点击按钮Insert025时，在主进程中打印一条消息
        self.conn.send('0.25 dollor inserted')

    def on_buttonGetMoney_click(self):
        # 用户点击按钮GetMoney时，在主进程中打印一条消息
        self.Count_1USD = 0
        self.Count_05USD = 0
        self.Count_025USD = 0
        self.label1USDCount.setText(str(self.Count_1USD)+' coin(s)')
        self.label05USDCount.setText(str(self.Count_05USD)+' coin(s)')
        self.label025USDCount.setText(str(self.Count_025USD)+' coin(s)')

    def on_buttonGetItem_click(self):
        # 用户点击按钮GetMoney时，在主进程中打印一条消息
        self.CountA = 0
        self.CountB = 0
        self.CountC = 0
        self.CountD = 0
        self.labelSpitA.setText(str(self.CountA)+ ' 个')
        self.labelSpitB.setText(str(self.CountB)+ ' 个')
        self.labelSpitC.setText(str(self.CountC)+ ' 个')
        self.labelSpitD.setText(str(self.CountD)+ ' 个')

def run_ui(conn):
    # 在子进程中运行 PyQt5 界面
    app = QApplication(sys.argv)
    # 设置样式为QFusionStyle
    app.setStyle('fusion')
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
else:
    # 子进程退出时，主进程也退出
    def sig_handler(signum, frame):
        # 信号处理函数，调用 os._exit() 退出主进程
        os._exit(0)

    # 注册 SIGCHLD 信号处理函数
    signal.signal(signal.SIGCHLD, sig_handler)

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
    irsim_com('vector changeTotal out_change[15] out_change[14] out_change[13] out_change[12] out_change[11] out_change[10] out_change[9] out_change[8] out_change[7] out_change[6] out_change[5] out_change[4] out_change[3] out_change[2] out_change[1] out_change[0]')
    irsim_com('vector change_1 out_change_1[7] out_change_1[6] out_change_1[5] out_change_1[4] out_change_1[3] out_change_1[2] out_change_1[1] out_change_1[0]')
    irsim_com('vector state out_state[1] out_state[0]')
    # 添加监视变量
    irsim_com('w    in_restart in_sel_a in_sel_a in_sel_b in_sel_c in_sel_d \
                    in_next in_finish \
                    out_stock_a out_stock_b out_stock_c out_stock_d \
                    out_csel_a out_csel_b out_csel_c out_csel_d \
                    changeTotal change_1 out_change_05 out_change_025 \
                    out_spit_a out_spit_b out_spit_c out_spit_d out_sol_ok')
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
    irsim_com('l in_inserted_5')
    irsim_com('l in_inserted_1')
    irsim_com('l in_inserted_05')
    irsim_com('l in_inserted_025')
    # 芯片上电复位
    irsim_com_run('h in_restart')
    irsim_com_run('l in_restart')

    # 在主进程中循环，接收管道中的消息
    out_csel_a = '0'
    out_csel_b = '0'
    out_csel_c = '0'
    out_csel_d = '0'
    out_stock_a = '0'
    out_stock_b = '0'
    out_stock_c = '0'
    out_stock_d = '0'
    out_sol_ok = '0'
    deposit = ''
    while True:
        # 回传找零情况
        ret_text = irsim_com_run_valid()
        key = "out_sol_ok"
        value = get_value_from_string(ret_text, key)
        if value != out_sol_ok:
            if value == '0':
                child_conn.send('change no')
            else:
                child_conn.send('change ok')
        out_sol_ok = value

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

        # 回传商品 a stock 选中情况给UI
        key = "out_stock_a"
        value = get_value_from_string(ret_text, key)
        if value != out_stock_a:
            if value == '1':
                child_conn.send('out_stock_a true')
            else:
                child_conn.send('out_stock_a false')
        out_stock_a = value

        # 回传商品 b stock 选中情况给UI
        key = "out_stock_b"
        value = get_value_from_string(ret_text, key)
        if value != out_stock_b:
            if value == '1':
                child_conn.send('out_stock_b true')
            else:
                child_conn.send('out_stock_b false')
        out_stock_b = value  

        # 回传商品 c stock 选中情况给UI
        key = "out_stock_c"
        value = get_value_from_string(ret_text, key)
        if value != out_stock_c:
            if value == '1':
                child_conn.send('out_stock_c true')
            else:
                child_conn.send('out_stock_c false')
        out_stock_c = value

        # 回传商品 d stock 选中情况给UI
        key = "out_stock_d"
        value = get_value_from_string(ret_text, key)
        if value != out_stock_d:
            if value == '1':
                child_conn.send('out_stock_d true')
            else:
                child_conn.send('out_stock_d false')
        out_stock_d = value

        # 回传 change 情况给UI
        key = "changeTotal"
        value = get_value_from_string_16(ret_text, key)
        result = fixed_point_to_decimal(value)
        signal2send = 'Deposit:' + str(result) + '$'
        if deposit != signal2send:
            child_conn.send(signal2send)
            print(signal2send)
        deposit = signal2send

        # 回传商品 1usd 退款数额给UI
        key = "change_1"
        value = get_value_from_string_8(ret_text, key)
        if (value != '00000000') and (value != 'XXXXXXXX'):
            child_conn.send(int(value, 2))
            print(int(value, 2))

        # 回传商品 0.5usd 退款数额给UI
        key = "change_05"
        value = get_value_from_string(ret_text, key)
        if (value != 'X') and (value != '0'):
            child_conn.send('05++')

        # 回传商品 0.25usd 退款数额给UI
        key = "change_025"
        value = get_value_from_string(ret_text, key)
        if (value != 'X') and (value != '0'):
            child_conn.send('025++')

        # 回传商品  退款数额给UI
        key = "out_spit_a"
        value = get_value_from_string(ret_text, key)
        if (value != 'X') and (value != '0'):
            child_conn.send('a++')

        key = "out_spit_b"
        value = get_value_from_string(ret_text, key)
        if (value != 'X') and (value != '0'):
            child_conn.send('b++')

        key = "out_spit_c"
        value = get_value_from_string(ret_text, key)
        if (value != 'X') and (value != '0'):
            child_conn.send('c++')

        key = "out_spit_d"
        value = get_value_from_string(ret_text, key)
        if (value != 'X') and (value != '0'):
            child_conn.send('d++')

        if child_conn.poll():
            message = child_conn.recv()
            if message == 'select A':
                irsim_com_run('h in_sel_a')
                irsim_com_run('l in_sel_a')
            elif message == 'select B':
                irsim_com_run('h in_sel_b')
                irsim_com_run('l in_sel_b')
            elif message == 'select C':
                irsim_com_run('h in_sel_c')
                irsim_com_run('l in_sel_c')
            elif message == 'select D':
                irsim_com_run('h in_sel_d')
                irsim_com_run('l in_sel_d')
            elif message == '5 dollor inserted':
                irsim_com_run('h in_inserted_5')
                irsim_com_run('l in_inserted_5')
            elif message == '1 dollor inserted':
                irsim_com_run('h in_inserted_1')
                irsim_com_run('l in_inserted_1')
            elif message == '0.5 dollor inserted':
                irsim_com_run('h in_inserted_05')
                irsim_com_run('l in_inserted_05')
            elif message == '0.25 dollor inserted':
                irsim_com_run('h in_inserted_025')
                irsim_com_run('l in_inserted_025')
            elif message == 'Next pressed':
                irsim_com_run('h in_next')
                irsim_com_run('l in_next')
            elif message == 'Finish pressed':
                irsim_com_run('h in_finish')
                irsim_com_run('l in_finish')

                
                

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
