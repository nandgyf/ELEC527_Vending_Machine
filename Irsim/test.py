from PyQt5.QtGui import QPixmap
from PyQt5.QtWidgets import QApplication, QLabel

app = QApplication([])

pixmap = QPixmap('./imgs/pq.jpeg')
pixmap_scaled = pixmap.scaled(500, 200)  # 将图片缩放为200x200大小
label = QLabel()
label.setPixmap(pixmap_scaled)
label.show()

app.exec_()
