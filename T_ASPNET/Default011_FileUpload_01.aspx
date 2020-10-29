<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default011_FileUpload_01.aspx.cs" Inherits="T_ASPNET_Default011_FileUpload_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            FileUpload 檔案上傳<br />
            <br />
            先開啟(建立) 目錄，程式才會上傳：C:\\Users\\peggy.liou\\Documents\\VS\\測試區\\TEST\\File\\ (路徑寫法有三種)<br />
            <br />
            System.IO<strong>.Path.Combine()</strong><br />
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
