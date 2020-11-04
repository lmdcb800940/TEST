<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default008_Breadcrumb_01.aspx.cs" Inherits="T_BootStrap_Default008_Breadcrumb_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            BootStrap
            <br />
            <br />
            麵包屑：基於網站層次顯示資訊的導航方式<br />
            <br />
            參考書籍：響應式網頁設計驚嘆號
                <br />
            <br />
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Home </a></li>
                    <li class="breadcrumb-item"><a href="Default004_Row_Col_01">Library </a></li>
                    <li class="breadcrumb-item active " aria-controls="page">Data</li>
                </ol>
            </nav>
        </div>
    </form>
</body>
</html>
