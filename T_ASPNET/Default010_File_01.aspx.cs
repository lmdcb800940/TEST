using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO; //檔案讀寫

public partial class T_ASPNET_Default010_File_01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DirectoryInfo dir = new DirectoryInfo("C:\\Users\\peggy.liou\\Desktop\\Temp\\t");

        FileInfo[] file_arr = dir.GetFiles();
        //  .GetFiles() 從目前的目錄，取回檔案清單。

        Response.Write(dir.Name + "<hr>");

        foreach (FileInfo fi in file_arr)    //--註解：fi 個別的檔案。
        {
            Response.Write("檔案： " + fi.Name);
            Response.Write(" ----大小：" + fi.Length + "<br>");
            if (fi.Name.Contains("1"))
            {
                //fi.Delete(); //刪除檔案
            }
        }
    }
}