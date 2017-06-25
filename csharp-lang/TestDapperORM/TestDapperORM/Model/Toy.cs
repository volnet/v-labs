using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestDapperORM.Model
{
    public class Toy
    {
        public int Id { get; set; }

        public int TT1_Id { get; set; }
        public string Name { get; set; }
        public DateTime GetDateTime { get; set; }

        public Dog Owner { get; set; }

        public override string ToString()
        {
            return string.Format("Toy[{0}].Name={1}, get from {2}, by {3}",
                Id, Name, GetDateTime.ToString("yyyy-MM-dd HH:mm:ss.fff"),
                Owner != null ? Owner.Name + "(" + Owner.Id + ")" : string.Empty);
        }
    }
}
