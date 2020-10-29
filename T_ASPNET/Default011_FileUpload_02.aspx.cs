using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class T_ASPNET_Default011_FileUpload_02 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //參考資料：http://msdn.microsoft.com/zh-tw/library/system.web.ui.webcontrols.fileupload.saveas.aspx
        //註解：先設定好檔案上傳的路徑，這是Web Server電腦上的硬碟「實際」目錄。
        String savePath = "C:\\Users\\peggy.liou\\Documents\\VS\\測試區\\TEST\\File";

        if (FileUpload1.HasFile)
        {
            string filename = FileUpload1.FileName; //-- User上傳的完整檔名（不包含 Client端的路徑！）
            // 想抓到「主檔名」，請寫成 System.IO.Path.GetFileNameWithoutExtension(fileName);
            // 想抓到「副檔名」，請寫成 System.IO.Path.GetExtension(fileName);

            string path_to_check = Path.Combine(savePath, filename);
            string tempfilename = "";

            if (System.IO.File.Exists(path_to_check))
            {
                int my_counter = 2;
                while (System.IO.File.Exists(path_to_check))
                {
                    //路徑與檔名都相同的話，目前上傳的檔名（改成 tempfileName），主檔名 "前面" 用數字代替。
                    tempfilename = my_counter.ToString() + "_" + filename;   // 修正後的「新檔名」

                    path_to_check = Path.Combine(savePath, tempfilename);
                    my_counter++;
                }
                Label1.Text = "抱歉，您上傳的檔名發生衝突，檔名修改如下" + "<br />" + tempfilename;
            }
            else
            {
                tempfilename = filename;
            }
            //完成檔案上傳。
            FileUpload1.SaveAs(path_to_check);
            Label1.Text = "上傳成功，檔名---- " + tempfilename;
        }
        else
        {
            Label1.Text = "請先挑選檔案之後，再來上傳";
        }



    }
}