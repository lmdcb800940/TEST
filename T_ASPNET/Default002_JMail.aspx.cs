using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using jmail;

public partial class T_ASPNET_Default002_JMail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Message jmail = new Message();
        jmail.From = "mheit";
        jmail.AddRecipient("peggy.liou@mhe.com.tw", null, null);
        jmail.MailServerUserName = "mheit";
        jmail.MailServerPassWord = "tiehm159852";
        jmail.Subject = "jmail c#";
        jmail.Send("mail.mhe.com.tw", false);
    }

   public static bool send_mail(string Tomail,string subject,string body)
    {
        
        string smtp_server = "mail.mhe.com.tw"; //發送信箱的SMTP伺服器
        string from_mail = "mheit";     //發送信件的信箱帳號
        string from_mail_pass = "tiehm159852"; //發送信件的信箱密碼

        try
        {
            jmail.Message jmail = new jmail.Message();
            jmail.From = from_mail;
            jmail.AddRecipient(Tomail, null, null);
            jmail.MailServerUserName = from_mail;
            jmail.MailServerPassWord = from_mail_pass;
            jmail.Subject = subject;
            jmail.Body = body;
            jmail.Charset = "GB2312";
            jmail.ContentType = "text/html";
            jmail.Send(smtp_server, false);
            jmail.Close();
            
            
            return true;
        }
        catch
        {
            return false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (send_mail("peggy.liou@mhe.com.tw", "test", "test"))
        {
            Response.Write("<script language='javascript'>confirm('已寄信!');</script>");
        }
    }
}