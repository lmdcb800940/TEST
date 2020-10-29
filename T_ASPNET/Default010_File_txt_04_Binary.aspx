<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default010_File_txt_04_Binary.aspx.cs" Inherits="T_ASPNET_Default010_File_txt_04_Binary" %>

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
            路徑：C:\\Users\\peggy.liou\\Documents\\VS\\測試區\\TEST\\File<a href="file://txt_01.txt">\\txt_01.txt</a><br />
            <br />
            1. 檢查檔案是否存在 (如果存在顯示錯誤訊息)<br />
            <br />
            2. 寫入文字(程式執行失敗，待測試)<br />
            <br />
            3. 讀取文字<br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
