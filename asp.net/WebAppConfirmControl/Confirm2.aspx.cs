using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace WebAppConfirmControl
{
    public partial class Confirm2 : System.Web.UI.Page
    {
        //MessageBoxHelper msg = new MessageBoxHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            //msg.RegistorConfirmContorl(btnUpdate1, "Are you sure?");
            //msg.RegistorConfirmContorl(btnUpdate2, "Surely?");

            btnUpdate1.BeginConfirm("Are you sure?");
            btnUpdate2.BeginConfirm("Surely?", false);
            lbtnUpdate1.BeginConfirm("Are you sure?");
        }

        protected void btnUpdate1_Click(object sender, EventArgs e)
        {
            //if (msg.GetConfirmStatus(btnUpdate1))
            if (btnUpdate1.EndConfirm())
            {
                Response.Write("You have confirm1!");
            }
            else
            {
                Response.Write("You clicked cancel1!");
            }
        }

        protected void btnUpdate2_Click(object sender, EventArgs e)
        {
            //if (msg.GetConfirmStatus(btnUpdate2))
            if (btnUpdate2.EndConfirm())
            {
                Response.Write("You have confirm2!");
            }
            else
            {
                Response.Write("You clicked cancel2!");
            }
        }

        protected void lbtnUpdate1_Click(object sender, EventArgs e)
        {
            if (lbtnUpdate1.EndConfirm())
            {
                Response.Write("You have confirm3!");
            }
            else
            {
                Response.Write("You clicked cancel3!");
            }
        }
    }
}
