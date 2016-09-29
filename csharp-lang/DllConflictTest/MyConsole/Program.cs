using System;
using System.Collections.Generic;
using System.Text;

namespace MyConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            ThirdPartDll.MyFunc func = new ThirdPartDll.MyFunc();
            func.Log("MyConsole.Program.Main:\tInvoke version 1 ThirdPartDll");

            mysdk.Logger sdk = new mysdk.Logger();
            sdk.Log("MyConsole.Program.Main:\tInvoke mysdk");
        }
    }
}
