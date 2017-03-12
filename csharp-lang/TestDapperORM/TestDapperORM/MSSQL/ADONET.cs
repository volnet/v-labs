using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestDapperORM.MSSQL
{
    public class ADONET
    {
        public static bool RunTest()
        {
            bool result = true;
            result &= TestConnect();
            return result;
        }

        private static bool TestConnect()
        {
            bool connected = false;
            using (SqlConnection conn = new SqlConnection(DbConfigs.ConnectionString))
            {
                conn.Open();
                connected = true;
                conn.Close();
            }
            return connected;
        }
    }
}
