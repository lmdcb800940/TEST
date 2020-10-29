<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default008_NPOI_04_FileUpload.aspx.cs" Inherits="Default008_NPOI_04_FileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .style1
        {
            color: #FF0000;
        }
    </style>
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
            1. 限制檔案路徑，開啟檔案<br />
            2. 上傳檔案<br />
            3. 讀取Excel表頭、欄位內容 (判斷是否有包含公式，如果有就只放值)<br />
            4. 資料放進DataTable<br />
            5. 釋放資源<br />
            6. 綁定Gridview<br />
            <br />
            <br />
            請先選取 Excel檔案(Ex: NPOI_Test_Sample_2010.xlsx)，然後再上傳：<br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <span class="style1"><strong>只支援 .xlsx檔的格式（Excel 2007起的新版本）</strong></span><br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
