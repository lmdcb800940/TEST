using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.IO; //檔案讀寫

public partial class T_ASPNET_Default010_File_txt_01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (File.Exists("C:\\Users\\peggy.liou\\Documents\\VS\\測試區\\TEST\\File\\Default010_File_txt_01.txt"))
        {
            //--註解：先檢查一下，看看這個檔案是否存在？
            //-- File.Exists()方法不使用於路徑驗證，這個方法僅會檢查「指定的檔案是否存在」。
            Response.Write("<font color=red>*** C:\\Users\\peggy.liou\\Documents\\VS\\測試區\\TEST\\File\\Default010_File_txt_01.txt 檔案的確存在！***</font>");

            return;  //--註解：檔案已經存在，就不會執行下面的寫入動作。
        }

        //如果檔案不存在，就會建立一個檔案
        //將文字寫入現有的檔案（Default010_File_txt_01.txt）中(s)-------------------------------------------------------------------------
        using (StreamWriter sw = new StreamWriter("C:\\Users\\peggy.liou\\Documents\\VS\\測試區\\TEST\\File\\Default010_File_txt_01.txt")) //建立文字檔
        {
            sw.Write("大家好，");
            sw.WriteLine("這是一段測試文字！");
            //--註解： .WriteLine方法會自動換行。

            sw.WriteLine("================");

            sw.Write("The date is: ");
            sw.WriteLine(DateTime.Now);
            sw.WriteLine(DateTime.Now.ToShortDateString());
            // .ToShortDateString()會出現短日期，如2008/10/10

            sw.Close();
            Response.Write("<hr>執行成功，請檢查您的硬碟，有無此檔案 --  C:\\Users\\peggy.liou\\Documents\\VS\\測試區\\TEST\\File\\Default010_File_txt_01.txt");
        }
        //將文字寫入現有的檔案（Default010_File_txt_01.txt）中(e)-------------------------------------------------------------------------
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        using (StreamReader sr = new StreamReader("C:\\Users\\peggy.liou\\Documents\\VS\\測試區\\TEST\\File\\Default010_File_txt_01.txt"))
        {
            string my_line;

            do  //註解： do...while迴圈
            {    //先執行第一次，然後依照 while的條件，看看要不繼續做下去？
                my_line = sr.ReadLine();        //--註解：一次讀取一行。
                Response.Write("<font color=red>" + my_line + "</font><br>");
            } while (my_line != null);

            sr.Close();
        }
    }
}