using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP4_SoufianeJD
{
    public partial class AdminAcces : System.Web.UI.Page
    {

         SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\14382\Desktop\DEC Info de Gestion\S3\ASP\AllWork\TP4_SoufianeJD\TP4_SoufianeJD\TP4_SoufianeJD\App_Data\Safari.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Fileuploadd.HasFile && title.Text != "" && description.Text != "" && comment.Text != "" && price.Text != "")
            {
                String imgfile = System.IO.Path.GetExtension(Fileuploadd.FileName);

                if (imgfile != ".jpeg" && imgfile != ".png")
                {
                    alert.ForeColor = System.Drawing.Color.Red;
                    alert.Text = "Only Images files please...";
                }
                else
                {
                    // Restrict file size
                    int fileSize = Fileuploadd.PostedFile.ContentLength;
                    if (fileSize > 4194304)
                    {

                        alert.ForeColor = System.Drawing.Color.Red;
                        alert.Text = "File size exceeded !!!";

                    }
                    else
                    {
                        Fileuploadd.SaveAs(Server.MapPath("~/Savedimages/" + Fileuploadd.FileName));
                        // Show confirmation msg
                        SqlCommand cmd = new SqlCommand("insert into Voyage(title,description,comment,img,price) values( '" + title.Text + "','" + description.Text + "'  ,'" + comment.Text + "'  , '" + img.Text + "' , '" + price.Text + "')", con);


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
            }
        }
    }
}
 