using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam_Soufiane_Jaida
{
    public partial class candidatmise : System.Web.UI.Page
    {
        
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\14382\Desktop\DEC Info de Gestion\S3\ASP\AllWork\Exam_Soufiane_Jaida\Exam_Soufiane_Jaida\Exam_Soufiane_Jaida\App_Data\examdb.mdf;Integrated Security=True");
                
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void sendEmail()
        {
            try
            {

                //MailMessage message = new MailMessage(MailSender, email.To, "Candidat", "<h1 style='color: #2e6c80;'>Entreprise SoufianeJD &nbsp;<span style='color: #2e6c80;'></span>,</h1><h2 style = 'color: #2e6c80;'> Bonjour Cher Candidat.</h2><p> Votre form Upload a ete avec success <br> Vous allez recevoir une reponse de notre part tres bien tot.</p><h2><span style = 'color: #008080;'> MERCI !</span></h2><p><span style = 'background-color: #2b2301; color: #fff; display: inline-block; padding: 3px 10px; font-weight: bold; border-radius: 5px;'> Safari Adventure Support Team </span></p>");
                String var = "Votre nom: " + nom.Text + "<br/>Votre prenom: " + prenom.Text + "<br/>Votre Login: " + date.Text + "<br/>Votre date de naissance: " + login.Text + "<br/>Votre Mot de passe: " + password.Text;

                // Create a message object using MailMessage
                MailMessage message = new MailMessage( email.Text,email.Text, "The Candidat Profile Infos", var);
                // Allow specify whether or not we can attach/send html in the body of the mail
                message.IsBodyHtml = true;

                // Specify the smtpClient which handle all the email sending for us
                // Each mailServer as its own smtp server and port definition
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                // Gmail requires client have enabled SSL
                client.EnableSsl = true;
                // Set client credentials used to authenticate the sender
                client.Credentials = new System.Net.NetworkCredential("s.f.j.dsapro@gmail.com", "PIRATERlmoklfacein1998");
                // Effectively send message
                client.Send(message);
                // Confirm status
                success.Text = "Check you re Mail, we have sent ur Profile Infos...";
            }
            catch (Exception ex)
            {
                success.Text = ex.Message;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           if (FileUpload1.HasFile && FileUpload2.HasFile &&  Id.Text != "" && nom.Text != "" && prenom.Text != "" && date.Text != "" && sexe.Text != "" && email.Text != "" && datee.Text != "" && niveau.Text != "" && comment.Text != "" && login.Text != "" && password.Text != "" && secteur.Text != "")
            {
                String imgg = System.IO.Path.GetExtension(FileUpload2.FileName);
                String filee = System.IO.Path.GetExtension(FileUpload1.FileName);


                if (imgg != ".jpeg" && imgg != ".png") 
                {
                    alert2.ForeColor = System.Drawing.Color.Red;
                    alert2.Text = "Only Images files please...";
                }

                if (filee != ".pdf" && filee != ".docs")
                {
                    alert1.ForeColor = System.Drawing.Color.Red;
                    alert1.Text = "A CV is usuallly a PDF or DOC file...";
                }

                else
               {
                    // Restrict file size
                    int fileSize = FileUpload1.PostedFile.ContentLength;
                    if (fileSize > 3145728)
                        
                    {

                        alert1.ForeColor = System.Drawing.Color.Red;
                        alert1.Text = "File size exceeded !!!";

                    }
                    else
                    {
                        FileUpload2.SaveAs(Server.MapPath("~/Savedimages/" + FileUpload2.FileName));
                        // Show confirmation msg
                        SqlCommand cmd = new SqlCommand("insert into Table1 (Id,nom,prenom,date,sexe,email,datee,niveau,comment,login,password,fileee,img,secteur) values( '" + Id.Text + "','" + nom.Text + "','" + prenom.Text + "'  ,'" + date.Text + "'  , '" + sexe.Text + "' , '" + email.Text + "' , '" + datee.Text + "' , '" + niveau.Text + "' , '" + comment.Text + "' , '" + login.Text + "' , '" + password.Text + "' , '" + fileee.Text + "' , '" + img.Text + "' , '" + secteur.Text + "')", con);


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


            sendEmail();
        }
}
}
