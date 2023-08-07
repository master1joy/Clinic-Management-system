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
    public partial class book_Appointment : System.Web.UI.Page
    {
        Database_connection db=new Database_connection();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Text = Request.QueryString["id"];
                TextBox2.Text = Request.QueryString["nm"];
                Label4.Text = Request.QueryString["fee"];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dr = db.sqlreader("select shift_1,shift_2,shift_3 from appointment_schedule where date='" + TextBox3.Text + "' and doctor_id='" + TextBox1.Text + "'");
            if (dr.Read())
            {
                Button2.Text = dr.GetValue(0).ToString();
                Button3.Text= dr.GetValue(1).ToString();
                Button4.Text= dr.GetValue(2).ToString();
            }
            else
            {
                Button2.Text = "No Schedule";
                Button3.Text = "No schedule";
                Button4.Text = "No Schedule";

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string ap_id=auto_id();
            db.sqlcmd("insert into appointment_booking values(" + ap_id + ",'" + TextBox1.Text + "','"+TextBox3.Text+"','100','"+Button2.Text+"')");
            Response.Redirect("payment.aspx?doc_id=" + TextBox1.Text + "&apId=" + ap_id+"&fees="+Label4.Text);
        }

        string auto_id()
        {
            string id = null;
            //string query4 = "select STR(MAX(CAST(Right(App_id,len(author_id)-4)as int)))as App_id from appointment_booking";
            string query = "select max(App_id) from appointment_booking";

            dr = db.sqlreader(query);
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

        protected void Button3_Click(object sender, EventArgs e)
        {
            string ap_id = auto_id();
            db.sqlcmd("insert into appointment_booking values(" + ap_id + ",'" + TextBox1.Text + "','" + TextBox3.Text + "','100','" + Button3.Text + "')");
            Response.Redirect("payment.aspx?doc_id=" + TextBox1.Text + "&apId=" + ap_id + "&fees=" + Label4.Text);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string ap_id = auto_id();
            db.sqlcmd("insert into appointment_booking values(" + ap_id + ",'" + TextBox1.Text + "','" + TextBox3.Text + "','100','" + Button4.Text + "')");
            Response.Redirect("payment.aspx?doc_id=" + TextBox1.Text + "&apId=" + ap_id + "&fees=" + Label4.Text);
        }
    }
}