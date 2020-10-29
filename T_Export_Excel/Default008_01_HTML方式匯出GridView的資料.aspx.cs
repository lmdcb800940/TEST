using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Default008_01_HTML方式匯出GridView的資料 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)//第一次執行本程式
        {
            //連線資料庫 讀取最新時間的前10筆資料(start)-----------------------------------------------------
            SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString);
            Conn.Open();
            SqlDataReader dr = null;
            string sqlstr = "select top(10) c_id as 序號, c_name as 姓名, c_opening as 職缺, i_time as 面試時間, r_time as 報到時間, a_state as 狀態, a_progress as 進度,c_modify_user as 修改人, c_modify_time as 修改時間 from HR_interview order by c_modify_time desc"; //200804：新增「修改人」查詢欄位。BY PEGGY
            SqlCommand cmd = new SqlCommand(sqlstr, Conn);
            dr = cmd.ExecuteReader();

            GridView1.DataSource = dr;
            GridView1.DataBind();

            if (dr != null)
            {
                cmd.Cancel();
                dr.Close();
            }

            if (Conn.State == ConnectionState.Open)
            {
                Conn.Close();
            }
            //連線資料庫 讀取最新時間的前10筆資料(end)---------------------------------------------------------
        }
    }

   

    //因為Excel匯出會有「System.Web.HttpException: '型別 'GridView' 的控制項 'GridView1' 必須置於有 runat=server 的表單標記之中。」錯誤訊息，需加入下列程式碼才可解決問題
    public override void VerifyRenderingInServerForm(Control control) { }

    //200804：新增「匯出」功能。BY PEGGY
    //匯出：讀取GridView，將資料複製至Excel
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView gv = (GridView)FindControl("GridView1"); //輸入GridView的名稱
        string style = "<style> .text { mso-number-format:\\@; } </script> ";
        System.IO.StringWriter sw = new System.IO.StringWriter();
        System.Web.UI.HtmlTextWriter hw = new System.Web.UI.HtmlTextWriter(sw);
        Response.Clear();
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + DateTime.Now.ToString("yyyyMMdd") + ".xls");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/vnd.ms-excel";
        Response.Write("<meta http-equiv=Content-Type content=text/html;charset=utf-8>");
        gv.RenderControl(hw);
        Response.Write(style);
        Response.Write(sw.ToString().Replace("<div>", "").Replace("</div>", ""));
        Response.End();
    }
}