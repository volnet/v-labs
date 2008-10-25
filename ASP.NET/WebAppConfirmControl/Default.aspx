<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppConfirmControl._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="label" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
            onclick="btnSubmit_Click" />
            
        <asp:LinkButton ID="lbtnLink" runat="server">LinkButton</asp:LinkButton>
    </div>
    </form>
</body>
</html>
