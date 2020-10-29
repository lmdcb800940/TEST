<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default008_NPOI_03_DB_凍結窗格.aspx.cs" Inherits="Default008_NPOI_03_DB_凍結窗格" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            NPOI ：新增一個Excel檔，到資料庫撈資料，凍結窗格，輸出Excel檔<br />
            <br />
            首先 需加入參考<br />
            <br />
            加入 &gt; 參考 &gt; 瀏覽 &gt; ASP.NET範例 &gt; 上集 &gt; CH22.NPOI &gt; NPOI 2.1.3.1 binary &gt; dotnet4 &gt; NPOI.dll、NPOI.OOXML.dll<br />
            <br />
            後置程式碼：<br />
            1. 產生Excel檔案<br />
            2. 新增Sheet<br />
            <br />
            3.ADO連線資料庫<br />
            4.撈資料<br />
            5.以一列一列方式插入值<br />
            <br />
            6.凍結窗格<br />
            7.關閉資料庫連線<br />
            <br />
            8. System.IO<br />
            9. 輸出檔名<br />
            10. 釋放資源<br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
