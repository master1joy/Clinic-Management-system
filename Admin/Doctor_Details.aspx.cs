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
    public partial class Doctor_Details : System.Web.UI.Page
    {
        Database_connection con=new Database_connection();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt = con.sqlTable("select * from Doctor_info");
            ReportViewer1.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("../Report/DoctorDetails.rdlc");
            ReportViewer1.LocalReport.EnableHyperlinks = true;
        }
    }
}