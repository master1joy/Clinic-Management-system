using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using conn;
using System.Data.SqlClient;
using System.Data;

namespace ClinicManagementSystem
{
    public partial class view_test : System.Web.UI.Page
    {
        Database_connection db=new Database_connection();
        //SqlConnection conn;
        //SqlCommand cmd;
        //SqlDataReader dr;
        //SqlDataAdapter adapter;
        DataTable dt=new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                if (Session["user"].ToString() == "")
                {
                    Response.Redirect("login.aspx");
                }
                
                dt =db.sqlTable("select test_id,test_name,cost from test_info");

                Label1.Text = dt.Rows[0][0].ToString();
                Button1.Text = dt.Rows[0][1].ToString();
                Label12.Text = dt.Rows[0][2].ToString();//first element

                Label2.Text= dt.Rows[1][0].ToString();
                Button2.Text = dt.Rows[1][1].ToString();
                Label13.Text = dt.Rows[1][2].ToString();//second element

                Label3.Text = dt.Rows[2][0].ToString();
                Button3.Text = dt.Rows[2][1].ToString();
                Label14.Text = dt.Rows[2][2].ToString();//third element

                Label4.Text = dt.Rows[3][0].ToString();
                Button4.Text = dt.Rows[3][1].ToString();
                Label15.Text = dt.Rows[3][2].ToString();//forth element

                Label5.Text = dt.Rows[4][0].ToString();
                Button5.Text = dt.Rows[4][1].ToString();
                Label16.Text = dt.Rows[4][2].ToString();//fifth element

                Label6.Text = dt.Rows[5][0].ToString();
                Button6.Text = dt.Rows[5][1].ToString();
                Label17.Text = dt.Rows[5][2].ToString();//sixth element

                Label7.Text = dt.Rows[6][0].ToString();
                Button7.Text = dt.Rows[6][1].ToString();
                Label18.Text = dt.Rows[6][2].ToString();//seventh element

                Label8.Text = dt.Rows[7][0].ToString();
                Button8.Text = dt.Rows[7][1].ToString();
                Label19.Text = dt.Rows[7][2].ToString();//eighth element

                Label9.Text = dt.Rows[8][0].ToString();
                Button9.Text = dt.Rows[8][1].ToString();
                Label20.Text = dt.Rows[8][2].ToString();//ninth element

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox1.Text = Button1.Text;
            Label11.Text = Label1.Text;
            Label10.Text = Label12.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = Button2.Text;
            Label11.Text = Label2.Text;
            Label10.Text = Label13.Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = Button3.Text;
            Label11.Text = Label3.Text;
            Label10.Text = Label14.Text;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            TextBox1.Text = Button4.Text;
            Label11.Text = Label4.Text;
            Label10.Text = Label15.Text;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox1.Text = Button5.Text;
            Label11.Text = Label5.Text;
            Label10.Text = Label16.Text;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            TextBox1.Text = Button6.Text;
            Label11.Text = Label6.Text;
            Label10.Text = Label17.Text;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            TextBox1.Text = Button7.Text;
            Label11.Text = Label7.Text;
            Label10.Text = Label18.Text;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            TextBox1.Text = Button8.Text;
            Label11.Text = Label8.Text;
            Label10.Text = Label19.Text;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            TextBox1.Text = Button9.Text;
            Label11.Text = Label9.Text;
            Label10.Text = Label20.Text;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Response.Redirect("testBook.aspx?nm="+TextBox1.Text+"&id="+Label11.Text+"&cost="+Label10.Text);
        }
    }
}