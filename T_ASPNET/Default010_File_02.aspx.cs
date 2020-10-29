using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO; //檔案讀寫


public partial class T_ASPNET_Default010_File_02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] files = Directory.GetFiles("C:\\Users\\peggy.liou\\Desktop\\Temp\\t");
        string[] dirs = Directory.GetDirectories("C:\\Users\\peggy.liou\\Desktop\\Temp\\t");

        foreach(string file in files)
        {
            file.
        }
    }
}