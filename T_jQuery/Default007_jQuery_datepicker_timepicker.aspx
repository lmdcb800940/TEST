<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default007_jQuery_datepicker_timepicker.aspx.cs" Inherits="Default007_jQuery_datepicker_timepicker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <!-- jQuery -->
   
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <link type="text/css" href="http://code.jquery.com/ui/1.9.1/themes/smoothness/jquery-ui.css" rel="stylesheet" />
 
    <script src="../packages/jQuery-Timepicker-Addon-master/jQuery-Timepicker-Addon-master/src/jquery-ui-timepicker-addon.js"></script>


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
        <div>
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
