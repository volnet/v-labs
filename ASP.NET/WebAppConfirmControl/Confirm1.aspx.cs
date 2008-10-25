using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppConfirmControl
{
    public partial class Confirm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnUpdate.RegisterShow("Are you sure?", cancel_Update);
            lbtnUpdtate.RegisterShow("Are you sure?", (obj, args) =>
            {
                //TODO:Your logical here.
                Response.Write("cancel_Update:" + txtText.Text);
                //TODO:Your logical here.
            });
            btnUpdateWithoutCancelCode.RegisterShow("Are you sure?");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            //TODO:Your logical here.
            Response.Write("btnUpdate_Click:" + txtText.Text);
            //TODO:Your logical here.
        }

        protected void lbtnUpdtate_Click(object sender, EventArgs e)
        {
            //TODO:Your logical here.
            Response.Write("lbtnUpdate_Click:" + txtText.Text);
            //TODO:Your logical here.
        }

        protected void btnUpdateWithoutCancelCode_Click(object sender, EventArgs e)
        {
            //TODO:Your logical here.
            Response.Write("btnUpdateWithoutCancelCode_Click:" + txtText.Text);
            //TODO:Your logical here.
        }

        protected void cancel_Update(object sender, EventArgs e)
        {
            //TODO:Your logical here.
            Response.Write("cancel_Update:" + txtText.Text);
            //TODO:Your logical here.
        }
    }
}
