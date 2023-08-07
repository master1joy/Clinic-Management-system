using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using conn;


namespace ClinicManagementSystem
{
    public partial class change_password : System.Web.UI.Page
    {
        Database_connection dc = new Database_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Session["user"].ToString()=="")
                {
                    Response.Redirect("admin_login.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pwd;
            if (TextBox3.Text == TextBox4.Text)
            { 
                pwd = dc.Encrypt(TextBox3.Text);
                dc.sqlcmd("update admin_info set admin_pwd='" + pwd + "' where admin_id='" + TextBox2.Text + "'");
                   
            }
            
        }
    }
}