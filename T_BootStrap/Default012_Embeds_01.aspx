<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default012_Embeds_01.aspx.cs" Inherits="T_BootStrap_Default012_Embeds_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.5.1.min.js"></script>
    <script src="../Scripts/bootstrap.bundle.min.js"></script>
</head>
<body>
    <p>
        BootStrap
            <br />
        <br />
        內嵌</p>
    <p>
        &nbsp;</p>
    <p>
        將影片網址嵌入網頁中</p>
    <p>
        Youtube &gt; 分享 &gt; 嵌入影片 &gt; 複製網址<br />
        <br />
        參考書籍：響應式網頁設計驚嘆號
    </p>
    <p>
        &nbsp;
    </p>
    <p>
        &nbsp;
    </p>
    <form id="form1" runat="server">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" width="560" height="315" src="https://www.youtube.com/embed/f9PY8hmrJik" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
    </form>
</body>
</html>
