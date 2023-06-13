# flomo笔记导出

<https://flomoapp.com>导出功能，默认导出html文件。

## 导出成Markdown格式

导出后的文件可以方便导入Obsidian等软件进行使用。

1. 从[flomo导出页面](https://v.flomoapp.com/mine?source=export)导出数据，并解压。
2. 下载[export-md.js](export-md.js)文件，保存在同级文件夹里。
3. 在解压后的`index.html`页面增加脚本引入。

    ```html
        <script src='export-md.js'></script>
    ```

4. 用浏览器打开`index.html`页面，点击“导出”按钮。
