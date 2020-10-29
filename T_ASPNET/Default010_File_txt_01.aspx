<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default010_File_txt_01.aspx.cs" Inherits="T_ASPNET_Default010_File_txt_01" %>

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
            路徑：C:\\Users\\peggy.liou\\Documents\\VS\\測試區\\TEST\\File<a href="file://Default010_File_txt_01.txt">\\Default010_File_txt_01.txt</a><br />
            <br />
            1. 檢查文字檔是否存在<br />
            <br />
            2. 寫入：將文字寫入現有的檔案中<br />
            <br />
            3. 讀取：用do...while迴圈讀取檔案內容<br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="寫入" />
&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="讀取" />
        </div>
    </form>
</body>
</html>
