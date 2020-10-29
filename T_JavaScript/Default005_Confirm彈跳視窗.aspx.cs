using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class T_JavaScript_Default005_Confirm彈跳視窗 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Attributes.Add("onclick ", "return confirm( '確定要刪除嗎');");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "確認";

    }
}