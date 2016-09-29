<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CustomLayout.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log4net Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="padding:30px 0 30px 0">
            The demo explains how to extend your log4net with custom filed.<br />
            3 WAYS in the demo code!<br />
            Requirement: Microsoft Visual Studio 2010, log4net
        </div>
        <div>
        Steps for running!<br />
        1.Change the Web.config(or log4net*.xml)'s connnectionString to actual path.
        <pre>
            from : Data Source=E:\MyCSharpProject\WebSite\Log4net\CustomLayout\CustomLayout\App_Data\log.sdf;
            to : e.g. C:\log.sdf
        </pre>
        </div>
        <div>
        2.Change the Web.config like these:
        <pre>
            &lt;appSettings&gt;
                &lt;add key="logConfigFile" value="configs\log4net<span style="color:red">1~3</span>.xml"/>
            &lt;/appSettings&gt;
        </pre>
        </div>
        <asp:Button ID="btnClearData" runat="server" Text="ClearData" 
            onclick="btnClearData_Click" />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        <div style="padding:30px 0 30px 0">
            <a href="http://logging.apache.org/log4net/">Log4net Project</a>&nbsp;
            <a href="http://www.cnblogs.com/volnet/archive/2011/10/16/log4net-custom-layout.html">The blog</a>
        </div>
    </div>
    </form>
</body>
</html>
