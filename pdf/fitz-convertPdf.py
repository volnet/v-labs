# How to Use?
# 1. convert pdf to plain text / html (without images).
# 2. open *.txt or *.html in web browser (Microsoft Edge or Chrome).
# 3. open the translate extensions in web browser.
# 
# Useage:
# change the pdf file name in __main__
# Windows cmd or macOS/Linux terminal->
# -> python fitz-converPdf.py

import fitz, sys
import base64 # added import statement

def convertPdf2Text(fname):
    doc = fitz.open(fname)  # open document
    out = open(fname + ".txt", "wb")  # open text output
    for page in doc:  # iterate the document pages
        # https://pymupdf.readthedocs.io/en/latest/textpage.html#TextPage.extractBLOCKS
        blocks = page.get_text("blocks")  # get plain text (is in UTF-8)
        for block in blocks:
            para = b""
            if (block[6] == 0):
                text = block[4].encode("utf8")
                para += text   # write sentence
            elif (block[6] == 1):
                # For an image block, its bbox and a text line with some image meta information is included – not the image content.
                # print(block[4])
                para += b'**********image lost**********'
            para = para.replace(b'-\n', b'') # replace the newline dash charicator
            para = para.replace(b'\n', b' ') # replace carriage return and newline with nothing
            out.write(para)
            out.write("\n\n".encode("utf8"))
        out.write("\n\n".encode("utf8"))
    out.close()  

def convertPdf2Html(fname):
    doc = fitz.open(fname)  # open document
    out = open(fname + ".html", "wb")  # open text output
    out.write(b"<!DOCTYPE html>\n<html>\n<head>\n<title>Converted PDF to HTML</title>\n</head>\n<body>\n")
    for page in doc:  # iterate the document pages
        # https://pymupdf.readthedocs.io/en/latest/textpage.html#TextPage.extractBLOCKS
        blocks = page.get_text("blocks")  # get plain text (is in UTF-8)
        for block in blocks:
            para = b""
            if (block[6] == 0):
                text = block[4].encode("utf8")
                para += text   # write sentence
            elif (block[6] == 1):
                # For an image block, its bbox and a text line with some image meta information is included – not the image content.
                # print(block[4])
                para += b'**********image lost**********'
            para = para.replace(b'-\n', b'') # replace the newline dash charicator
            para = para.replace(b'\n', b' ') # replace carriage return and newline with nothing
            out.write(para)
            out.write("<br /><br />\n".encode("utf8"))
        out.write("<br /><br />\n".encode("utf8"))
    out.write(b"</body>\n</html>")
    out.close()  
    
def convertPdf2Html2(fname):
    doc = fitz.open(fname)  # open document
    out = open(fname + ".html", "wb")  # open text output
    for page in doc:  # iterate the document pages
        # https://pymupdf.readthedocs.io/en/latest/textpage.html#TextPage.extractBLOCKS
        html = page.get_text("html")  # get plain text (is in UTF-8)
        out.write(html.encode("utf8"))
    out.close()  
    
if __name__ == '__main__':
    print("Hello fitz, It will convert the pdf to text.")
    convertPdf2Text("meta-segment-anything.pdf")
    convertPdf2Html("meta-segment-anything.pdf")
    # convertPdf2Html2("demo.pdf")
