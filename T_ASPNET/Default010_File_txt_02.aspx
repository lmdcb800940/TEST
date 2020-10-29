<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default010_File_txt_02.aspx.cs" Inherits="T_ASPNET_Default010_File_txt_02" %>

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
            把 Path1路徑的檔案，進行「讀取」、「複製」到 Path2，然後再做「刪除」的動作。<br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
