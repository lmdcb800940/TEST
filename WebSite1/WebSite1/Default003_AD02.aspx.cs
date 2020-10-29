using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.DirectoryServices; //需加入參考。AD使用

public partial class WebSite1_WebSite1_Default003_AD02 : System.Web.UI.Page
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

        SearchResultCollection results = ds.FindAll(); //查詢結果存放至 SearchResultCollection 集合


        if (results != null)
        {
            //列出屬性
            #region
            foreach (SearchResult result in results)
            {
                //Response.Write(result.Path +"</br>");

                ResultPropertyCollection rpc = result.Properties;
                string[] properties = { "sAMAccountName", "displayname", "departmnet", "objectcategory" };

                if (result.Properties[properties[0]].Count > 0)
                {
                    Response.Write(string.Format("{0}={1}", properties[0], result.Properties[properties[0]][0]));
                }

                if (result.Properties[properties[1]].Count > 0)
                {
                    Response.Write(string.Format("{0}={1}", properties[1], result.Properties[properties[1]][0])); //顯示名稱
                }

                if (result.Properties[properties[2]].Count > 0)
                {
                    Response.Write(string.Format("{0}={1}", properties[2], result.Properties[properties[2]][0])); //部門
                }

                if (result.Properties[properties[3]].Count > 0)
                {
                    Response.Write(string.Format("{0}={1}", properties[3], result.Properties[properties[3]][0]));
                }
            }

            #endregion


            //列出所有屬性
            #region
            foreach (SearchResult result in results)
            {
                ResultPropertyCollection rpc = result.Properties;
                foreach (string key in rpc.PropertyNames)
                {
                    foreach (object value in rpc[key])
                    {
                        Response.Write(string.Format("{0}={1}", key, value) + "</br>");
                    }
                }
            }


            #endregion
        }

    }
}