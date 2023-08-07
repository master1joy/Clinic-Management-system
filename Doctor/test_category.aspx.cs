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
    public partial class test_category : System.Web.UI.Page
    {
        Database_connection dc=new Database_connection();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["user"].Equals(null))
           {
                Response.Redirect("admin_login.aspx");
           }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = auto_id();
            dc.sqlcmd("insert into test_info values('" + id + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "'," + TextBox3.Text + ")");
        }

        string auto_id()
        {
            string query = "select STR(MAX(CAST(Right(test_id,len(test_id)-2)as int)))as test_id from test_info";
            dr = dc.sqlreader(query);
            int count;
            string id = null;
            if (dr.Read())
            {
                if (!dr.IsDBNull(0))
                {
                    count = Convert.ToInt32(dr.GetValue(0)) + 1;
                    id = "t-" + count.ToString();
                }
                else
                {
                    id = "t-" + 1;
                }
                dr.Close();
            }
            return id;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DropDownList1.ClearSelection();
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}