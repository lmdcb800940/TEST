<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default001_FancyBox_01.aspx.cs" Inherits="T_AJAX_Default001_FancyBox_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="fancybox-master/dist/jquery.fancybox.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.5.1.min.js"></script>
    <script src="fancybox-master/dist/jquery.fancybox.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a href="https://source.unsplash.com/IvfoDk30JnI/1500x1000" data-fancybox data-caption="">
                <img src="https://source.unsplash.com/IvfoDk30JnI/240x160" />
            </a>
            
            <asp:HyperLink ID="HyperLink1" runat="server" data-fancybox data-caption="" >
                <asp:Image ID="Image1" runat="server" />
            </asp:HyperLink>
        </div>
    </form>
</body>
</html>
