<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default007_jQuery_datepicker_timepicker.aspx.cs" Inherits="WebSite1_WebSite1_Default007_jQuery_datepicker_timepicker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <!-- jQuery -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <link type="text/css" href="http://code.jquery.com/ui/1.9.1/themes/smoothness/jquery-ui.css" rel="stylesheet" />
   
    
    <link href="jQuery-Timepicker-Addon/demos.css" rel="stylesheet" type="text/css" />
    <link href="../../packages/jQuery-Timepicker-Addon-master/jQuery-Timepicker-Addon-master/src/jquery-ui-timepicker-addon.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-1.8.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.9.1/jquery-ui.min.js"></script>
    <script src="../../packages/jQuery-Timepicker-Addon-master/jQuery-Timepicker-Addon-master/dist/jquery-ui-timepicker-addon.js"></script>
    <script src="js/jquery.ui.datepicker-zh-CN.js.js" type="text/javascript" charset="gb2312"></script>
    <script src="js/jquery-ui-timepicker-zh-CN.js" type="text/javascript"></script>


    <script type="text/javascript">
        jQuery(function () {
            // 時間設置
            jQuery('#TextBox1').datetimepicker({
                timeFormat: "HH:mm:ss",
                dateFormat: "yy-mm-dd"
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
