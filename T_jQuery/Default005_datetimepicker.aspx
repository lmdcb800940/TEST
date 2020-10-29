<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default005_datetimepicker.aspx.cs" Inherits="T_jQuery_Default005_datetimepicker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.5.1.min.js"></script>
    <script src="../Scripts/moment.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    
    <!-- jQuery -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <link rel="stylesheet" href="/resources/demos/style.css"/>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <!-- jQuery-DateTimePicker -->
    <link href="packages/datetimepicker-master/jquery.datetimepicker.css" rel="stylesheet" />
    <script src="packages/datetimepicker-master/jquery.js"></script>
    <script src="packages/datetimepicker-master/build/jquery.datetimepicker.full.min.js"></script>

    <link href="../packages/jQuery_datetimepicker-master/jquery.datetimepicker.css" rel="stylesheet" />
    <script src="../packages/jQuery_datetimepicker-master/jquery.js"></script>
    <script src="../packages/jQuery_datetimepicker-master/build/jquery.datetimepicker.full.min.js"></script>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
    </form>
    <script type="text/javascript">
        jQuery('#TextBox1').datetimepicker();
    </script>
    
</body>
</html>
