using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Net.Security;

namespace conn
{
    public class Database_connection
    {
        SqlConnection con=new SqlConnection("Data Source = localhost\\SQLEXPRESS; Initial Catalog = ClinicManagement; User ID = SA; Password = abcd");
        SqlDataAdapter da;
        SqlDataReader dr;
        DataSet ds=new DataSet();
        SqlCommand cmd;
        DataTable dt=new DataTable();

        public void sqlcmd(string query)//insert ,update,delete
        {
            con.Close();
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd = new System.Data.SqlClient.SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        public DataSet sqldata(string query)//multiple row fetching
        {
            con.Close();
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            da = new System.Data.SqlClient.SqlDataAdapter(query, con);
            da.Fill(ds);
            return ds;

        }

        public DataTable sqlTable(string query)
        {
            con.Close();
            if(con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            da = new System.Data.SqlClient.SqlDataAdapter(query, con);
            da.Fill(dt);
            //System.Data.Common.DbDataAdapter db=new System.Data.Common.DbDataAdapter(query,con);
            return dt;
        }

        public System.Data.SqlClient.SqlDataReader sqlreader(string query)//single row fetching
        {
            con.Close();
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd = new System.Data.SqlClient.SqlCommand(query, con);
            dr = cmd.ExecuteReader();
            return dr;

        }

        public string Encrypt(string password)
        {
            try
            {
                byte[] encData_byte = new byte[password.Length];
                encData_byte = System.Text.Encoding.UTF8.GetBytes(password);
                string encodedData = Convert.ToBase64String(encData_byte);
                return encodedData;
            }
            catch (Exception ex)
            {
                throw new Exception("Error in base64Encode" + ex.Message);
            }
        }

        public string Decrypt(string encodedData)
        {
            System.Text.UTF8Encoding encoder = new System.Text.UTF8Encoding();
            System.Text.Decoder utf8Decode = encoder.GetDecoder();
            byte[] todecode_byte = Convert.FromBase64String(encodedData);
            int charCount = utf8Decode.GetCharCount(todecode_byte, 0, todecode_byte.Length);
            char[] decoded_char = new char[charCount];
            utf8Decode.GetChars(todecode_byte, 0, todecode_byte.Length, decoded_char, 0);
            string result = new String(decoded_char);
            return result;
        }

        public string GenerateRandomOTP(int iOTPLength, string[] saAllowedCharacters)

        {

            string sOTP = String.Empty;

            string sTempChars = String.Empty;

            Random rand = new Random();

            for (int i = 0; i < iOTPLength; i++)

            {

                int p = rand.Next(0, saAllowedCharacters.Length);

                sTempChars = saAllowedCharacters[rand.Next(0, saAllowedCharacters.Length)];

                sOTP += sTempChars;

            }

            return sOTP;

        }
    }

}