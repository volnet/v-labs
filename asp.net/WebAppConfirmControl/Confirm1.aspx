<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Confirm1.aspx.cs" Inherits="WebAppConfirmControl.Confirm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtText" runat="server"></asp:TextBox>
        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
        <asp:LinkButton ID="lbtnUpdtate" runat="server" OnClick="lbtnUpdtate_Click">LinkButton</asp:LinkButton>
        <asp:Button ID="btnUpdateWithoutCancelCode" runat="server" Text="UpdateWithoutCancelCode"
            OnClick="btnUpdateWithoutCancelCode_Click" />
        <hr />
    </div>



    </form>
</body>
</html>
