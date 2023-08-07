using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using conn;


namespace ClinicManagementSystem.ClientPages
{
    public partial class update_password : System.Web.UI.Page
    {
        Database_connection dc = new Database_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Text = Session["user"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dc.sqlcmd("update user_info set password='" + dc.Encrypt(TextBox3.Text) + "' where user_id='" + TextBox1.Text + "'");
            Response.Write("<script type='text/javascript'>alert('Your password has been updated');</script>");
        }
    }
}