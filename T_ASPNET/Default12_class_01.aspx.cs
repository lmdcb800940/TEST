using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class T_ASPNET_Default12_class_01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Default_Class_01 cs = new Default_Class_01();
        try
        {
            if (cs.check(TextBox1.Text))
            {
                Response.Write("<script language='javascript'>alert('pass'); </script>");
            }
        }
        catch (Exception ex)
        {
            Response.Write("<script language='javascript'>alert('"+ ex + "'); </script>");
        }
    }
}