<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default003_RadioButton.aspx.cs" Inherits="T_ASPNET_Default003_RadioButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            RadioButton<br />
            <br />
            <br />
            1. 項目一<br />
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gp1" Text="rb1"/>
            <br />
            <br />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gp1" Text="rb2"/>
            <br />
            <br />
            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="gp1" Text="rb3"/>
            <br />
            <br />
            2. 項目二<br />
            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="gp2" />
            <br />
            <br />
            <asp:RadioButton ID="RadioButton5" runat="server" GroupName="gp2"  />
            <br />
            <br />
            <asp:RadioButton ID="RadioButton6" runat="server" GroupName="gp2"  />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
