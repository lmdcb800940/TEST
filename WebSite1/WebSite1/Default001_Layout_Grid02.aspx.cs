using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default001_Layout_Grid02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

   
    //管理者
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button2.Visible = false; //管理者
        Button1.Visible = false; //一般使用者
        Label1.Visible = true;
        Label2.Visible = true;
        TextBox1.Visible = true; //帳號
        TextBox2.Visible = true; //密碼
        Button3.Visible = true; //登入
        Button4.Visible = true; //取消
    }

    //取消
    protected void Button4_Click(object sender, EventArgs e)
    {
        Button2.Visible = true; //管理者
        Button1.Visible = true; //一般使用者
        Label1.Visible = false;
        Label2.Visible = false;
        TextBox1.Visible = false; //帳號
        TextBox2.Visible = false; //密碼
        Button3.Visible = false; //登入
        Button4.Visible = false; //取消


    }
}