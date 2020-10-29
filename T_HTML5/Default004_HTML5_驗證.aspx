<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default004_HTML5_驗證.aspx.cs" Inherits="TEST_Default004_HTML5_驗證" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              HTML5<br />
            <br />
            驗證TextBox格式<br />
            <br />
            1. 必須加入：Required<br />
            <br />
            2. title：顯示訊息<br />
            <br />
            3. pattern：限制條件<br />
            <br />
            &lt;asp:TextBox ID=&quot;TextBox1&quot; runat=&quot;server&quot; required title=&quot;只能輸入大寫英文字&quot; pattern=&quot;[A-Z]+&quot;&gt;&lt;/TextBox&gt;<br />
            <br />
            <br />
            只能填寫大寫英文：<asp:TextBox ID="TextBox1" runat="server" required title="只能輸入大寫英文字" pattern="[A-Z]+"></asp:TextBox>
            <br />
            <br />
            只能輸入特定格式的電話號碼：<asp:TextBox ID="TextBox2" runat="server" required title="請重新輸入。例如: XXXX-XXXXXXX 或 XX-XXXXXXX" pattern="^(\d{4}-)\d{6}$|^(\d{2}-)\d{7}$"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
