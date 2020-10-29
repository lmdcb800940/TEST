<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default006_DateTimePicker.aspx.cs" Inherits="T_BootStrap_Default006_DateTimePicker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../Scripts/jquery-3.5.1.min.js"></script>
    <script src="../Scripts/moment.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/bootstrap-datetimepicker.min.js"></script>
    <link href="../packages/bootstrap-datetimepicker-master/build/css/bootstrap-datetimepicker.css" rel="stylesheet" />
    <%--<link href="../packages/bootstrap-datetimepicker-master/build/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />--%>
    <link href="../packages/bootstrap-datetimepicker-master/build/css/bootstrap-datetimepicker-standalone.css" rel="stylesheet" />
    <link href="../packages/glyphicons-only-bootstrap-master/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       
    </form>
     <div class="container">
    <div class="row">
        <div class='col-sm-6'>
            <div class="form-group">
                <div class='input-group date' id='datetimepicker1'>
                    <input type='text' class="form-control" />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker();
            });
        </script>
    </div>
</div>
</body>
</html>
