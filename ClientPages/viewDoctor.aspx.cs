using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using conn;

namespace ClinicManagementSystem
{
    public partial class viewDoctor : System.Web.UI.Page
    {
        Database_connection db=new Database_connection();
        DataSet ds;
        DataTable dt;
        DataTable dt2;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Label1.Text =Session["user"].ToString();
            if (!IsPostBack) {
                if(Session["user"].ToString() == "")
                {
                    Response.Redirect("login.aspx");
                }
                Label1.Text = Session["user"].ToString();
                ds = db.sqldata("select * from dept_inf");
                DropDownList1.DataSource = ds;
                DropDownList1.DataValueField = "dept_id";
                DropDownList1.DataTextField = "dept_name";
                DropDownList1.DataBind();//category load

                string query = "select image,Doc_id,Doc_name,Qualification,experience,fees from Doctor_info";
                dt=db.sqlTable(query);
                bind_Doctor(dt);
            }
            
        }

        void bind_Doctor(DataTable obj)
        {
            Image1.ImageUrl = obj.Rows[0][0].ToString();//first row
            Label2.Text = obj.Rows[0][1].ToString();
            Label3.Text = obj.Rows[0][2].ToString();
            Label4.Text= obj.Rows[0][3].ToString();
            Label5.Text= obj.Rows[0][4].ToString();
            Label22.Text= obj.Rows[0][5].ToString();

            Image2.ImageUrl= obj.Rows[1][0].ToString();//first row
            Label6.Text= obj.Rows[1][1].ToString();
            Label7.Text= obj.Rows[1][2].ToString();
            Label8.Text= obj.Rows[1][3].ToString();
            Label9.Text= obj.Rows[1][4].ToString();
            Label23.Text= obj.Rows[1][5].ToString();

            Image3.ImageUrl= obj.Rows[2][0].ToString();//third row
            Label10.Text= obj.Rows[2][1].ToString();
            Label11.Text= obj.Rows[2][2].ToString();
            Label12.Text= obj.Rows[2][3].ToString();
            Label13.Text= obj.Rows[2][4].ToString();
            Label24.Text= obj.Rows[2][5].ToString();

            Image4.ImageUrl= obj.Rows[3][0].ToString();//forth row
            Label14.Text= obj.Rows[3][1].ToString();
            Label15.Text= obj.Rows[3][2].ToString();
            Label16.Text= obj.Rows[3][3].ToString();
            Label17.Text= obj.Rows[3][4].ToString();
            Label25.Text= obj.Rows[3][5].ToString();

            Image5.ImageUrl= obj.Rows[4][0].ToString();//fifth row
            Label18.Text= obj.Rows[4][1].ToString();
            Label19.Text= obj.Rows[4][2].ToString();
            Label20.Text= obj.Rows[4][3].ToString();
            Label21.Text= obj.Rows[4][4].ToString();
            Label26.Text= obj.Rows[4][5].ToString();
        }

        void bind_Doctor2(DataTable obj)
        {
            Image1.ImageUrl = obj.Rows[0][0].ToString();//first row
            Label2.Text = obj.Rows[0][1].ToString();
            Label3.Text = obj.Rows[0][2].ToString();
            Label4.Text = obj.Rows[0][3].ToString();
            Label5.Text = obj.Rows[0][4].ToString();
            Label22.Text=obj.Rows[0][5].ToString();

            Image2.ImageUrl = obj.Rows[1][0].ToString();//first row
            Label6.Text = obj.Rows[1][1].ToString();
            Label7.Text = obj.Rows[1][2].ToString();
            Label8.Text = obj.Rows[1][3].ToString();
            Label9.Text = obj.Rows[1][4].ToString();
            Label23.Text= obj.Rows[1][5].ToString();

            Image3.Visible = false;//third row
            Label10.Visible = false;
            Label11.Visible = false; 
            Label12.Visible = false;
            Label13.Visible = false;
            Label24.Visible = false;
            Button5.Visible= false;

            Image4.Visible = false;//forth row
            Label14.Visible = false;
            Label15.Visible = false;
            Label16.Visible = false;
            Label17.Visible = false;
            Label25.Visible = false;
            Button6.Visible = false;

            Image5.Visible = false;//fifth row
            Label18.Visible = false;
            Label19.Visible = false;
            Label20.Visible = false;
            Label21.Visible = false;
            Label26.Visible = false;
            Button7.Visible = false;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            dt2 = db.sqlTable("select image,Doc_id,Doc_name,Qualification,experience,fees from Doctor_info where dept_id=" + DropDownList1.Text + "");
            int c = dt2.Rows.Count;
            if (c == 5)
            {
                bind_Doctor(dt2);
            }
            else
            {
                bind_Doctor2(dt2);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("book_Appointment.aspx?id=" + Label2.Text+"&nm="+Label3.Text + "&fee="+Label22.Text);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("book_Appointment.aspx?id=" + Label6.Text + "&nm=" + Label7.Text + "&fee=" + Label23.Text);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("book_Appointment.aspx?id=" + Label10.Text + "&nm=" + Label11.Text + "&fee=" + Label24.Text);
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("book_Appointment.aspx?id=" + Label14.Text + "&nm=" + Label15.Text + "&fee=" + Label25.Text);
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Response.Redirect("book_Appointment.aspx?id=" + Label18.Text + "&nm=" + Label19.Text + "&fee=" + Label26.Text);
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Session["user"] = "";
            Button8.PostBackUrl = "login.aspx";
        }
    }
}