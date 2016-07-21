using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AsyncAwaitLib
{
    public class ColorConsole
    {
        public static void WriteLine(string str, System.ConsoleColor color)
        {
            Console.ForegroundColor = color;
            Console.WriteLine(System.Threading.Thread.CurrentThread.ManagedThreadId.ToString() + "\t" + DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss.fff") + "\t" + str);
        }
    }
}
