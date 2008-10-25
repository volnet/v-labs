using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace WebAppConfirmControl
{
    public static class MessageBox
    {
        public static void RegisterShow(this WebControl registerControl, string message)
        {
            RegisterShowControl(registerControl, message, "onclick", null);
        }

        public static void RegisterShow(this WebControl registerControl, string message, EventHandler wrongLogical)
        {
            RegisterShowControl(registerControl, message, "onclick", wrongLogical);
        }

        public static void RegisterShowControl(WebControl registerControl, string message, string clientEventName, EventHandler wrongLogical)
        {
            System.Web.UI.Page page = registerControl.Page;


            string rightLogicalCode = page.ClientScript.GetPostBackEventReference(registerControl, string.Empty);
            string wrongLogicalCode = string.Empty;

            if (wrongLogical != null)
            {
                Button btnCancel = new Button();
                btnCancel.Attributes["style"] = "display:none;";
                btnCancel.Click += new EventHandler(wrongLogical);
                page.Form.Controls.Add(btnCancel);

                wrongLogicalCode = "var _confrim_cancel_control_ = window.document.getElementById('" + btnCancel.ClientID + "'); if(_confrim_cancel_control_){_confrim_cancel_control_.click();}";
            }

            string jscodeA = "javascript:if(confirm('" + message + "')){function _confirm_(){" + rightLogicalCode + ";";
            string jscodeB = "} _confirm_();}else{ " + (wrongLogical != null ? wrongLogicalCode : "return false;") + " ; return false;}";

            if (registerControl.Attributes[clientEventName] != null && registerControl.Attributes[clientEventName].Contains("_confirm_()"))
                registerControl.Attributes[clientEventName] = string.Empty;

            registerControl.Attributes[clientEventName] = jscodeA + registerControl.Attributes[clientEventName] + jscodeB;
        }
    }
}
