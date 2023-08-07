using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Net.Security;
using conn;

namespace ClinicManagementSystem
{
    public partial class adminCreate : System.Web.UI.Page
    {Database_connection obj=new Database_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"].ToString() == "")
                {
                    Response.Redirect("system_login.aspx");
                }
                Label1.Text = "";
                Label2.Text =Session["user"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
        /*private string GenerateRandomOTP(int iOTPLength, string[] saAllowedCharacters)

        {

            string sOTP = String.Empty;

            string sTempChars = String.Empty;

            Random rand = new Random();

            for (int i = 0; i < iOTPLength; i++)

            {

                int p = rand.Next(0, saAllowedCharacters.Length);

                sTempChars = saAllowedCharacters[rand.Next(0, saAllowedCharacters.Length)];

                sOTP += sTempChars;

            }

            return sOTP;

        }*/

        public void Sendmail(string o)
        {
            try
            {
                SmtpClient smtpClient = new SmtpClient();
            smtpClient.Host = "smtp.office365.com";
            smtpClient.Port = 587;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.Credentials = new System.Net.NetworkCredential("joydip2097@outlook.com", "Joyd!p100");
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.EnableSsl = true;
            MailMessage mailMessage = new MailMessage();
                mailMessage.IsBodyHtml = false;
            mailMessage.Subject = "Email Verification";
            mailMessage.Body = "Hey"+TextBox1.Text+"!Your Admin account ID is:"+o+"use it for logIn";
            string tooaddress = TextBox4.Text;
            mailMessage.To.Add(tooaddress);
            string fromaddress = "joydip2097@outlook.com";
            mailMessage.From=new MailAddress(fromaddress);
          
              //  smtpClient.Send(mailMessage.From.Address,mailMessage.To.ToString(),mailMessage.Subject,mailMessage.Body);
              smtpClient.Send(mailMessage);
            }
            catch(Exception e) 
            {
                Response.Write(e);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            int aid=r.Next();
            if (TextBox2.Text == TextBox3.Text)
            {
                string pwd=obj.Encrypt(TextBox2.Text);
                obj.sqlcmd("insert into admin_info values('" + aid.ToString() + "','" + pwd + "','"+TextBox1.Text+"')");
                Sendmail(aid.ToString());
            }
            else
            {
                Label1.Text = "New password doesn't match.";
            }  
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Write("you are logged out");
        }
    }
}