using System;
using System.Collections.Generic;
using System.Linq;
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

public partial class Default008_NPOI_01_建立檔案並插入值 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Clear();  //20200309需加入此列才OK
        Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
        //20200309需加入此列才OK

        //1. 產生Excel檔案
        //命名空間。using NPOI.XSSF.UserModel;
        //-- XSSF 用來產生Excel 2007檔案（.xlsx）
        IWorkbook workbook = new XSSFWorkbook(); 


        //2. 新增Sheet
        //== 新增試算表。===================================
        //== 生成一個空白的 Excel 檔案，並且添加三個指定名稱的試算表 Sheet

        //沿用 1.2.4的寫法可以產生Excel檔案，但開啟檔案時，會出現一些錯誤
        //workbook.CreateSheet("試算表 Sheet A_20");
        //workbook.CreateSheet("試算表 Sheet B_20");
        //workbook.CreateSheet("試算表 Sheet C_20");

        //-- XSSF 用來產生Excel 2007檔案（.xlsx）
        XSSFSheet worksheet = (XSSFSheet)workbook.CreateSheet("試算表 Sheet A_20");
        //== 輸出Excel 2007檔案。==============================


        //3. 插入值(方法三種)
        //3. 方法一：一格一格插入
        ////==插入資料值。
        ////**** CreateRow()方法，只有這一列的「第一格子」可以這樣用。(v.1.2.4版 的新變化)
        //worksheet.CreateRow(0).CreateCell(0).SetCellValue("000A");
        //worksheet.CreateRow(1).CreateCell(0).SetCellValue("111B");
        //worksheet.CreateRow(2).CreateCell(0).SetCellValue("222C");
        //worksheet.CreateRow(3).CreateCell(0).SetCellValue("333D");
        //worksheet.CreateRow(4).CreateCell(0).SetCellValue("444E");
        //worksheet.CreateRow(5).CreateCell(0).SetCellValue("555F");

        //3. 方法二：新增一列，然後一格一格插入。
        ////**********************************************************(start)
        ////**** v.1.2.4版在此有很大的改變！！！請看 http://tonyqus.sinaapp.com/archives/73  
        //IRow u_Row = worksheet.CreateRow(6);    //== 先用 IRow介面，建立全新的一列。

        //u_Row.CreateCell(1).SetCellValue("6666GG");   //== .CreateCell() 可設定為同一列(Row)的 [第幾個格子]
        //u_Row.CreateCell(2).SetCellValue("7777HH");
        //u_Row.CreateCell(3).SetCellValue("8888II");
        ////**********************************************************(end)

        //3. 方法三：迴圈插入值
        //*** 每一列的第一格、第二格...「起」，必須使用下面寫法才行！！********************************
        int x = 1;
        for (int i = 1; i <= 15; i++)
        {
            IRow u_row = worksheet.CreateRow(i);    // 在工作表裡面，產生一列。
            for (int j = 0; j < 15; j++)
            {
                u_row.CreateCell(j).SetCellValue(x++);     // 在這一列裡面，產生格子（儲存格）並寫入資料。
            }
        }

        ////3. 方法三：迴圈取出GridView的值
        //for (int i = 1; i <= GridView1.Rows.Count; i++)
        //{
        //    IRow u_row = worksheet.CreateRow(i);    // 在工作表裡面，產生一列。
        //    for (int j = 0; j < GridView1.Rows[0].Cells.Count; j++)
        //    {
        //        string strvalue = GridView1.Rows[i - 1].Cells[j].Text.ToString().Trim();
        //        u_row.CreateCell(j).SetCellValue(strvalue);     // 在這一列裡面，產生格子（儲存格）並寫入資料。
        //    }
        //}

        //**********************************************************************************************


        //4. System.IO
        MemoryStream MS = new MemoryStream();   //==需要 System.IO命名空間
        workbook.Write(MS);

        //5. 輸出檔名
        //== Excel檔名，請寫在最後面 filename的地方
        Response.AddHeader("Content-Disposition", "attachment; filename=EmptyWorkbook_2007_1.xlsx");
        Response.BinaryWrite(MS.ToArray());

        //6. 釋放資源
        //== 釋放資源
        workbook = null;   //== VB為 Nothing
        MS.Close();
        MS.Dispose();

        Response.Flush(); //20200309需加入此列才OK
        Response.End();  //20200309需加入此列才OK
    }
}