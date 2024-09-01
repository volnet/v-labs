import pandas as pd

class ExcelModifier:
    def __init__(self, inputFile):
        self.df = pd.read_excel(inputFile, engine='xlrd')
        self.inputFile = inputFile
    
    def deleteColumns(self, deleteColumns):
        # 获取列数并生成列字母
        num_columns = len(self.df.columns)
        column_letters = []
        
        for i in range(num_columns):
            letter = ''
            n = i
            while n >= 0:
                letter = chr(n % 26 + ord('A')) + letter
                n = n // 26 - 1
            column_letters.append(letter)
        
        # 将列字母转换为实际的列名称
        columns_to_delete = [self.df.columns[column_letters.index(col)] for col in deleteColumns if col in column_letters]
        
        # 删除指定的列
        self.df.drop(columns=columns_to_delete, inplace=True)
        return self  # 返回自身以支持链式调用
    
    def deleteRows(self, deleteRows):
        # 直接根据行索引删除指定行，注意要减去1，因为索引从0开始
        self.df.drop(deleteRows, inplace=True)
        return self  # 返回自身以支持链式调用
    
    def save_as(self, outputFile):
        self.df.to_excel(outputFile, index=False)
        print(f"已保存修改后的文件：{outputFile}")
        return self  # 返回自身以支持链式调用

# 示例使用
inputFile = r"C:\Users\username\Downloads\hello.xls"
outputFile = inputFile.replace(".xls", "-updated.xlsx")

modifier = ExcelModifier(inputFile)
modifier.deleteColumns(["C", "E", "G", "I", "K", "M", "O", "Q", "S", "U"]).deleteRows([0, 1, 2, 3, 4, 5, 6]).save_as(outputFile)
