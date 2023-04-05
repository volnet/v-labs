import fitz, sys

def convertPdf2Text(fname):
    doc = fitz.open(fname)  # open document
    out = open(fname + ".txt", "wb")  # open text output
    for page in doc:  # iterate the document pages
        # https://pymupdf.readthedocs.io/en/latest/textpage.html#TextPage.extractBLOCKS
        blocks = page.get_text("blocks")  # get plain text (is in UTF-8)
        for block in blocks:
            text = block[4].encode("utf8")
            text = text.replace(b'\n', b' ') # replace carriage return and newline with nothing
            out.write(text)  # write sentence
            out.write("\n\n".encode("utf8"))
        out.write("\n\n".encode("utf8"))
    out.close()  

if __name__ == '__main__':
    print("Hello fitz, It will convert the pdf to text.")
    convertPdf2Text("meta-segment-anything.pdf")
