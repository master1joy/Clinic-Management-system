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
    public partial class testBook : System.Web.UI.Page
    {
        Database_connection db = new Database_connection();
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = Request.QueryString["nm"];
                Label3.Text = Request.QueryString["id"];
                Label2.Text = Request.QueryString["cost"];
                Label4.Visible = false;
                Button2.Visible= false;
                Button3.Visible= false;
                TextBox2.Visible= false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Label4.Visible = true;
            Button2.Visible = true;
            Button3.Visible = true;
            TextBox2.Visible = true;
        }

        int auto_id()
        {
            string query = "select STR(MAX(CAST(Right(book_id,len(book_id))as int)))as book_id from test_booking";
            dr = db.sqlreader(query);
            int count;
            int id = 0;
            if (dr.Read())
            {
                if (!dr.IsDBNull(0))
                {
                    count = Convert.ToInt32(dr.GetValue(0)) + 1;
                    id = count;
                }
                else
                {
                    id = 1;
                }
                dr.Close();
            }
            return id;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int bkid = auto_id();
            db.sqlcmd("insert into test_booking values(" + bkid + ",2,'" + Label3.Text + "','" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "',"+TextBox2.Text+",0)");
            Response.Write("<script type='text/javascript'>alert('Test booked Successfully.');</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int bkid = auto_id();
            db.sqlcmd("insert into test_booking values(" + bkid + ",2,'" + Label3.Text + "','" + TextBox1.Text + "','" + DropDownList1.SelectedValue + "',0,"+Label2.Text+")");
            Response.Write("<script type='text/javascript'>alert('Test booked Successfully.');</script>");
        }
    }
}