<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaticConfirm.aspx.cs"
    Inherits="WebAppConfirmControl.StaticConfirm"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>StaticConfirm</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <span id="label1"></span>
        <input type="button" onclick="custom_confirm(yes1,no1);" value="execute" />
        <div id="result" style="background-color: Yellow;">
        </div>
    </div>

    <script language="javascript" type="text/javascript">
        function yes1() {
            try
            {
                document.getElementById("label1").innerHTML = "Have execute!<br />";
            }catch(e){}
        }
        function no1() {
            try {
                document.getElementById("label1").innerHTML = "";
            }catch(e){}
        }
        function custom_confirm(yes, no) {
            if (window.confirm('Are you sure?')) {
                //yes
                if (yes)
                    yes();
                document.getElementById('result').innerHTML = "Completed!";
            }
            else {
                //no
                if (no)
                    no();
                document.getElementById('result').innerHTML = "You cancel the operate!";
            }
            document.getElementById('result').style.display = "";
            setTimeout(function() {
                document.getElementById('result').style.display = "none";
            }, 2000);
        }
    </script>

    </form>
</body>
</html>


