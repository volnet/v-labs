using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestHttpMethod
{
    class Program
    {
        static void Main(string[] args)
        {
            string uri1 = "http://www.sina.com.cn";
            string uri2 = "https://www.baidu.com";
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.WriteLine(Top(HttpClientTest.HttpGet(uri1).Result, 100));
            Console.ResetColor();
            Console.ForegroundColor = ConsoleColor.Magenta;
            Console.WriteLine(Top(HttpClientTest.HttpGet(uri2).Result, 100));
            Console.ResetColor();
            Task.WaitAll();

            Console.ForegroundColor = ConsoleColor.Green;
            Console.WriteLine(Top(HttpWebRequestTest.HttpGet(uri1),100));
            Console.ResetColor();
            Console.ForegroundColor = ConsoleColor.Red;
            Console.WriteLine(Top(HttpWebRequestTest.HttpGet(uri2), 100));
            Console.ResetColor();
        }

        static string Top(string text, int length)
        {
            if (!string.IsNullOrEmpty(text))
            {
                if (text.Length > length)
                {
                    return text.Substring(0, length);
                }
                else
                {
                    return text;
                }
            }
            return string.Empty;
        }
    }
}
