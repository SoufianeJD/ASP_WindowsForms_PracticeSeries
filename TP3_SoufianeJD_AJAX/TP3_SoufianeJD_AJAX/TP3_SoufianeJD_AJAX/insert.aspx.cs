using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP3_SoufianeJD_AJAX
{
    public partial class insert : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\14382\Desktop\DEC Info de Gestion\S3\ASP\AllWork\TP3_SoufianeJD_AJAX\TP3_SoufianeJD_AJAX\TP3_SoufianeJD_AJAX\App_Data\Safari.mdf;Integrated Security=True");
        string name, prenom, email, phone, msg;
        protected void Page_Load(object sender, EventArgs e)
        {
            name = Request.QueryString["name"].ToString();
            prenom = Request.QueryString["prenom"].ToString();
            email = Request.QueryString["email"].ToString();
            phone = Request.QueryString["phone"].ToString();
            msg = Request.QueryString["msg"].ToString();

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
         
            
            cmd.CommandText = "insert into Tablesave values('" + name.ToString() + "','" + prenom.ToString() + "','" + email.ToString() + "','" + phone.ToString() + "','" + msg.ToString() + "')";

            cmd.ExecuteNonQuery();
            con.Close();


        }
    }
}