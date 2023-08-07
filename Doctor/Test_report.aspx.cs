using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using conn;
using System.Data;

namespace ClinicManagementSystem
{
    public partial class Test_report : System.Web.UI.Page
    {
        Database_connection dc = new Database_connection();
        DataTable dt = new DataTable();
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
            dt = dc.sqlTable("select patientName,book_id,sex,age,pm_1,pm_2,pm_3,pm_4,pm_5 from test_report where book_id=" + TextBox1.Text + "");
            ReportViewer1.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("DataSet1", dt));
            if (DropDownList1.SelectedValue is "t-2") {
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Report/test_Report.rdlc");
            }
            else if(DropDownList1.SelectedValue is "t-1")
            {
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Report/Report1.rdlc");
            }
            else if(DropDownList1.SelectedValue is "t-3")
            {
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Report/Report3.rdlc");
            }
            else if (DropDownList1.SelectedValue is "t-4")
            {
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Report/Report4.rdlc");
            }
            else //if((DropDownList1.SelectedValue is "t-5")
            {
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Report/Report5.rdlc");
            }
            
            ReportViewer1.LocalReport.EnableHyperlinks = true;
        }
    }
}