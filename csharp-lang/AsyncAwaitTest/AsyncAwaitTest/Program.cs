using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AsyncAwaitLib;

namespace AsyncAwaitTest
{
    class Program
    {
        static void Main(string[] args)
        {
            ConsoleColor color = ConsoleColor.Green;
            string url = "http://localhost:4883/Sleep.aspx";

            ColorConsole.WriteLine("Main -> 1. SyncRPC(url);", color);
            SyncRPC(url);

            ColorConsole.WriteLine("----------------------", color);
            ColorConsole.WriteLine("Main -> 2. AsyncRPC1(url);", color);
            AsyncRPC1(url);

            ColorConsole.WriteLine("----------------------", color);
            ColorConsole.WriteLine("Main -> 3. var task = AsyncRPC2(url);", color);
            var task = AsyncRPC2(url);
            ColorConsole.WriteLine("Main -> Task.WaitAll(task);", color);
            Task.WaitAll(task);
            ColorConsole.WriteLine("Main -> end", color);
        }

        private static void SyncRPC(string url)
        {
            ConsoleColor color = ConsoleColor.DarkMagenta;
            RemoteClient client = new RemoteClient();
            ColorConsole.WriteLine("SyncRPC -> string html = client.GetBodyAsync(url, \"SyncRPC.\").Result;", color);
            string html = client.GetBodyAsync(url, "SyncRPC.", color).Result;
            ColorConsole.WriteLine("SyncRPC -> end", color);
            ColorConsole.WriteLine("SyncRPC -> body = ", color);
            ColorConsole.WriteLine(Limit(html, "SyncRPC"), color);
        }

        private static async void AsyncRPC1(string url)
        {
            ConsoleColor color = ConsoleColor.DarkYellow;
            RemoteClient client = new RemoteClient();
            ColorConsole.WriteLine("AsyncRPC1 -> var task = client.GetBodyAsync(url);", color);
            var task = client.GetBodyAsync(url, "AsyncRPC1", color);
            ColorConsole.WriteLine("AsyncRPC1 -> WasteTime.Waste(2000);", color);
            WasteTime.Waste(2000);
            ColorConsole.WriteLine("AsyncRPC1 -> string html = await task;", color);
            string html = await task;
            ColorConsole.WriteLine("AsyncRPC1 -> Task.WaitAll(task);", color);
            Task.WaitAll(task);
            ColorConsole.WriteLine("AsyncRPC1 -> end", color);
            ColorConsole.WriteLine("AsyncRPC1 -> body = ", color);
            ColorConsole.WriteLine(Limit(html, "AsyncRPC1"), color);
        }

        private static async Task AsyncRPC2(string url)
        {
            ConsoleColor color = ConsoleColor.Cyan;
            RemoteClient client = new RemoteClient();
            ColorConsole.WriteLine("AsyncRPC2 -> var task = await client.GetBodyAsync(url);", color);
            var task = await client.GetBodyAsync(url, "AsyncRPC2", color);
            ColorConsole.WriteLine("AsyncRPC2 -> WasteTime.Waste(2000);", color);
            WasteTime.Waste(2000);
            ColorConsole.WriteLine("AsyncRPC2 -> string html = task;", color);
            string html = task;
            ColorConsole.WriteLine("AsyncRPC2 -> end", color);
            ColorConsole.WriteLine("AsyncRPC2 -> body = ", color);
            ColorConsole.WriteLine(Limit(html, "AsyncRPC2"), color);
        }

        static string Limit(string str, string markName)
        {
            int limitCount = 65;
            int startIndex = 0;
            if (string.IsNullOrEmpty(str))
            {
                return string.Empty;
            }
            else
            {
                startIndex = str.IndexOf("begin:") + "begin:".Length;
            }
            if (str.Length < limitCount)
            {
                return markName + "." + str.Substring(startIndex);
            }
            else
            {
                return markName + "." + str.Substring(startIndex, limitCount);
            }
        }
    }
}
