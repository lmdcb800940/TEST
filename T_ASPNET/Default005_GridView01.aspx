<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default005_GridView01.aspx.cs" Inherits="Default005_GridView01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        限制編輯模式下TextBox的寬度：寫在RowCreated事件裡<br />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" Class="table table-hover table-bordered" EnableModelValidation="True" OnRowCreated="GridView1_RowCreated" OnRowEditing="GridView1_RowEditing">
            <Columns>
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:Button ID="Button2" runat="server" Class="btn btn-sm btn-rounded btn-outline-dark" CommandName="Update" Font-Names="微軟正黑體" Text="更新" />
                        &nbsp;
                        <asp:Button ID="Button3" runat="server" Class="btn btn-sm btn-rounded btn-outline-dark" CommandName="cancel" Font-Names="微軟正黑體" Text="取消" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" Class="btn btn-sm btn-rounded btn-outline-dark" CommandName="Edit" Font-Names="微軟正黑體" Text="編輯" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <div>
        </div>
    </form>
</body>
</html>
