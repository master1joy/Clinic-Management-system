using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using conn;
using System.Data;

namespace ClinicManagementSystem.Admin
{
    public partial class Monthly_Report : System.Web.UI.Page
    {
        Database_connection dc=new Database_connection();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt = dc.sqlTable("select App_id,Doc_id,Pat_id,time_slot from appointment_booking where date>='" + TextBox1.Text + "'and date<='" + TextBox2.Text + "'");
            ReportViewer1.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("../Report/appBooking.rdlc");
            ReportViewer1.LocalReport.EnableHyperlinks = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            dt = dc.sqlTable("select book_id,patient_id,test_id,sch_time,paid,Due from test_booking where sch_date>='" + TextBox1.Text + "'and sch_date<='" + TextBox2.Text + "'");
            ReportViewer1.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("../Report/testBooking.rdlc");
            ReportViewer1.LocalReport.EnableHyperlinks = true;
        }
    }
}