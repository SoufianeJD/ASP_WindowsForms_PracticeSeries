using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam_Soufiane_Jaida
{
    public partial class candidatupdate : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\14382\Desktop\DEC Info de Gestion\S3\ASP\AllWork\TP3_SoufianeJD_AJAX\TP3_SoufianeJD_AJAX\TP3_SoufianeJD_AJAX\App_Data\Safari.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("delete from Table1 where Id =  '" + Id.Text + "' ", con);
            // SqlCommand cmd = new SqlCommand("insert into blocks() values('" + TextBox2.Text + "')", con);

            cmd.CommandType = CommandType.Text;

            try

            {

                con.Open();

                cmd.ExecuteNonQuery();

                succes.Text = "Data deleted successfully";

                con.Close();



            }

            catch (Exception ex)

            {

                failed.Text = ex.Message;


            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("update Table1 set Id='" + Id.Text + "', email ='" + email.Text + "', login= '" + login.Text + "', password='" + password.Text + "', niveau='" + niveau.Text + "' where Id = '" + Id.Text + "'", con);

            cmd.CommandType = CommandType.Text;

            try

            {

                con.Open();

                cmd.ExecuteNonQuery();

                succes.Text = "Data updated successfully";

                con.Close();



            }

            catch (Exception ex)

            {

                failed.Text = ex.Message;


            }
        }
    }
}