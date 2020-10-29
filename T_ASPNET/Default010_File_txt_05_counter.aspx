<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default010_File_txt_05_counter.aspx.cs" Inherits="T_ASPNET_Default010_File_txt_05_counter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            File<br />
            <br />
            文字檔<br />
            <br />
            訪客計數器<br />
            <br />
            訪客人數：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
