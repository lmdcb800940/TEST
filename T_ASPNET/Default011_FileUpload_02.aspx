<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default011_FileUpload_02.aspx.cs" Inherits="T_ASPNET_Default011_FileUpload_02" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .style3
        {
            color: #003399;
            font-weight: bold;
        }
        .style5
        {
            color: #003399;
        }
        .style4
        {
            background-color: #FFFF00;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            FileUpload 檔案上傳<br />
            <br />
            先開啟(建立) 目錄，程式才會上傳：C:\\Users\\peggy.liou\\Documents\\VS\\測試區\\TEST\\File\\<br />
            <br />
            <span class="style3">本程式會先檢查SERVER上面，是否已經有同名的檔案?</span><br />
            <span class="style5">檔名相同的話，目前上傳的檔名（如：abc.gif），前面會用數字來代替（如：<span class="style4">2_</span>abc.gif）。 </span>
            <br />
            <br />
            請先選取檔案，然後再上傳：<br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上傳" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
