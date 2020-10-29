<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default010_File_txt_03_append.aspx.cs" Inherits="T_ASPNET_Default010_File_txt_03_append" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .style1
        {
            color: #FF0000;
            font-weight: bold;
        }
    </style>
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
            1. 檔案是否存在(如果是則不動作；否則建立新檔案)<br />
            <br />
            2. 建立新檔案 開啟 並<span class="style1">附加</span>資訊至檔案結尾。<br />
        </div>
    </form>
</body>
</html>
