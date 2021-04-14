using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Exam_Soufiane_Jaida
{
    public partial class MailSendMember : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void sendEmail()
        {
            
            try
            {
                String var = "Mon nom est : " + nom.Text + "<br/>Mon prenom est : " + prenom.Text + "<br/>Ma ville est : " + ville.Text + "<br/>Petite Msg : " + msg.Text;
                // Create a message object using MailMessage
                MailMessage message = new MailMessage(from.Text, to.Text, "COUCOU !",  var);
                // Allow specify whether or not we can attach/send html in the body of the mail
                message.IsBodyHtml = true;
                // Specify the smtpClient which handle all the email sending for us
                // Each mailServer as its own smtp server and port definition
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                // Gmail requires client have enabled SSL
                client.EnableSsl = true;
                // Set client credentials used to authenticate the sender
                client.Credentials = new System.Net.NetworkCredential("urmail@gmail.com", "urpasswoord");
                // Effectively send message
                client.Send(message);
                // Confirm status
                status.Text = "Mail was sent successfully!";
            }
            catch (Exception ex)
            {
                status.Text = ex.Message;
            }

        }

        protected void send_Click(object sender, EventArgs e)
        {
            sendEmail();
        }
    }
}