using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace TestHttpMethod
{
    public class HttpWebRequestTest
    {
        public static string HttpGet(string uri)
        {
            HttpWebRequest request = (HttpWebRequest)HttpWebRequest.Create(uri);
            if (request != null)
            {
                request.Method = "GET";
                HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                if (response != null)
                {
                    var responseStream = response.GetResponseStream();
                    System.IO.StreamReader reader = new System.IO.StreamReader(responseStream);
                    return reader.ReadToEnd();
                }
            }
            return string.Empty;
        }
    }
}
