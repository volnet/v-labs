using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using TestDapperORM.Model;
using TestDapperORM.DapperExtensions;

namespace TestDapperORM.MSSQL
{
    public class DapperTest
    {
        public static bool RunTest()
        {
            bool result = true;
            result &= TestSelect1();
            int maxCount = 10;
            for (int i = 0; i < maxCount; ++i)
            {
                result &= TestInsert(i);
                result &= TestInsertToies(i, i);
                result &= TestInsertToies(i + maxCount, i);
            }
            result &= TestSelect2();
            result &= TestSelectDogsWithToies();
            result &= TestSelectDogsWithToies2();
            return result;
        }

        private static bool TestSelect1()
        {
            bool result = false;
            using (IDbConnection conn = new SqlConnection(DbConfigs.ConnectionString))
            {
                conn.Open();
                var dogs = conn.Query<Dog>("select 1 as Id, 2 as Name, 3 as Type");
                DogHelper.TraceDogs(dogs);
            }
            return result;
        }

        private static bool TestInsert(int key)
        {
            bool result = false;
            using (IDbConnection conn = new SqlConnection(DbConfigs.ConnectionString))
            {
                conn.Open();
                var sql = @"insert into TestTable1 
    select " + key + @" as Id, 'DogName_" + key + @"' as Name, 'Type_" + key + @"' as Type where not exists (
        select 1 from TestTable1 x where x.Id = " + key + @"
    )";
                Console.WriteLine("sql=" + sql);
                conn.Execute(sql);
            }
            return result;
        }

        private static bool TestSelect2()
        {
            bool result = false;
            using (IDbConnection conn = new SqlConnection(DbConfigs.ConnectionString))
            {
                conn.Open();
                var dogs = conn.Query<Dog>("select * from TestTable1");
                DogHelper.TraceDogs(dogs);
            }
            return result;
        }

        private static bool TestInsertToies(int key, int ownerKey)
        {
            bool result = false;
            using (IDbConnection conn = new SqlConnection(DbConfigs.ConnectionString))
            {
                conn.Open();
                var sql = @"insert into TestTable2 
    select " + key + @" as Id, "+ ownerKey + @" as TT1_Id, 'ToyName_" + key + @"' as Name, getdate() as GetDateTime where not exists (
        select 1 from TestTable2 x where x.Id = " + key + @"
    )";
                Console.WriteLine("sql=" + sql);
                conn.Execute(sql);
            }
            return result;
        }

        private static bool TestSelectDogsWithToies()
        {
            bool result = false;
            using (IDbConnection conn = new SqlConnection(DbConfigs.ConnectionString))
            {
                conn.Open();
                var dogs = conn.Query<Dog, Toy, Dog>("select * from TestTable1 a inner join TestTable2 b on a.Id = b.TT1_Id",
                    (dog, toy) =>
                    {
                        dog.Toies.Add(toy);
                        if (toy != null)
                            toy.Owner = dog;
                        return dog;
                    });
                DogHelper.TraceDogs(dogs);
            }
            return result;
        }

        private static bool TestSelectDogsWithToies2()
        {
            bool result = false;
            using (IDbConnection conn = new SqlConnection(DbConfigs.ConnectionString))
            {
                conn.Open();
                string sql = @"select * from TestTable1 a 
                                select * from TestTable1 a inner join TestTable2 b on a.Id = b.TT1_Id";

               var dogs=  conn.QueryMultiple(sql).Map<Dog, Toy, int>(
                   dog => dog.Id,
                   toy => toy.TT1_Id, 
                   (dog, toies) => {
                       dog.Toies.AddRange(toies);
                       if (toies != null) {
                           foreach (var toy in toies)
                           {
                               toy.Owner = dog;
                           }
                       }
                   });
                DogHelper.TraceDogs(dogs);
            }
            return result;
        }
    }
}
