using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AsyncAwaitLib
{
    public class WasteTime
    {
        public static async void Waste(int millisecondsTimeout)
        {
            DateTime endTime = DateTime.Now.AddMilliseconds(millisecondsTimeout);
            while (DateTime.Now < endTime)
            {
            }

            // await Task.Delay(millisecondsTimeout);

            // System.Threading.Thread.Sleep(millisecondsTimeout);
            return;
        }
    }
}
