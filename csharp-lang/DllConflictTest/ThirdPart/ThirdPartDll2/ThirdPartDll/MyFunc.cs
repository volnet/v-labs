using System;
using System.Collections.Generic;
using System.Text;

namespace ThirdPartDll
{
    public class MyFunc
    {
        public MyFunc Log(string log)
        {
            Console.WriteLine("ThirdPartDll.version.2:\t"+log);
            return this;
        }
    }
}
