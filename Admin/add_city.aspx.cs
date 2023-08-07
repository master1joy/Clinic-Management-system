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
    public partial class add_city : System.Web.UI.Page
    {
        Database_connection data=new Database_connection();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label3.Text=Session["user"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id;
            id=auto_id();
            data.sqlcmd("insert into city_info values("+id+",'" + TextBox1.Text + "','" + TextBox2.Text + "')");
            TextBox1.Text = "";
            TextBox2.Text = "";
        }

        string auto_id()
        {
            string id = null;
            //string query4 = "select STR(MAX(CAST(Right(App_id,len(author_id)-4)as int)))as App_id from appointment_booking";
            string query = "select max(city_id) from city_info";

            dr = data.sqlreader(query);
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