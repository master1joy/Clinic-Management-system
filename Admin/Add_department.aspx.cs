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
    public partial class Add_department : System.Web.UI.Page
    {
        Database_connection obj=new Database_connection();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string aid = auto_id();
            obj.sqlcmd("insert into dept_inf values(" + aid + ",'" + TextBox1.Text + "')");
            Response.Write("1 item has been added");
            TextBox1.Text = "";
        }

        string auto_id()
        {
            string id = null;
            //string query4 = "select STR(MAX(CAST(Right(App_id,len(author_id)-4)as int)))as App_id from appointment_booking";
            string query = "select max(dept_id) from dept_inf";

            dr = obj.sqlreader(query);
            int count;
            if (dr.Read())
            {
                if (dr.GetValue(0).ToString() != "")
                {
                    count = Convert.ToInt16(dr.GetValue(0)) + 1;
                    id = count.ToString();

                }
                else
                {
                    id = "1";
                }
                dr.Close();
            }
            return id;
        }
    }
}