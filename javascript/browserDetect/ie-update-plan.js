/*
var wd_ie_update_helper = {
    run: function () {
        if (navigator.appName == 'Microsoft Internet Explorer') {
            var version = wd_ie_update_helper.check_version();
            if (version < 9) {
                var tips = document.createElement('div');
                tips.innerHTML += "您的浏览器(\"Internet Explorer " + version + "\")版本较低，建议升级至新的浏览器。点此下载&nbsp;<a href=\"\">最新版Internet Explorer</a>";
                tips.innerHTML += "<br />" + navigator.userAgent;
                document.body.appendChild(tips);
            }
        }
    },
    check_version: function () {
        var rv = -1; // Return value assumes failure.
        if (navigator.appName == 'Microsoft Internet Explorer') {
            var ua = navigator.userAgent,
                re = new RegExp("MSIE ([0-9]{1,}[\\.0-9]{0,})");
            if (re.exec(ua) !== null) {
                rv = parseFloat(RegExp.$1);
            }
        }
        else if (navigator.appName == "Netscape") {
            /// in IE 11 the navigator.appVersion says 'trident'
            /// in Edge the navigator.appVersion does not say trident
            if (navigator.appVersion.indexOf('Trident') === -1) rv = 12;
            else rv = 11;
        }
        return rv;
    }
}
window.onload = wd_ie_update_helper.run;
*/

(function (w) {
    // 要求IE10以上版本浏览器
    // 为防止页面出现IE11的浏览器，按IE7的标准显示，导致检测失败，可以添加下面的语句来指示浏览器大于等于IE10的时候，使用IE10文档模式。
    // <meta http-equiv=X-UA-Compatible content=IE=EmulateIE10>
    if (!("WebSocket" in w && 2 === w.WebSocket.CLOSING)) {
        var d = document.createElement("div");
        d.className = "browsehappy";
        d.innerHTML = '<div style="width:100%;height:100px;font-size:20px;line-height:100px;text-align:center;background-color:#E90D24;color:#fff;margin-bottom:40px;">\u4f60\u7684\u6d4f\u89c8\u5668\u5b9e\u5728<strong>\u592a\u592a\u65e7\u4e86</strong>\uff0c\u592a\u592a\u65e7\u4e86 <a target="_blank" href="http://browsehappy.osfipin.com/" style="background-color:#31b0d5;border-color: #269abc;text-decoration: none;padding: 6px 12px;background-image: none;border: 1px solid transparent;border-radius: 4px;color:#FFEB3B;">\u7acb\u5373\u5347\u7ea7</a></div>';
        var f = function () {
            var s = document.getElementsByTagName("body")[0];
            if ("undefined" == typeof (s)) {
                setTimeout(f, 10)
            } else { s.insertBefore(d, s.firstChild) }
        }; f()
    }
} (window));