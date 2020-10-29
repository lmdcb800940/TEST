<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default006_jQuery_timepicker.aspx.cs" Inherits="T_jQuery_Default006_jQuery_timepicker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <%--<link href="../packages/clockpicker-gh-pages/src/clockpicker.css" rel="stylesheet" />--%>
<%--    <link href="../packages/clockpicker-gh-pages/dist/bootstrap-clockpicker.css" rel="stylesheet" />--%>
    <script src="../packages/clockpicker-gh-pages/assets/js/jquery.min.js"></script>
    <script src="../packages/clockpicker-gh-pages/assets/js/bootstrap.min.js"></script>
    <link href="../packages/clockpicker-gh-pages/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="../packages/clockpicker-gh-pages/dist/jquery-clockpicker.css" rel="stylesheet" />
    <script src="../packages/clockpicker-gh-pages/dist/jquery-clockpicker.min.js"></script>
     <script type="text/javascript">
        jQuery(function () {
            // 時間設置
            jQuery('#TextBox1').clockpicker({
                autoclose: true
                //timeFormat: "HH:mm:ss",
                //dateFormat: "yy-mm-dd"
            });
        });
    </script>

   
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
