using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlServerCe;
using System.Data;

namespace CustomLayout
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (LogConfiguration.DemoStyle.ThreadContext
                == LogConfiguration.Deside())
            {
                Log.LogHelper.Info1("DefaultPageVisited_Info1",
                    HttpContext.Current.Request.UserHostAddress,
                    "Hey, I'm Visited, 1!");

                Log.LogHelper.Info1("DefaultPageVisited_Info1",
                    HttpContext.Current.Request.UserHostAddress,
                    "Hey, I'm Visited, 2!");
            }
            else if (LogConfiguration.DemoStyle.CustomPatternLayoutAddProperty
                        == LogConfiguration.Deside())
            {
                Log.LogHelper.Info2("DefaultPageVisited_Info2",
                    HttpContext.Current.Request.UserHostAddress,
                    "Hey, I'm Visited!");
            }
            else if (LogConfiguration.DemoStyle.CustomPatternLayoutRewrite
                        == LogConfiguration.Deside())
            {
                Log.LogHelper.Info3("DefaultPageVisited_Info3",
                    HttpContext.Current.Request.UserHostAddress,
                    "Hey, I'm Visited!");
            }

            #region test sqlserverce hardcode
            /* Test SQLServerCe hardCode
            string message = "Hey, I'm Visited!";
            string exception = string.Empty;
            string eventName = "DefaultPageVisited";
            string userIP = "255.255.255.255";

            using (SqlCeConnection conn = new SqlCeConnection(
                System.Configuration.ConfigurationManager.ConnectionStrings["logger"].ConnectionString))
            {
                using (SqlCeCommand cmd = new SqlCeCommand(
                    @"INSERT INTO Log (
[Date],[Thread],[Level],[Logger],[Message],[Exception],[EventName],[UserIP]) 
VALUES (@log_date, @thread, @log_level, @logger, @message, @exception, @event_name, @user_ip)",
                    conn))
                {
                    cmd.Parameters.Add(new SqlCeParameter("@log_date", DbType.DateTime));
                    cmd.Parameters[cmd.Parameters.Count - 1].Value = DateTime.Now;
                    cmd.Parameters.Add(new SqlCeParameter("@thread", DbType.String));
                    cmd.Parameters[cmd.Parameters.Count - 1].Value = "1";
                    cmd.Parameters.Add(new SqlCeParameter("@log_level", DbType.String));
                    cmd.Parameters[cmd.Parameters.Count - 1].Value = "Info";
                    cmd.Parameters.Add(new SqlCeParameter("@logger", DbType.String));
                    cmd.Parameters[cmd.Parameters.Count - 1].Value = "HardCode";
                    cmd.Parameters.Add(new SqlCeParameter("@message", DbType.String));
                    cmd.Parameters[cmd.Parameters.Count - 1].Value = message;
                    cmd.Parameters.Add(new SqlCeParameter("@exception", DbType.String));
                    cmd.Parameters[cmd.Parameters.Count - 1].Value = exception;
                    cmd.Parameters.Add(new SqlCeParameter("@event_name", DbType.String));
                    cmd.Parameters[cmd.Parameters.Count - 1].Value = eventName;
                    cmd.Parameters.Add(new SqlCeParameter("@user_ip", DbType.String));
                    cmd.Parameters[cmd.Parameters.Count - 1].Value = userIP;

                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            */
            #endregion

            #region display result
            BindData();
            #endregion
        }

        private void BindData()
        {
            DataTable table = new DataTable();
            using (SqlCeConnection conn = new SqlCeConnection(
                System.Configuration.ConfigurationManager.ConnectionStrings["logger"].ConnectionString))
            {
                using (SqlCeCommand cmd = new SqlCeCommand(
                    @"SELECT * FROM LOG",
                    conn))
                {
                    cmd.Connection.Open();
                    SqlCeDataAdapter adapter = new SqlCeDataAdapter(cmd);
                    adapter.Fill(table);
                }
            }
            GridView1.DataSource = table;
            GridView1.DataBind();
        }

        protected void btnClearData_Click(object sender, EventArgs e)
        {
            #region display result
            DataTable table = new DataTable();
            using (SqlCeConnection conn = new SqlCeConnection(
                System.Configuration.ConfigurationManager.ConnectionStrings["logger"].ConnectionString))
            {
                using (SqlCeCommand cmd = new SqlCeCommand(
                    @"DELETE FROM LOG",
                    conn))
                {
                    cmd.Connection.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            BindData();
            #endregion
        }
    }
}