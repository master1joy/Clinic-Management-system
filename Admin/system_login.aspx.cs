using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using conn;
using System.Data.SqlClient;

namespace ClinicManagementSystem.Admin
{
    public partial class system_login : System.Web.UI.Page
    {
        Database_connection db=new Database_connection();
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Label4.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            reader = db.sqlreader("select pwd from systemAdmin where u_id='" + TextBox1.Text + "'");
            if (reader.Read()) { 
                string fdata = db.Decrypt(reader.GetString(0));
                if(fdata != TextBox2.Text)
                {
                    Label4.Text = "invalid password";
                }
                Session["user"] = TextBox1.Text;
                Response.Redirect("add_city.aspx");
            }
            else { Label4.Text = "Invalid login Credentials"; }
            
        }
    }
}