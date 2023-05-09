"""
修改效果：

1. 修改文件在文件系统里的“创建时间”。
2. 修改pdf文件文档属性里的“创建时间”。

使用方法：

1. 修改main函数中的*.pdf文件文件夹路径、创建时间。
2. `python pdf-property-modify-PyPDF2.py`
3. 修改后的文档有点问题【不知道如何修改】，需要使用Adobe Reader打开后，保存可以修复，再尝试WPS PDF打开，直接用后者打开会出现文档损坏提示。

已知问题：

1. 重复2次运行该文档，第2次将失败，说明第1次修改其实有问题。
2. 第1次修改后，会出现文档损坏提示（用WPS PDF打开）。

"""

import os
import datetime
import pytz
import PyPDF2
import win32file
import win32con

def set_pdf_file_metainfo_creation_time(file_path, creation_time: datetime, zone: str):

    with open(file_path, 'rb') as pdf_file:
        pdf_reader = PyPDF2.PdfReader(pdf_file)
        # print(pdf_reader.trailer)

        pdf_info = pdf_reader.metadata
        # print(pdf_info)
        pdf_info[PyPDF2.generic.NameObject('/CreationDate')] = PyPDF2.generic.TextStringObject(convert_zone_strftime(creation_time, zone))
        # print(pdf_info)

        # 将更新后的元数据写回到PDF文件中
        with open(file_path, 'rb+') as pdf_file:
            pdf_writer = PyPDF2.PdfWriter()
            pdf_writer.add_metadata(pdf_info)
            # pdf_writer.clone_reader_document_root(pdf_reader)
            # pdf_writer.clone_document_from_reader(pdf_reader)
            pdf_writer.append_pages_from_reader(pdf_reader)
            #for page in pdf_reader.pages:
            #    pdf_writer.add_page(page)
            pdf_writer.write(pdf_file)

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
    pdf_dir = r"C:\Users\volnet\Downloads\pdfs" 
    # 定义要修改的日期和时间
    creation_time = datetime.datetime(2023, 3, 12, 12, 20, 30)
    
    # 遍历目录中的所有PDF文件
    for filename in os.listdir(pdf_dir):
        if filename.endswith('.pdf'):
            # 打开PDF文件并读取元数据
            pdf_path = os.path.join(pdf_dir, filename)
            set_file_creation_time(pdf_path, creation_time)
            set_pdf_file_metainfo_creation_time(pdf_path, creation_time, 'Asia/Shanghai')
            
 