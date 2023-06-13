# flomo笔记导出

<https://flomoapp.com>导出功能，默认导出html文件。

## 导出成Markdown格式

导出后的文件可以方便导入Obsidian等软件进行使用。

### 特色说明

1. flomo支持以`#Tag1/Tag2/Tag3`这样的多层级Tag系统，一般Markdown不支持。本方法拆解多层级tag为单层级tag。
2. 当Tag以`P`或`p`开头的时候，代表页码。如flomo内标签`#思考快与慢/系统1/P20`通常用来代表`第20页`，但是如果`P20`作为一个单独标签，在标签搜索中可能没有意义。（不需要该能力可自行修改[源码](https://github.com/volnet/v-labs/blob/95c8b80dc09ddb4cee960211d5d88f6a7ed3e3d8/flomo/export/export-md.js#L60)）。
3. 导出文件自动添加`#flomo`Tag，方便在第三方系统中搜索。
4. 提示：不同Tag系统合并可能导致混乱，请引起注意。

### 操作步骤

1. 从[flomo导出页面](https://v.flomoapp.com/mine?source=export)导出数据，并解压。
2. 下载[export-md.js](export-md.js)文件，保存在同级文件夹里。
3. 在解压后的`index.html`页面增加脚本引入。

    ```html
        <script src='export-md.js'></script>
    ```

4. 用浏览器打开`index.html`页面，点击“导出”按钮。
