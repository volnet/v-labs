using System;
using System.Collections.Generic;
using System.Text;

namespace Byte2TextTest
{
    class Program
    {
        static void Main(string[] args)
        {
            string rawText = "中文英文English法语。%&*&）（——";
            for (int i = 0; i < 3; ++i)
            {
                rawText += rawText;
            }


            Check(rawText, System.Text.Encoding.ASCII);
            Check(rawText, System.Text.Encoding.UTF8);
            AnyTransfer(rawText, new Encoding[] { System.Text.Encoding.ASCII, System.Text.Encoding.UTF8 });

            PrintCookieOctetHtml5Supported();
        }

        private static void PrintCookieOctetHtml5Supported()
        {
            int start = 0x80;
            int end = 0xFF;
            Console.OutputEncoding = System.Text.Encoding.UTF8;
            for (int i = start; i <= end; ++i)
            {
                // Console.WriteLine("0x{0:x}:{1}", i, System.Text.Encoding.UTF8.GetString(new byte[] { (byte)i }));
                Console.WriteLine("0x{0:x}:{1}", i, (char)i);
            }
        }

        private static void AnyTransfer(string data, System.Text.Encoding[] encodings)
        {
            Console.WriteLine("AnyTransfer:");
            Console.WriteLine("\tdata=" + data);
            foreach (System.Text.Encoding encoding in encodings)
            {
                Console.WriteLine("\t" + encoding.EncodingName.ToString());
                byte[] dataBytes = encoding.GetBytes(data);
                string hexData = ByteArrayToString(dataBytes);
                Console.WriteLine("\thexData=" + hexData);
                string base64Data = Convert.ToBase64String(dataBytes);
                Console.WriteLine("\tbase64Data=" + base64Data);
                string reverseData = encoding.GetString(dataBytes);
                Console.WriteLine("\treverseData=" + reverseData);
                Console.WriteLine();
            }
        }

        private static void Check(string data, System.Text.Encoding encoding)
        {
            Console.WriteLine(encoding.EncodingName.ToString());
            byte[] dataBytes = encoding.GetBytes(data);
            Console.WriteLine("\tdataBytes.Count=" + dataBytes.Length);

            string hexData = ByteArrayToString(dataBytes);
            Console.WriteLine("\thexData.Count=" + hexData.Length);

            byte[] reverseBytes = StringToByteArray(hexData);
            if (!BytesEquals(dataBytes, reverseBytes))
            {
                Console.Error.WriteLine("dataBytes != reverseBytes");
            }

            string base64Data = Convert.ToBase64String(dataBytes);
            Console.WriteLine("\tbase64Data.Count=" + base64Data.Length);
        }

        private static bool BytesEquals(byte[] b1, byte[] b2)
        {
            if (b1 == null && b2 == null)
            {
                return true;
            }
            if (b1 != null && b2 != null && b1.Length == b2.Length)
            {
                for (int i = 0; i < b1.Length; ++i)
                {
                    if (b1[i] != b2[i])
                        return false;
                }
                return true;
            }
            return false;
        }

        private static string ByteArrayToString(byte[] ba)
        {
            string hex = BitConverter.ToString(ba);
            return hex.Replace("-", "");
        }

        private static byte[] StringToByteArray(String hex)
        {
            int NumberChars = hex.Length;
            byte[] bytes = new byte[NumberChars / 2];
            for (int i = 0; i < NumberChars; i += 2)
                bytes[i / 2] = Convert.ToByte(hex.Substring(i, 2), 16);
            return bytes;
        }
    }
}
