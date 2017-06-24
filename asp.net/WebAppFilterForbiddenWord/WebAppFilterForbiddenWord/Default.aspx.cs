using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppFilterForbiddenWord {
    public partial class _Default : System.Web.UI.Page {
        protected void Page_Load(object sender, EventArgs e) {

        }

        protected void btnSubmit_Click(object sender, EventArgs e) {
            lbAlert.Text = string.Empty;
            if (txtPassword.Text == "fuck") {
                lbOutput.Text += txtName.Text
                    + "  在" + DateTime.Now.ToLongDateString()
                    + "时，发表评论：<br />" + txtComment.Text
                    + "<br />";
                txtComment.Text = string.Empty;
            }
            else {
                lbAlert.Text = "<span style=\"color:red;\">请输入正确的密码！</span>";
            }
        }
        protected override void Render(HtmlTextWriter writer)
        {
            base.Render(writer);
        }
    }
}
