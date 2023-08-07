using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using conn;
using System.Net;
using System.Net.Mail;

namespace ClinicManagementSystem
{
    public partial class Register_admin : System.Web.UI.Page
    {
        Database_connection con=new Database_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Label1.Text = "";
            }
        }

        /*protected void Button3_Click(object sender, EventArgs e)
        {
            string[] allowedChars = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" };
            string otp = con.GenerateRandomOTP(4, allowedChars);
            Session["otp"]=otp;
            Sendmail(otp);
        }*/

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pwd=con.Encrypt(TextBox2.Text);
        
                if (TextBox2.Text == TextBox3.Text)
                {
                    con.sqlcmd("insert into systemAdmin values('" + TextBox1.Text + "','" + pwd+ "')");
                    Response.Redirect("system_login.aspx");
                }
                else
                {
                    Label1.Text = "New password doesn't match.";
                }
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                
            
            
        }

        /*public void Sendmail(string o)
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
                mailMessage.Subject = "OTP Verification";
                mailMessage.Body = TextBox1.Text + "Your Admin verification OTP is:" + o;
                string tooaddress = TextBox2.Text;
                mailMessage.To.Add(tooaddress);
                string fromaddress = "joydip2097@outlook.com";
                mailMessage.From = new MailAddress(fromaddress);

                //  smtpClient.Send(mailMessage.From.Address,mailMessage.To.ToString(),mailMessage.Subject,mailMessage.Body);
                smtpClient.Send(mailMessage);
            }
            catch (Exception e)
            {
                Response.Write(e);
            }
        }*/
    }
}