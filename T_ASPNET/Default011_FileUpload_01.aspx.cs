using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class T_ASPNET_Default011_FileUpload_01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //-- 註解：先設定好檔案上傳的路徑，這是Web Server電腦上的目錄。
        //       C#語法在撰寫磁碟的目錄位置時，請留意以下的寫法：
        //********************************************************
        //String savePath = "d:\\temp\\uploads\\";
        //********************************************************
        //** 如果您少寫了目錄最後一個 \ 符號，那就慘了
        //** 例如寫成這樣會報錯！ "d:\\temp\\uploads"，因為後面 .SaveAs()方法要結合「路徑與檔名」兩者。

        //路徑寫法---
        //方法一：
        String savePath = "C:\\Users\\peggy.liou\\Documents\\VS\\測試區\\TEST\\File";
        // 或是寫成 String savePath = @"C:\Users\peggy.liou\Documents\VS\測試區\TEST\File";


        //方法二：
        //--網站上的 URL路徑。 Server.MapPath() 轉換成Web Server電腦上的硬碟「實體」目錄。
        //對應與程式所在位置的同一層資料夾
        //string savePath = Server.MapPath("File/");   // 後面的「反斜線」，千萬不要忘記！


        if (FileUpload1.HasFile)
        {
            string filename = FileUpload1.FileName; //-- User上傳的完整檔名（不包含 Client端的路徑！）

            // 舊的寫法  // savePath = savePath + fileName;
            savePath = System.IO.Path.Combine(savePath, filename);
            // https://msdn.microsoft.com/zh-tw/library/fyy7a5kt(v=vs.110).aspx
            //******************************************************************
            FileUpload1.SaveAs(savePath);

            Label1.Text = "上傳成功，檔名---- " + filename;
        }
        else
        {
            Label1.Text = "請先挑選檔案之後，再來上傳";
        }

    }
}