using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//===============================
// NPOI 2.0的命名空間與 .DLL檔案（加入參考） ----
//     HSSF（Excel 2003）, XSSF（Excel 2007）, XWPF（Word 2007）。 
using NPOI.HSSF.UserModel;   //-- HSSF 用來產生Excel 2003檔案（.xls）
using NPOI.XSSF.UserModel;   //-- XSSF 用來產生Excel 2007檔案（.xlsx）

using NPOI.SS.UserModel;    //-- v.1.2.4起 新增的。
using System.IO;
//===============================

public partial class WebSite1_WebSite1_Default008_NPOI_01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Clear();  //20200309需加入此列才OK
        Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
        //20200309需加入此列才OK



        //命名空間。using NPOI.XSSF.UserModel;
        IWorkbook workbook = new XSSFWorkbook(); //-- XSSF 用來產生Excel 2007檔案（.xlsx）

        //== 新增試算表。===================================
        //== 生成一個空白的 Excel 檔案，並且添加三個指定名稱的試算表 Sheet

        //沿用 1.2.4的寫法可以產生Excel檔案，但開啟檔案時，會出現一些錯誤
        //workbook.CreateSheet("試算表 Sheet A_20");
        //workbook.CreateSheet("試算表 Sheet B_20");
        //workbook.CreateSheet("試算表 Sheet C_20");

        //-- XSSF 用來產生Excel 2007檔案（.xlsx）
        XSSFSheet worksheet = (XSSFSheet)workbook.CreateSheet("試算表 Sheet A_20");

        //== 輸出Excel 2007檔案。==============================

        MemoryStream MS = new MemoryStream();   //==需要 System.IO命名空間
        workbook.Write(MS);

        //== Excel檔名，請寫在最後面 filename的地方
        Response.AddHeader("Content-Disposition", "attachment; filename=EmptyWorkbook_2007_1.xlsx");
        Response.BinaryWrite(MS.ToArray());

        //== 釋放資源
        workbook = null;   //== VB為 Nothing
        MS.Close();
        MS.Dispose();

        Response.Flush(); //20200309需加入此列才OK
        Response.End();  //20200309需加入此列才OK

    }
}