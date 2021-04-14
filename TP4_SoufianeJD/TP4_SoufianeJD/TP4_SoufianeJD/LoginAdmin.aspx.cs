using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4_SoufianeJD
{
    public partial class LoginAdmin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\14382\Desktop\DEC Info de Gestion\S3\ASP\AllWork\TP4_SoufianeJD\TP4_SoufianeJD\TP4_SoufianeJD\App_Data\Safari.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            con.Open();
            String query = "select count(*) from Login where login = '" + log.Text + "' and password = '" + mot.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            String output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {
                Response.Redirect("AdminAcces.aspx");
            }
            else
            {
                failed.Text = "Les coordonnee sont incorrects ";
            }
        }
    }
}