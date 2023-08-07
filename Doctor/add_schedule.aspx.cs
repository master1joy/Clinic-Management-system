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
    public partial class add_schedule : System.Web.UI.Page
    {
        Database_connection db = new Database_connection();
        SqlDataReader dr;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if(Session["user"].ToString() == "")
                {
                    Response.Redirect("admin_login.aspx");
                }
                Label6.Text = Session["user"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sid = auto_id();
            db.sqlcmd("insert into appointment_schedule values('" + sid + "','" + TextBox1.Text + "','" + TextBox6.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ")");
            //db.sqlcmd("insert into appointment_schedule values('" + sid + "','" + TextBox1.Text + "',' doc21223658 ','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "'," + TextBox5.Text + ")");
        }

        string auto_id()
        {
            string query = "select STR(MAX(CAST(Right(schedule_id,len(schedule_id)-4)as int)))as schedule_id from appointment_schedule";
            dr = db.sqlreader(query);
            int count;
            string id = null;
            if (dr.Read())
            {
                if (!dr.IsDBNull(0))
                {
                    count = Convert.ToInt32(dr.GetValue(0)) + 1;
                    id = "sch-"+count.ToString();
                }
                else
                {
                    id = "sch-" + 1;
                }
                dr.Close();
            }
            return id;
        }
    }
}