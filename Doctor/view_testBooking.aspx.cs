using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using conn;

namespace ClinicManagementSystem
{
    public partial class view_testBooking_aspx : System.Web.UI.Page
    {
        Database_connection db=new Database_connection();
        DataTable dt;
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
            dt = db.sqlTable("select book_id,patient_id,sch_time,paid from test_booking where sch_date='"+TextBox1.Text+"'");
            GV.DataSource = dt;
            GV.DataBind();
        }
    }
}