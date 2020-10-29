<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default005_GridView01.aspx.cs" Inherits="WebSite1_WebSite1_Default005_GridView01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <!-- BootStrap -->
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.js"></script>
    <script src="Scripts/bootstrap.js"></script>


</head>
<body>
    <form id="form1" runat="server">
        <div>
            限制編輯模式下TextBox的寬度：寫在RowCreated事件裡<br />
            <br />
            <br />
            <asp:GridView ID="GridView1"  Class="table table-hover table-bordered" runat="server" EnableModelValidation="True" OnRowCreated="GridView1_RowCreated" OnRowEditing="GridView1_RowEditing">
                <Columns>
                    <asp:TemplateField>
                        <EditItemTemplate>
                            <asp:Button ID="Button2" runat="server" Class="btn btn-sm btn-rounded btn-outline-dark" CommandName="Update" Text="更新" Font-Names="微軟正黑體"/>
                            &nbsp;
                            <asp:Button ID="Button3" runat="server" Class="btn btn-sm btn-rounded btn-outline-dark" CommandName="cancel" Text="取消" Font-Names="微軟正黑體" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" Class="btn btn-sm btn-rounded btn-outline-dark" CommandName="Edit" Text="編輯" Font-Names="微軟正黑體" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
