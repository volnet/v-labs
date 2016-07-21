using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SlowWeb
{
    public partial class Sleep : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(8000);
            Label1.Text = "System.Threading.Thread.Sleep(8000);";
        }
    }
}