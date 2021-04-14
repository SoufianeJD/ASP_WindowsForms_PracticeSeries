using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_SoufianeJD_AJAX
{
    public partial class ContactUs : System.Web.UI.Page
    {
        public static string txt1, txt2, txt3, txt4, txt5, txt6, txt7, txt8, txt9, txt10;
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\14382\Desktop\DEC Info de Gestion\S3\ASP\AllWork\TP3_SoufianeJD_AJAX\TP3_SoufianeJD_AJAX\TP3_SoufianeJD_AJAX\App_Data\Safari.mdf;Integrated Security=True");
            try
            {
                SqlCommand cmd = new SqlCommand("select * from ContactUs where Id = 1;", con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {

                    txt1 = reader["txt_1"].ToString();
                    txt2 = reader["txt_2"].ToString();
                    txt3 = reader["txt_3"].ToString();
                    txt4 = reader["txt_4"].ToString();
                    txt5 = reader["txt_5"].ToString();
                    txt6 = reader["txt_6"].ToString();
                    txt7 = reader["txt_7"].ToString();
                    txt8 = reader["txt_8"].ToString();
                    txt9 = reader["txt_9"].ToString();
                    txt10 = reader["txt_10"].ToString();
                }

            }
            catch (Exception ex)
            {

            }
            finally
            {
                con.Close();
            }

        }
    }
}