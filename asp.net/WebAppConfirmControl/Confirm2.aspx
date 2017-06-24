<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirm2.aspx.cs" Inherits="WebAppConfirmControl.Confirm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnUpdate1" runat="server" Text="Update1" 
            onclick="btnUpdate1_Click" />
        <asp:Button ID="btnUpdate2" runat="server" Text="Update2" 
            onclick="btnUpdate2_Click" />
        <asp:LinkButton ID="lbtnUpdate1" runat="server" onclick="lbtnUpdate1_Click">LinkButton</asp:LinkButton>
    </div>
    <asp:HiddenField ID="hiddenConfirm" runat="server" />   
<%--    <script language="javascript" type="text/javascript">
        function _confirm(message) {
            var result = window.confirm(message);
            
            //only IE(there is a method to extend the event in firefox.)
            var e = window.event;
            var hidden = document.getElementById('<%= hiddenConfirm.ClientID %>');
            if (hidden) {
                hidden.value += e.srcElement.id + ":" + result + "|";
            }
           
            return result;
        }
    </script>--%>
    </form>
</body>
</html>
