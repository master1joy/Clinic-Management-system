using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using conn;

namespace ClinicManagementSystem
{
    public partial class payment : System.Web.UI.Page
    {
        Database_connection dbConnection=new Database_connection();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Request.QueryString["doc_id"];
            Label2.Text = Request.QueryString["apId"];
            Label3.Text = Request.QueryString["fees"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int sum = Convert.ToInt32(Label3.Text) + Convert.ToInt32(Label4.Text);
            TextBox1.Text =Convert.ToString(sum);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dbConnection.sqlcmd("delete from appointment_booking where App_id=" + Label2.Text + "");
            Response.Redirect("viewDoctor.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("<script type='text/javascript'>alert('Your Appointment has been booked Succesfully');</script>");
            Random r=new Random();
            int num=r.Next();
            Sendmail(num.ToString(),TextBox2.Text);
            dbConnection.sqlcmd("insert into docpayment values('" + Label1.Text + "'," + Label3.Text + "," + Label2.Text + "," + Label4.Text + "," + num + ")");
        }

        public void Sendmail(string o,string toadd)
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
                mailMessage.Subject = "Doctor Appointment Acknowldegement";
                mailMessage.Body = "Dear User,Your booking is confirmed.Your trasaction Id:" + o+"and Appointment No.:"+Label2.Text;
                string tooaddress = toadd;
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
    }
}