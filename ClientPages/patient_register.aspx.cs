using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using conn;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;


namespace ClinicManagementSystem
{
    public partial class patient_register : System.Web.UI.Page
    {
        Database_connection conn = new Database_connection();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string[] allowedChars = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" };
            string otp = conn.GenerateRandomOTP(4, allowedChars);
            Session["oTP"] = otp;
            Sendmail(otp);
        }

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
                mailMessage.Subject = "OTP Verification";
                mailMessage.Body = TextBox1.Text + "Your Account verification OTP is:" + o;
                string tooaddress = TextBox4.Text;
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
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Random r = new Random();
            int num = r.Next();
            if (Session["oTP"].ToString() == TextBox6.Text)
            {
                conn.sqlcmd("insert into Patient_info values("+num.ToString()+",'"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"',"+TextBox5.Text+",'"+RadioButtonList1.SelectedValue+"')");
                conn.sqlcmd("insert into user_info values('" + TextBox4.Text + "','" + conn.Encrypt(TextBox7.Text) + "','client')");
                Session["user"] = TextBox1.Text;
                Response.Redirect("viewDoctor.aspx");               
            }
        }

        
    }
}