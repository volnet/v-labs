using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace AsyncAwaitLib
{
    public class RemoteClient
    {
        public async Task<string> GetBodyAsync(string requestUri, string markName, ConsoleColor color)
        {
            HttpClient client = new HttpClient();

            ColorConsole.WriteLine(markName + ".RemoteClient -> var task = client.GetStringAsync(requestUri);", color);

            var task = client.GetStringAsync(requestUri);

            ColorConsole.WriteLine(markName + ".RemoteClient -> WasteTime.Waste(4500);", color);

            WasteTime.Waste(4500);

            ColorConsole.WriteLine(markName + ".RemoteClient -> var result = await task;", color);

            var result = await task;

            ColorConsole.WriteLine(markName + ".RemoteClient -> Task.WaitAll(task);", color);

            Task.WaitAll(task);

            ColorConsole.WriteLine(markName + ".RemoteClient -> end", color);

            return result;
        }
    }
}
