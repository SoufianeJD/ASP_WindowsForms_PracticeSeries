using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP1_SoufianeJD
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (radio1.Checked)
            {
                lblRep.Text = "";
                Image1.ImageUrl = "~/images/vancouver.jpg";
                lblRep.Text = " La belle ville de Vancouver ! ";
            }
            else if (radio2.Checked)
            {
                lblRep.Text = "";
                Image1.ImageUrl = "";
                lblRep.Text = "la balise est :  < div > </ div > ";

            }

            else if (radio3.Checked)
            {

                lblRep.Text = "<hr>";

            }

            else if (radio4.Checked)
            {
                lblRep2.Text = "<br />";
            }
          
            //2eme
            else if (rad5.Checked)
            {
                if (rad5.Checked && cBox1.Checked && cBox2.Checked)
                {
                    lblrep3.Text = "Vous lisez la revue MSDN Magazine en version papier et electronique !";
                }
                else if (rad5.Checked && cBox2.Checked)
                {
                    lblrep3.Text = "Vous lisez la revue MSDN Magazine en version electronique !";
                }
                else if (rad5.Checked && cBox1.Checked)
                {
                    lblrep3.Text = "Vous lisez la revue MSDN Magazine en version papier !";
                }

            }



            else if (rad6.Checked)
            {
                if (rad6.Checked && cBox1.Checked && cBox2.Checked)
                {
                    lblrep3.Text = "Vous lisez la revue L'informaticien en version papier et electronique !";
                }
                else if (rad6.Checked && cBox2.Checked)
                {
                    lblrep3.Text = "Vous lisez la revue L'informaticien en version electronique !";
                }
                else if (rad6.Checked && cBox1.Checked)
                {
                    lblrep3.Text = "Vous lisez la revue L'informaticien en version papier !";
                }

            }


            else if (rad7.Checked)
            {
                if (rad7.Checked && cBox1.Checked && cBox2.Checked)
                {
                    lblrep3.Text = "Vous lisez la revue Programmez en version papier et electronique !";
                }
                else if (rad7.Checked && cBox2.Checked)
                {
                    lblrep3.Text = "Vous lisez la revue Programmez en version electronique !";
                }
                else if (rad7.Checked && cBox1.Checked)
                {
                    lblrep3.Text = "Vous lisez la revue Programmez en version papier !";
                }
            }

            else if (rad8.Checked)
            {
                if (rad8.Checked && cBox1.Checked && cBox2.Checked)
                {
                    lblrep3.Text = "Vous lisez la revue PC World en version papier et electronique !";
                }
                else if (rad8.Checked && cBox2.Checked)
                {
                    lblrep3.Text = "Vous lisez la revue PC World en version electronique !";
                }
                else if (rad8.Checked && cBox1.Checked)
                {
                    lblrep3.Text = "Vous lisez la revue PC World en version papier !";
                }
            }
            // condition if nothing is checked  
            else if (rad5.Checked || rad6.Checked || rad7.Checked || rad8.Checked)
            {

                if (!cBox1.Checked && !cBox2.Checked)
                {
                    lblrep3.Text = "Vous devez choisir un format pour la revue !";
                }

            }
            else
            {
                lblrep3.Text = "";
            }

        }
    }
}
    