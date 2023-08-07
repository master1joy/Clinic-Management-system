using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using conn;
using System.Net;
using System.Net.Mail;
using System.Data;

namespace ClinicManagementSystem
{
    public partial class Register_doctor : System.Web.UI.Page
    {
        Database_connection obj=new Database_connection();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ds = obj.sqldata("select * FROM dept_inf");

                DropDownList1.DataSource = ds;
                DropDownList1.DataValueField = "dept_id";
                DropDownList1.DataTextField = "dept_name";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "--select department--");
                Label15.Text = "";
                Label16.Text = "";
                Label17.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile != null)
            {
                string f_name=Path.GetFileName(FileUpload1.PostedFile.FileName);
                string savloc = Server.MapPath("upload") + "//" + f_name;
                FileUpload1.PostedFile.SaveAs(savloc);
                Image1.ImageUrl = "~/upload" + @"/" + f_name;
                Session["img"]= "~/upload" + @"/" + f_name;
                Label15.Text = "file uploaded";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string pwd = obj.Encrypt(TextBox9.Text);
            if(Session["otp1"].ToString() == TextBox8.Text)
            {
                if(TextBox9.Text == TextBox10.Text)
                {
                    obj.sqlcmd("insert into Doctor_info values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "'," + TextBox4.Text + ",'" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox7.Text + "','" + Session["img"].ToString() + "',"+TextBox11.Text+")");
                    obj.sqlcmd("insert into admin_info values('" + TextBox1.Text + "','"+pwd+"','"+TextBox2.Text+"')");
                }
                else
                {
                    Label16.Text = "passwprd Mismatched!";
                }
            }
            else
            {
                Label17.Text = "OTP is incorrect";
            }
            Session["user"] = TextBox2.Text;
            Response.Redirect("admin_login.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string[] allowedChars = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" };
            string otp=obj.GenerateRandomOTP(4, allowedChars);
            Session["otp1"] = otp;
            Sendmail(otp);
            Label17.Text = "OTP sent to your mail id";
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
                mailMessage.Body = TextBox2.Text + "Your Email verification OTP is:" + o;
                string tooaddress = TextBox5.Text;
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