using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4_SoufianeJD
{
    public partial class Accueil : System.Web.UI.Page
    {
        public string txt1, txt2, txt3, txt4, txt5, txt6, txt7, img1, img2, img3, img4, img5, img6;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                // Connection String
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\14382\Desktop\DEC Info de Gestion\S3\ASP\AllWork\TP4_SoufianeJD\TP4_SoufianeJD\TP4_SoufianeJD\App_Data\Safari.mdf;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("select * from Home where Id=1;", con);
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
                    img1 = reader["img1"].ToString();
                    img2 = reader["img2"].ToString();
                    img3 = reader["img3"].ToString();
                    img4 = reader["img4"].ToString();
                    img5 = reader["img5"].ToString();
                    img6 = reader["img6"].ToString();



                }

            }
            catch (Exception ex)
            {


            }
            finally
            {


            }

        }
    }
}