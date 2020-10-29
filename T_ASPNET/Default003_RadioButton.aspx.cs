using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.ServiceModel.Channels;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class T_ASPNET_Default003_RadioButton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Text = gsrb(RadioButton1, RadioButton2, RadioButton3);
    }
    private string gsrb(params RadioButton[] radioButtonGroup)
    {
        string str_rb = " ";
        for (int i = 0; i < radioButtonGroup.Length; i++)
        {
            if (radioButtonGroup[i].Checked)
            {
                str_rb = radioButtonGroup[i].ID.Substring(radioButtonGroup[i].ID.Length - 1, 1); ; //取ID最右邊的字元
                return str_rb;
                //return radioButtonGroup[i].Text;
            }
        }
        return str_rb;
        //return null;
    }
       

    protected void Button1_Click(object sender, EventArgs e)
    {
        string[] arr1 = new string[2];
        arr1[0] = gsrb(RadioButton1, RadioButton2, RadioButton3);
        arr1[1] = gsrb(RadioButton4, RadioButton5, RadioButton6);

        string[] arr2 = new string[] { "項目一" , "項目二"};
        int tmp = 2;
        
        for (int i = 0; i < arr1.Length; i++)
        {
            if (arr1[i] == " ")
            {
                Response.Write("<script language='javascript'>alert('請選擇「" + arr2[i] + "」選項'); </script>");
               
            }
            else
            {
                tmp--;
                switch (i)
                {
                    case 0:
                        Label1.Text = gsrb(RadioButton1, RadioButton2, RadioButton3);
                        break;
                    case 1:
                        Label2.Text = gsrb(RadioButton4, RadioButton5, RadioButton6);
                        break;
                }
            }
        }
        if (tmp == 0)
        {
            Label3.Text = "OK";
        }
        

       
    }

    
}



   
       