"""

修改效果：

1. 修改文件在文件系统里的“创建时间”。
2. 修改pdf文件文档属性里的“创建时间”。

使用方法：

1. 修改main函数中的*.pdf文件文件夹路径、创建时间。
2. `python pdf-property-modify-pdfrw.py`

该版本不存在[pdf-property-modify-PyPDF2.py]中的问题。

"""
import os
import datetime
import pytz
import win32file
import win32con
from pdfrw import PdfReader, PdfWriter, PdfDict

def set_pdf_file_metainfo_creation_time(file_path, creation_time: datetime, zone: str):
    reader = PdfReader(file_path)
    # print(reader.Info)
    # print(reader.Info["/CreationDate"])
    # metadata = PdfDict(Author="Someone", Title="PDF in Python", CreationDate = convert_zone_strftime(creation_time, zone))
    metadata = PdfDict(CreationDate = convert_zone_strftime(creation_time, zone))
    reader.Info.update(metadata)
    # print(reader.Info)
    PdfWriter(file_path, trailer=reader).write()
    print(file_path, "is updated.")

def set_file_creation_time(filename, creation_time):
    handle = win32file.CreateFile(filename, win32file.GENERIC_WRITE,
                                  win32file.FILE_SHARE_READ | win32file.FILE_SHARE_WRITE,
                                  None, win32file.OPEN_EXISTING, win32file.FILE_ATTRIBUTE_NORMAL, None)
    win32file.SetFileTime(handle, creation_time, None, None)
    handle.close()

def convert_zone_strftime(time: datetime, zone: str):
    """
    reference: https://zxyle.github.io/PDF-Explained/chapter4.html#%E6%97%A5%E6%9C%9F
    """

    zone_time = time.astimezone(pytz.timezone(zone))
    # 将东八区时间转换为带时区偏移信息的字符串
    timezone_offset = zone_time.strftime('%z')
    timezone_offset = timezone_offset[:3] + "'" + timezone_offset[-2:] + "'"
    return zone_time.strftime('D:%Y%m%d%H%M%S{}'.format(timezone_offset))

if __name__ == '__main__':
    pdf_dir = r"C:\Users\gongcen\Downloads\入职欢迎\入职欢迎" 
    # 定义要修改的日期和时间
    creation_time = datetime.datetime(2023, 3, 12, 12, 20, 30)
    
    # 遍历目录中的所有PDF文件
    for filename in os.listdir(pdf_dir):
        if filename.endswith('.pdf'):
            # 打开PDF文件并读取元数据
            pdf_path = os.path.join(pdf_dir, filename)
            set_file_creation_time(pdf_path, creation_time)
            set_pdf_file_metainfo_creation_time(pdf_path, creation_time, 'Asia/Shanghai')