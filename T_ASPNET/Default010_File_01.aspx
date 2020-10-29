<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default010_File_01.aspx.cs" Inherits="T_ASPNET_Default010_File_01" %>

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
            用For迴圈讀取電腦 C:\ 底下所有檔案及檔案容量大小 (不包含資料夾)<br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
