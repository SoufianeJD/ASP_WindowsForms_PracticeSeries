using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP1_SoufianeJD
{
    public partial class EXO2_P2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (PreviousPage != null)
            {
                TextBox xx = (TextBox)PreviousPage.FindControl("TextBox1");
                lbl01.Text += "Voici les commentaires récupérés : " + xx.Text;
            }
            if (PreviousPage != null)
            {
                RadioButton x = (RadioButton)PreviousPage.FindControl("RadioButton1");
                if(x.Checked == true)
                {
                    lbl02.Text += "et vous avez classé l'image comme : " + x.Text;
                }
             }
            if (PreviousPage != null)
            {
                RadioButton x = (RadioButton)PreviousPage.FindControl("RadioButton2");
                if(x.Checked == true)
                {
                    lbl02.Text += "et vous avez classé l'image comme : " + x.Text;
                }
            }
            if (PreviousPage != null)
            {
                RadioButton x = (RadioButton)PreviousPage.FindControl("RadioButton3");
                if(x.Checked == true)
                {
                    lbl02.Text += "et vous avez classé l'image comme :" + x.Text;
                }
            }

        }
       
    }
}