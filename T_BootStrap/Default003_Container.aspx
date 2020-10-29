<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default003_Container.aspx.cs" Inherits="T_BootStrap_Default003_Container" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <%--需用拖曳方式--%>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/jquery-3.0.0.min.js"></script>

    <%-- 作用在於文字編碼，改善行動裝置上的顯示效果 --%>
    <%-- 其中viewport與手機優先理念有關，能確保網頁正確顯示手機上 --%>
    <%-- content加入user-scalable=no設定關閉縮放功能，使用者只能捲動網頁瀏覽 --%>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatiible" content="IE=edge" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />

    <title>HELLO</title>
</head>
<body>
    <form id="form1" runat="server">
           <%-- container 須包住網頁內容並套疊網格系統 --%>
        <%-- container：建立容器寬度固定的自適應式網頁，依據裝置的視圖範圍自動添加邊緣 --%>
        <%-- container-fluid：流動完整寬度的容器，填滿整個視圖寬度的容器 --%>
        <div class="container"> 
            <div class="jumbotron">
                <h1>Hello everyone!</h1>
                <p></p>
                <a class="btn btn-primary btn-lg" href="#" role="button">BootStrap</a>
            </div>
        </div>
    </form>
</body>
</html>
