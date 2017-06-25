using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestDapperORM.Model
{
    public class Dog
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Type { get; set; }

        private List<Toy> _toies = new List<Toy>();
        public List<Toy> Toies { get { return _toies; } }
        public override string ToString()
        {
            string result =  "Id=" + Id + ",Name=" + Name + ",Type=" + Type;
            if (Toies != null)
            {
                foreach (var toy in Toies)
                {
                    result += Environment.NewLine + "\t" + toy;
                }
            }
            return result;
        }
    }

    public class DogHelper
    {
        public static void TraceDogs(IEnumerable<Dog> dogs)
        {
            foreach (var dog in dogs)
            {
                Console.WriteLine(dog.ToString());
            }
        }
    }
}
