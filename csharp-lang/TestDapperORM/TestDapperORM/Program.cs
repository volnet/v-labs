using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TestDapperORM.MSSQL;

namespace TestDapperORM
{
    class Program
    {
        static void Main(string[] args)
        {
            ADONET.RunTest();
            DapperTest.RunTest();
        }
    }
}
