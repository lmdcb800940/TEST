using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO; //檔案讀寫

public partial class T_ASPNET_Default010_File_txt_05_counter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //讀取檔案 (務必修改這個檔案的權限，需要「寫入」的權限)
        StreamReader sr = new StreamReader("C:\\Users\\peggy.liou\\Documents\\VS\\測試區\\TEST\\File\\counter.txt");

        //把檔案內, 原本的訪客人數[加一]
        string visitors = sr.ReadLine();
        visitors = Convert.ToString(Convert.ToInt32(visitors) + 1);
        sr.Close();
        sr.Dispose();


        //寫入檔案
        StreamWriter sw = new StreamWriter("C:\\Users\\peggy.liou\\Documents\\VS\\測試區\\TEST\\File\\counter.txt");
        sw.WriteLine(visitors);
        sw.Close();
        sw.Dispose();

        Label1.Text = visitors;
        
    }
}