using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebSite1_WebSite1_Default006_JS_彈跳視窗_連結 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script language='javascript'>alert('頁面轉向囉~'); location.href='../../efault001_Layout_Grid01.aspx';</script>");
    }
}