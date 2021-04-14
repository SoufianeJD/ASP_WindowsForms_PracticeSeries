using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam_Soufiane_Jaida
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\14382\Desktop\Exam_Soufiane_Jaida\Exam_Soufiane_Jaida\Exam_Soufiane_Jaida\App_Data\examdb.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            con.Open();
            String query = "select count(*) from Table1 where login = '" + log.Text + "' and password = '" + mot.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            String output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {
                Response.Redirect("candidatupdate.aspx");
            }
            else
            {
                failed.Text = "Les coordonnee sont incorrects ";
            }
        }
    }
}