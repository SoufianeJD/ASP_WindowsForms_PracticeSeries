using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP1_SoufianeJD
{
    public partial class EXO4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
                lblMessage.Text = "La page est envoyée au serveur";
        }
    }
}