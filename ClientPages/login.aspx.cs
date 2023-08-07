using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using conn;
using System.Net.Mail;
using System.Data.SqlClient;

namespace ClinicManagementSystem
{
    public partial class login : System.Web.UI.Page
    {
        Database_connection obj=new Database_connection();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pwd,role; 
            dr=obj.sqlreader("select password from user_info where user_id='" + TextBox1.Text + "'");
            if (dr.Read())
            {
                pwd = obj.Decrypt(dr.GetSqlString(0).ToString());
                //pwd=dr.GetSqlString(0).ToString();
                if(pwd == TextBox2.Text)
                {
                    Session["user"] = TextBox1.Text;
                    Response.Redirect("viewDoctor.aspx");
                    
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Email_verify.aspx");
        }

      

        
    }
}