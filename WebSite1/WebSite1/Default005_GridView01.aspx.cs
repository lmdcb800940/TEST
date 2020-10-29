using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class WebSite1_WebSite1_Default005_GridView01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)//第一次執行本程式
        {
            SqlConnection Conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["HRConnectionString"].ConnectionString);
            Conn.Open();
            SqlDataReader dr = null;

            SqlCommand cmd = new SqlCommand("select c_id, c_opening as 職缺, c_name as 姓名, c_phone as 電話, c_resume_no as 履歷 , c_resume_source as 履歷來源, c_state as 邀約結果,c_remark as 備註,c_modify_time as 修改時間,c_modify_user as 修改人,c_create_time as 建立時間 from dbo.mhehr_interview", Conn);
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
        }
    }



    protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
    {
        //編輯模式或隔列，固定TextBox寬度
        if (e.Row.RowState == (DataControlRowState.Edit | DataControlRowState.Alternate) || e.Row.RowState == DataControlRowState.Edit)
        {
            TextBox tb;
            for (int i = 0; i < e.Row.Cells.Count - 1; i++)
            {
                if (e.Row.Cells[i].Controls.Count != 0)
                {
                    tb = e.Row.Cells[i].Controls[0] as TextBox;
                    if (tb != null)
                    {
                        tb.Width = Unit.Pixel(60); //寬度設定
                    }
                }
            }
        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
    }
}