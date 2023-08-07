using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using conn;

namespace ClinicManagementSystem
{
    public partial class admin_login : System.Web.UI.Page
    {
        SqlDataReader dr;
        Database_connection db=new Database_connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string qry = "select admin_pwd,admin_nm from admin_info where admin_id='" + TextBox1.Text + "'";
            dr = db.sqlreader(qry);
            if (dr.Read())
            {
                string pwd = db.Decrypt(dr.GetValue(0).ToString());
                Session["user"]=dr.GetValue(1).ToString();
                if (pwd == TextBox2.Text)
                {
                    Response.Redirect("add_schedule.aspx");
                }
                else
                {
                    Response.Write("<script type='text/javascript'>alert('Invalid login credentials');</script>");
                }
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('Invalid login Id');</script>");
            }
        }
    }
}