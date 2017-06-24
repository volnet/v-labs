using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppConfirmControl
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                label.Text = "Not PostBack";
            }
            else
            {
                label.Text = "It's PostBack";
            }
            btnSubmit.OnClientClick = "if(!confirm('Ok?')) return false;";
            lbtnLink.OnClientClick = "if(!confirm('Ok?')) return false;";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            label.Text = "Submited!";
        }
    }
}
