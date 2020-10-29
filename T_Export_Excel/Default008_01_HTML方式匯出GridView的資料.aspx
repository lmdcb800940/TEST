<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default008_01_HTML方式匯出GridView的資料.aspx.cs" Inherits="Default008_01_HTML方式匯出GridView的資料" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            以HTML的方式將GridView的資料直接匯出成Excel<br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <br />
            1. 先從資料庫撈資料<br />
            <br />
            2.綁掉GridView<br />
            <br />
            3.匯出Excel<br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
