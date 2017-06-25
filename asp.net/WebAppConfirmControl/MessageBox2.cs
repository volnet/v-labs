using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Text;

namespace WebAppConfirmControl
{
    public static class MessageBoxS
    {
        /// <summary>
        /// Begin the Confirm, you must use this method to let the control has the ability to confrim message.
        /// </summary>
        /// <param name="control"></param>
        /// <param name="message"></param>
        public static void BeginConfirm(this WebControl control, string message)
        {
            MessageBoxHelper.RegisterConfirmContorl(control, message,true);
        }

        /// <summary>
        /// Begin the Confirm, you must use this method to let the control has the ability to confrim message.
        /// </summary>
        /// <param name="control"></param>
        /// <param name="message"></param>
        /// <param name="hasCancelHandler">To indicate if the confirm method have the cancel method.</param>
        public static void BeginConfirm(this WebControl control, string message, bool hasCancelHandler)
        {
            MessageBoxHelper.RegisterConfirmContorl(control, message, hasCancelHandler);
        }

        /// <summary>
        /// By the method, you can get the result of confirm
        /// </summary>
        /// <param name="control"></param>
        /// <returns></returns>
        public static bool EndConfirm(this WebControl control)
        {
            return MessageBoxHelper.GetConfirmStatus(control);
        }
    }

    public class MessageBoxHelper
    {
        /// <summary>
        /// Retrieve the HiddenField
        /// </summary>
        /// <param name="page"></param>
        /// <returns></returns>
        private static HiddenField RetrieveTempStorage(Page page)
        {
            string tempStorageName = CreateHiddenName();
            foreach (Control ctl in page.Form.Controls)
            {
                if (ctl.ClientID == tempStorageName)
                    return ctl as HiddenField;
            }
            return null;
        }

        /// <summary>
        /// Get the HiddenField's Name/ClientID
        /// </summary>
        /// <returns></returns>
        private static string CreateHiddenName()
        {
            return "_Confirm";
        }

        private const char CONTROL_SEPARATOR = '|';
        private const char VALUE_SEPARATOR = ':';

        /// <summary>
        /// Register the control as the confirm control.
        /// </summary>
        /// <param name="control"></param>
        /// <param name="message"></param>
        /// <param name="hasCancelHandler"></param>
        public static void RegisterConfirmContorl(WebControl control, string message, bool hasCancelHandler)
        {
            string scriptBlockKey = "_confirm";
            if (!control.Page.ClientScript.IsClientScriptBlockRegistered(scriptBlockKey))
            {
                //Create hidden area
                if (RetrieveTempStorage(control.Page) == null)
                {
                    HiddenField tempStorage = new HiddenField();
                    tempStorage.ID = CreateHiddenName();
                    control.Page.Form.Controls.Add(tempStorage);
                }

                //Export the _confirm javascript code.
                StringBuilder _confirm_js = new StringBuilder();
                _confirm_js.Append("<script language=\"javascript\" type=\"text/javascript\">");
                _confirm_js.Append(" function _confirm(targetId, message) {");
                _confirm_js.Append("     var result = window.confirm(message);");

                //only IE(there is a method to extend the event in firefox.)
                _confirm_js.Append("     var hidden = document.getElementById('" + RetrieveTempStorage(control.Page).ClientID + "');");
                _confirm_js.Append("     if (hidden) {");
                _confirm_js.Append("         hidden.value = targetId + \"" + VALUE_SEPARATOR.ToString() + "\" + result + \"" + CONTROL_SEPARATOR.ToString() + "\";");
                _confirm_js.Append("     }");

                _confirm_js.Append("     return result;");
                _confirm_js.Append(" }");
                _confirm_js.Append("</script>");

                control.Page.ClientScript.RegisterClientScriptBlock(control.GetType(), scriptBlockKey, _confirm_js.ToString());
            }

            if (control.Attributes["onclick"] != null && control.Attributes["onclick"].Contains("_confirm("))
                control.Attributes["onclick"] = string.Empty;

            if (!hasCancelHandler)
                control.Attributes["onclick"] += "var result=";
            control.Attributes["onclick"] += "_confirm('" + control.ClientID + "','" + message + "');";
            if (!hasCancelHandler)
                control.Attributes["onclick"] += " if(!result) return false;";
        }

        /// <summary>
        /// Analyse the HiddenField to findout the result of the confirm form.
        /// </summary>
        /// <param name="control"></param>
        /// <returns></returns>
        public static bool GetConfirmStatus(WebControl control)
        {
            HiddenField tempStorage = RetrieveTempStorage(control.Page);

            if (tempStorage != null)
            {
                string[] controls = tempStorage.Value.Split(CONTROL_SEPARATOR);
                foreach (string ctl in controls)
                {
                    if (ctl.Trim() != string.Empty)
                    {
                        string[] ctlPair = ctl.Split(VALUE_SEPARATOR);
                        if (ctlPair == null || ctlPair.Length != 2)
                        {
                            throw new ArgumentException("The hidden code is error!");
                        }
                        else
                        {
                            if (ctlPair[0] == control.ClientID)
                            {
                                tempStorage.Value = string.Empty;
                                return ctlPair[1].Trim().ToLower() == "true";
                            }
                        }
                    }
                }
            }
            return false;
        }
    }
}
