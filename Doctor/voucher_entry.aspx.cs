using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using conn;
using System.Data;

namespace ClinicManagementSystem
{
    public partial class voucher_entry : System.Web.UI.Page
    {
        Database_connection dc=new Database_connection();
        SqlDataReader dr;
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                Label3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dr = dc.sqlreader("select sum(Due) as totalDue from test_booking where patient_id="+TextBox1.Text+"");
            if (dr.Read())
            {
                decimal d = (decimal)dr["totalDue"];
                Label3.Visible = true;
                Label3.Text = d.ToString();
            }
            dt = dc.sqlTable("select book_id from test_booking where paid=0 and patient_id="+TextBox1.Text+"");
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "book_id";
            DropDownList1.DataValueField = "book_id";
            DropDownList1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int count;
            dr = dc.sqlreader("select max(voucherNo) from test_payment as voucherNo");
            if (dr.IsDBNull(0))
            {
                count = 1;
            }
            else
            {
                count = Convert.ToInt16(dr.GetValue(0)) + 1;
            }
            dc.sqlcmd("insert into test_payment values(" + count + "," + DropDownList1.SelectedValue + "," + TextBox1.Text + ",'" + System.DateTime.Today + "',"+TextBox2.Text+")");
        }
    }
}