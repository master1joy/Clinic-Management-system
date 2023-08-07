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
    public partial class viewPrescription : System.Web.UI.Page
    {
        SqlDataReader reader;
        Database_connection db=new Database_connection();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
          /*  if (!IsPostBack)
            {
                if (Session["user"].ToString() == "")
                {
                    Response.Redirect("admin_login.aspx");
                }
            }*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //string qry1= "select * from diagnosisReport where pat_id=" + TextBox1.Text+" and App_id='"+TextBox2.Text+"'";
            string qry1 = "select * from diagnosisReport where pat_id="+TextBox1.Text+ " and App_id='" + TextBox2.Text + "'";
            
            //reader =db.sqlreader(qry1);
            dt=db.sqlTable(qry1);

            /*
            {
                ReportViewer1.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("DataSet1", reader));
                ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Report/DiagnosysReport.rdlc");
                ReportViewer1.LocalReport.EnableHyperlinks = true;
            }
            else
            {
                Response.Write("<script type='text/javascript'>alert('Data cannot be fetched.');</script>");
            }*/
            ReportViewer1.LocalReport.DataSources.Add(new Microsoft.Reporting.WebForms.ReportDataSource("DataSet1", dt));
            ReportViewer1.LocalReport.ReportPath = Server.MapPath("~/Report/DiagnosysReport.rdlc");
            ReportViewer1.LocalReport.EnableHyperlinks = true;
        }
    }
}