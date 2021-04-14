using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_SoufianeJD
{
    public partial class ContactUs : System.Web.UI.Page
    {
        public static string txt1, txt2, txt3, txt4, txt5, txt6, txt7, txt8, txt9, txt10;
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Asus\Desktop\TP3_SoufianeJD\TP3_SoufianeJD\TP3_SoufianeJD\App_Data\Safari.mdf;Integrated Security=True");
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

        protected void ButtonAdd_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Asus\Desktop\TP3_SoufianeJD\TP3_SoufianeJD\TP3_SoufianeJD\App_Data\Safari.mdf;Integrated Security=True");



            if (name.Text != "" && prenom.Text != "" && email.Text != "" && phone.Text != "" && msg.Text != "")
            {


                SqlCommand cmd = new SqlCommand("insert into Tablesave (name,prenom,email,phone,msg) values('" + name.Text + "' , '" + prenom.Text + "','" + email.Text + "','" + phone.Text + "','" + msg.Text + "')", con);


                cmd.CommandType = CommandType.Text;

                try

                {

                    con.Open();
                    cmd.ExecuteNonQuery();
                    succes.Text = "Data Inserted Successfully !";
                    con.Close();

                }

                catch (Exception ex)

                {

                    failed.Text = ex.Message;

                }

            }

        }

        protected void ButtonClear_Click(object sender, EventArgs e)
        {

            name.Text = string.Empty;
            prenom.Text = string.Empty;
            email.Text = string.Empty;
            phone.Text = string.Empty;
            msg.Text = string.Empty;

        }
    }
}