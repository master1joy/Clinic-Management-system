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
    public partial class view_appointmentbooking : System.Web.UI.Page
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
            dt = db.sqlTable("select App_id,Doc_id,Pat_id,time_slot from appointment_booking where date='" + TextBox1.Text + "' and doc_id='"+TextBox2.Text+"'");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}