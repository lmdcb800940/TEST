<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default007_jQuery_RadioButton取消選取.aspx.cs" Inherits="Default007_jQuery_RadioButton取消選取" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    
    <script type="text/javascript"> 
    $("#r1").change(function() { 
     if ($("#r1").attr("checked")) { 
      $('#r1edit:input').removeAttr('disabled'); 
     } 
     else { 
      $('#r1edit:input').attr('disabled', true); 
     } 
    }); 
</script> 
</head>
<body>
    <form id="form1" runat="server">
        <div>
            RadioButton再次點選就取消選取<br />
            <br />
            <br />
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>選項1</asp:ListItem>
                <asp:ListItem>選項2</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </form>
</body>
</html>
