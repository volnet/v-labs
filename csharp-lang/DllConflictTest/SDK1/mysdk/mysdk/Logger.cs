using System;
using System.Collections.Generic;
using System.Text;

namespace mysdk
{
    public class Logger
    {
        public Logger Log(string log)
        {
            ThirdPartDll.MyFunc func = new ThirdPartDll.MyFunc();
            func.Log("mysdk.Logger.Log:\t" + log);
            return this;
        }
    }
}
