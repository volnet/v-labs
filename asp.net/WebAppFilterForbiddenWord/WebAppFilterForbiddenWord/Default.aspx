<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebAppFilterForbiddenWord._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbOutput" runat="server"></asp:Label>
        <br />
        姓名：<asp:TextBox ID="txtName" runat="server" Width="360px"></asp:TextBox>
        <br />
        密码：<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" 
            Width="360px"></asp:TextBox><asp:Label ID="lbAlert" runat="server" Text=""></asp:Label>
        <br />
        评论：<br />
        <asp:TextBox ID="txtComment" runat="server" Height="153px" TextMode="MultiLine" Width="410px"></asp:TextBox>
        <br />
        <asp:Button ID="btnSubmit" runat="server" Text="提交" onclick="btnSubmit_Click" />
        <br />
    </div>
    </form>
</body>
</html>
