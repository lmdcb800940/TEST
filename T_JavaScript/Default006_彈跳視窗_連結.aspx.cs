using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TEST_Default006_彈跳視窗_連結 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script language='javascript'>alert('頁面轉向囉~'); location.href='../../Default001_Layout_Grid01.aspx';</script>");
    }
}