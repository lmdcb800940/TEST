using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.DirectoryServices; //需加入參考。AD使用
using System.Drawing;

public partial class TEST_Default003_AD01 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string ad_id = TextBox1.Text;
        string ad_ps = TextBox2.Text;


        DirectoryEntry ent = new DirectoryEntry("LDAP://mhe.com.tw/dc=mhe,dc=com,dc=tw", ad_id, ad_ps); //網域名稱 , 以 "."為分隔 ,接續帳號,密碼

        DirectorySearcher ds = new DirectorySearcher(ent); //建立 搜尋 AD的物件。利用 DirectorySearcher 類別來對 Active Directory 進行查詢

        ds.Filter = "(sAMAccountName=" + ad_id + ")"; //設立條件 , 這裡是找帳號與輸入ID一樣
        ds.PropertiesToLoad.Add("department"); //搜尋期間要擷取的屬性清單
        ds.SearchScope = SearchScope.Subtree;  //伺服器觀察的搜尋範圍
                                               //userPrincipalName,sn,givenName,displayName, userPrincipalName,


        try
        {
            SearchResult sr = ds.FindOne(); //搜尋到的第一個物件
            if (sr == null)
            {
                Response.Write("找不到帳號");
            }
            else
            {
                string[] atestarr = { "sn", "givenName", "userPrincipalName", "displayName", "userPrincipalName", "department" };
                //姓,名,帳戶,顯示名稱,信箱,部門

                for (int i = 0; i < atestarr.Length; i++)
                {
                    if (sr.GetDirectoryEntry().Properties[atestarr[i]].Value == null)
                    {
                        Response.Write("null <br/>");
                    }
                    else
                    {
                        Response.Write(sr.GetDirectoryEntry().Properties[atestarr[i]].Value + "<br/>");
                    }
                }

            }
        }
        catch (Exception ex)
        {
            Response.Write("使用者名稱或密碼不正確");
            Response.Write(ex);
        }

    }
}