using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using conn;
using System.Data.SqlClient;

namespace ClinicManagementSystem
{
    public partial class Email_verify : System.Web.UI.Page
    {
        Database_connection dc=new Database_connection();
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string query = "select * from user_info where user_id='" + TextBox1.Text + "'";
            dr=dc.sqlreader(query);
            if (dr.Read())
            {
                Session["user"] = dr.GetValue(0).ToString();
                Response.Redirect("update_password.aspx");
            }
        }
    }
}