<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default008_NPOI_01_建立檔案並插入值.aspx.cs" Inherits="Default008_NPOI_01_建立檔案並插入值" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 989px;
            height: 359px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            NPOI
            ：新增一個Excel檔，輸入檔名及Sheet名，以不同方法插入值<br />
            <br />
            首先 需加入參考<br />
            <br />
            加入 &gt; 參考 &gt; 瀏覽 &gt; ASP.NET範例 &gt; 上集 &gt; CH22.NPOI &gt; NPOI 2.1.3.1 binary &gt; dotnet4 &gt; NPOI.dll、NPOI.OOXML.dll<br />
            <br />
            後置程式碼：<br />
            1. 產生Excel檔案<br />
            2. 新增Sheet<br />
            3. 插入值(方法三種)<br />
            4. System.IO<br />
            5. 輸出檔名<br />
            6. 釋放資源<br />
            <br />
            <img alt="" class="auto-style1" src="images/NPOI_01_建立檔案並插入值.png" /><br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
