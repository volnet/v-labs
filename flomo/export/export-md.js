const filterBtn1 = document.querySelector("button");
if (filterBtn1) {
    const span = document.createElement("span");
    span.innerHTML = "&nbsp;";

    const exportBtn = document.createElement("button");
    exportBtn.textContent = "导出";
    exportBtn.addEventListener("click", () => {
        const date = dateSelect.value;
        const tag = tagSelect.value;

        let markdownData = "";
        const title = getNowDateStringForFileName("-") + "_FlomoExport";
        const filename = title + ".md";

        memos.forEach((memo) => {
            const time = memo.querySelector(".time").innerText;
            const content = memo.querySelector(".content").innerText;
            const isDateMatch = time.includes(date);
            const isTagMatch = content.includes(tag);
            if (isDateMatch && isTagMatch) {
                memo.style.display = "block";

                let contentHtml = memo.querySelector(".content").innerHTML;

                markdownData += contentHtml
                    .replaceAll("<p>", "").replaceAll("</p>", "\n ")
                    .replaceAll("<strong>", "**").replaceAll("</strong>", "**")
                    .replaceAll("<ul>", "\n ").replaceAll("</ul>", "\n ")
                    .replaceAll("<li>", "- ").replaceAll("</li>", "")
                    .replaceAll("-&gt;", "→")
                    .replaceAll("&gt;", ">")
                    .replaceAll("&lt;", "<")
                    + "\n "
                    + "#flomo"
                    + "\n\n "
                    + time
                    + "\n\n "
                    + "---"
                    + "\n\n ";

            } else {
                memo.style.display = "none";
            }
        });

        let contentArray = markdownData.split(" ");
        let markdownDataConvertTag = "";
        for (let i = 0; i < contentArray.length; ++i) {
            const item = contentArray[i];
            let itemAppend = "";
            let itemArray = item.split("#");
            if (itemArray.length > 1) {
                itemAppend = itemArray[0];
                for (let j = 1; j < itemArray.length; ++j) {
                    let tagStr = itemArray[j];
                    let tagArray = tagStr.split("/");
                    if (tagArray.length > 1) {
                        for (let z = 0; z < tagArray.length; ++z) {
                            if (tagArray[z].startsWith("P") || tagArray[z].startsWith("p")) {
                                itemAppend += tagArray[z] + " ";
                            }
                            else {
                                itemAppend += "#" + tagArray[z].replaceAll("“", "").replaceAll("”", "") + " ";
                            }
                        }
                    }
                    else {
                        itemAppend += "#" + tagStr + " ";
                    }
                }
            } else {
                itemAppend = item + " ";
            }

            markdownDataConvertTag += itemAppend;
        }

        markdownDataConvertTag = markdownDataConvertTag.replaceAll("\n ", "\n");

        markdownDataConvertTag = "# " + title + "\n\n"
            + "- 标签： #flomo\n"
            + "- 时间：" + getNowDateTimeString() + "\n"
            + "\n---\n"
            + markdownDataConvertTag;

        exportToMarkdownFile(markdownDataConvertTag, filename);
    });

    filterBtn1.parentElement.appendChild(span);
    filterBtn1.parentElement.appendChild(exportBtn);
}


function exportToMarkdownFile(data, filename) {
    exportToFile(data, filename, 'text/markdown');
}

function exportToFile(data, filename, filetype, convertDataCallback) {
    if (data) {
        if (convertDataCallback) {
            data = convertDataCallback(data);
        }
        const blob = new Blob([data], { type: filetype });
        const url = URL.createObjectURL(blob);

        const link = document.createElement('a');
        link.href = url;
        link.download = filename;
        link.click();

        URL.revokeObjectURL(url);
    }
}

function padZero(num, length = 2) {
    let padded = num.toString();
    while (padded.length < length) {
        padded = "0" + padded;
    }
    return padded;
}

function getNowDateStringForFileName(splitStr = "") {
    let currentDate = new Date();
    let timestamp = currentDate.getFullYear().toString() + splitStr +
        padZero(currentDate.getMonth() + 1) + splitStr +
        padZero(currentDate.getDate());
    return timestamp;
}

function getNowDateTimeString() {
    const splitStr1 = "-";
    const splitStr2 = " ";
    const splitStr3 = ":";
    const splitStr4 = ".";
    let currentDate = new Date();
    let timestamp = currentDate.getFullYear().toString() + splitStr1 +
        padZero(currentDate.getMonth() + 1) + splitStr1 +
        padZero(currentDate.getDate()) + splitStr2 +
        padZero(currentDate.getHours()) + splitStr3 +
        padZero(currentDate.getMinutes()) + splitStr3 +
        padZero(currentDate.getSeconds())
    // + splitStr4 + padZero(currentDate.getMilliseconds(), 3);
    return timestamp;
}