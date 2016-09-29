function search_engine_assistant() {
    this.create = function(items, textbox, button, redirectFunction) {
        button.onclick = function() {
            var ckitems = document.getElementsByName("__opt");
            for (var i = 0; i < ckitems.length; i++) {
                if (ckitems[i].checked) {
                    var url = ckitems[i].value.replace(ckitems[i].attributes["key"].nodeValue, textbox.value);
                    if(redirectFunction)
                        redirectFunction(url);
                    break;
                }
            }
        };
        for (var i = 0; i < items.length; i++) {
            var item = this.createItem(i, items[i].text, items[i].url, items[i].key, items[i].container, items[i].selected, items[i].selectedCallback);
        }

    }

    this.createItem = function(id, text, url, key, container, selected, selectedCallback) {
        var selectedCallbackName = "__search_check_" + id;
        if (selectedCallback) {
            document.write("<script type=\"text/javascript\" language=\"javascript\">\nvar " + selectedCallbackName + " = " + selectedCallback.toLocaleString() + ";\n</script>");
        }

        var item = null;
        if (container) {
            var radio = "<input type=\"radio\" id=\"__opt_id\" name=\"__opt\" value=\"" + url + "\" key=\"" + key + "\" {checked} onclick=\"" + selectedCallbackName + "();\">" + text;
            if (selected)
                radio = radio.replace("{checked}", "checked");
            else
                radio = radio.replace("{checked}", "");

            item = new Object();
            item.body = radio;
            item.key = key;
            container.innerHTML += radio;
        }
        return item;
    }
}