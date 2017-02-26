using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace TestHttpMethod
{
    public class HttpClientTest
    {
        public static async Task<string> HttpGet(string uri)
        {
            HttpClient client = new HttpClient();
            return await client.GetStringAsync(uri);
        }
    }
}
