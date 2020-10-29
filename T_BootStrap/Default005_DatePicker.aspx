<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default005_DatePicker.aspx.cs" Inherits="T_BootStrap_Default005_DatePicker" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <%--<link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css" rel="stylesheet"/>--%>
    <%--<link rel="stylesheet" type="text/css" media="screen"href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css"/>--%>
   
     <link href="../Content/bootstrap-datetimepicker.min-.css" rel="stylesheet" />
   <%-- <link href="../Content/bootstrap-combined.min.css" rel="stylesheet" />--%>
    <link href="../Content/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    

</head>
<body>
    <form id="form1" runat="server">
      <div id="datetimepicker" class="input-append date">
      <input type="text"/>
      <span class="add-on">
        <i data-time-icon="icon-time" data-date-icon="icon-calendar"></i>          
      </span>
    </div>

    </form>

    <script type="text/javascript"
     src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js">
    </script> 
    <script type="text/javascript"
     src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js">
    </script>
    <script type="text/javascript"
     src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js">
    </script>
    <script type="text/javascript"
     src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.pt-BR.js">
    </script>
    <script type="text/javascript">
        $('#datetimepicker').datetimepicker({
            format: 'dd/MM/yyyy hh:mm:ss',
            language: 'pt-BR'
        });
    </script>
</body>
</html>
