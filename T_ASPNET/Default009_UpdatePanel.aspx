<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default009_UpdatePanel.aspx.cs" Inherits="Default009_UpdatePanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%=DateTime.Now.ToString() %>
            UpdatePanel<br />
            <br />
            局部更新<br />
            <br />
            需搭配ScriptManager，並且須放在UpdatePanel前面<br />
            <br />
            UpdatePanel預設模式為Always(兩個UpdatePanel都會更新)，設定成UpdateMode=&quot;Conditional&quot; 則需Trigger觸發才會更新該UpdatePanel<br />
            <br />
            <br />
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    UpdatePanel01<br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <%=DateTime.Now.ToString() %>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Button" />
                    <br />
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    UpdatePanel02<br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <%=DateTime.Now.ToString() %>
                    <br />
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
