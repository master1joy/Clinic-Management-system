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
    public partial class prescription_entry : System.Web.UI.Page
    {
        Database_connection db=new Database_connection();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"].ToString() == "")
                {
                    Response.Redirect("admin_login.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string qry = "select Pat_name,Age,sex from Patient_info where Pat_id="+TextBox1.Text+"";
            dr=db.sqlreader(qry);
            if (dr.Read())
            {
                TextBox2.Text=dr.GetValue(0).ToString();
                TextBox3.Text=dr.GetValue(1).ToString();
                TextBox4.Text=dr.GetValue(2).ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string qry = "insert into diagnosisReport values('" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox8.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','"+TextBox2.Text+"','"+ TextBox3.Text + "','"+ TextBox4.Text + "',"+ TextBox9.Text + ")";
            db.sqlcmd(qry);
        }
    }
}