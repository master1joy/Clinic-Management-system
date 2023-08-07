using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using conn;
using System.Data;

namespace ClinicManagementSystem
{
    public partial class delete_Account : System.Web.UI.Page
    {
        Database_connection con=new Database_connection();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"].ToString() == "")
                {
                    Response.Redirect("system_login.aspx");
                }
                Label1.Text = "";
                Label2.Text = Session["user"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.sqlcmd("delete from admin_info where admin_id='"+TextBox1.Text+"'");
            Label1.Text = "Account successfully deleted";
        }

        
    }
}