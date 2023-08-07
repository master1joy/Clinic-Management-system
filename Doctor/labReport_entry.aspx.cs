using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using conn;
using System.Data;
using System.Data.SqlClient;

namespace ClinicManagementSystem
{
    public partial class labReport_entry : System.Web.UI.Page
    {
        Database_connection conn=new Database_connection();
        DataTable dt = new DataTable();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dt = conn.sqlTable("select test_id,test_name from test_info");
                DropDownList1.DataSource = dt;
                DropDownList1.DataValueField = "test_id";
                DropDownList1.DataTextField = "test_name";
                DropDownList1.DataBind();
            } 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dr = conn.sqlreader("select para1,para2,para3,para4,para5 from report_format where test_id='" + DropDownList1.SelectedValue.ToString() + "'");
            if (dr.Read())
            {
                Label2.Text=dr.GetValue(0).ToString();
                Label3.Text = dr.GetValue(1).ToString();
                Label4.Text = dr.GetValue(2).ToString();
                Label5.Text = dr.GetValue(3).ToString();
                Label6.Text = dr.GetValue(4).ToString();
            }
            else
            {
                Response.Write("no data retrieved");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string id = auto_id();
            conn.sqlcmd("insert into test_report values('"+id+"','" + TextBox6.Text + "',"+TextBox8.Text+",'"+DropDownList2.SelectedValue+"',"+TextBox7.Text+",'"+TextBox1.Text+ "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')");
        }

        string auto_id()
        {
            string query = "select STR(MAX(CAST(Right(tr_id,len(tr_id)-4)as int)))as tr_id from test_report";
            dr = conn.sqlreader(query);
            int count;
            string id = null;
            if (dr.Read())
            {
                if (!dr.IsDBNull(0))
                {
                    count = Convert.ToInt32(dr.GetValue(0)) + 1;
                    id = "trp-" + count.ToString();
                }
                else
                {
                    id = "trp-" + 1;
                }
                dr.Close();
            }
            return id;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string query = "select Pat_name,Age from patient_info where Pat_id in (select patient_id from test_booking where book_id='" + TextBox8.Text + "')";
            SqlDataReader dr=conn.sqlreader(query);
            if(!dr.Read())
            {
                Response.Write("Data not found");
            }
            TextBox6.Text = dr.GetValue(0).ToString();
            TextBox7.Text=dr.GetValue(1).ToString();
        }
    }
}