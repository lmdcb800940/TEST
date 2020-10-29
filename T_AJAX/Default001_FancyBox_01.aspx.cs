using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class T_AJAX_Default001_FancyBox_01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.NavigateUrl = "~/images/" + "login_logo.png";
        Image1.ImageUrl = "~/images/" + "logo.png";
    }
}