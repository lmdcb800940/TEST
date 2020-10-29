<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default006_JS_彈跳視窗_連結.aspx.cs" Inherits="WebSite1_WebSite1_Default006_JS_彈跳視窗_連結" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            JavaScript<br />
            當點擊按鈕即可跳出訊息視窗並轉向另一個網頁<br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
