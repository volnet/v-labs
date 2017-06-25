using System;
using System.Collections.Generic;
using System.Text;

namespace TestJson
{
    class Program
    {
        static void Main(string[] args)
        {
            MyClass obj = new MyClass();
            obj.MyText1 = "This is text1";
            obj.MyText2 = "This is text2";
            obj.MyInt1 = -1;
            obj.MyDouble1 = 1;

            MyClass obj2 = new MyClass();
            obj2.MyDouble1 = 100;

            obj.MyClassObj = obj2;
            

            Newtonsoft.Json.JsonSerializerSettings settings = new Newtonsoft.Json.JsonSerializerSettings();
            settings.Formatting = Newtonsoft.Json.Formatting.Indented;

            string json = Newtonsoft.Json.JsonConvert.SerializeObject(obj, settings);
            Console.WriteLine(json);
        }
    }

    public class MyClass
    {
        public string MyText1 { get; set; }
        public string MyText2 { get; set; }
        public int MyInt1 { get; set; }
        public double MyDouble1 { get; set; }
        public MyClass MyClassObj { get; set; }
    }
}
