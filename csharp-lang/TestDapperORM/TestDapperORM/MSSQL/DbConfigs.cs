using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestDapperORM.MSSQL
{
    public class DbConfigs
    {
        public static string ConnectionString
        {
            get
            {
                return System.Configuration.ConfigurationManager.ConnectionStrings["MSSQL_TestDataBase"].ConnectionString;
            }
        }
    }
}
