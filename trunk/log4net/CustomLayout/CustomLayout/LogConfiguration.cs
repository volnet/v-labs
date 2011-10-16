using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;

namespace CustomLayout
{
    public class LogConfiguration
    {
        public static FileInfo GetConfigFile()
        {
            string filePath = System.Configuration.ConfigurationManager.AppSettings["logConfigFile"];
            if (string.IsNullOrEmpty(filePath))
            {
                filePath = "Web.config";
            }
            filePath = System.Web.HttpContext.Current.Server.MapPath(filePath);

            if (File.Exists(filePath))
            {
                return new FileInfo(filePath);
            }
            return null;
        }

        public enum DemoStyle
        { 
            ThreadContext,
            CustomPatternLayoutAddProperty,
            CustomPatternLayoutRewrite,
            Unknown
        }

        public static DemoStyle Deside()
        {
            string filePath = System.Configuration.ConfigurationManager.AppSettings["logConfigFile"];
            if (filePath.EndsWith("1.xml"))
            {
                return DemoStyle.ThreadContext;
            }
            else if (filePath.EndsWith("2.xml"))
            {
                return DemoStyle.CustomPatternLayoutAddProperty;
            }
            else if (filePath.EndsWith("3.xml"))
            {
                return DemoStyle.CustomPatternLayoutRewrite;
            }
            return DemoStyle.Unknown;
        }
    }
}
