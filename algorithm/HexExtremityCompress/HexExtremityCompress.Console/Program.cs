using System;
using System.Collections.Generic;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HexExtremityCompress.TestConsole
{
    class Program
    {
        static void Main(string[] args)
        {
            string data = string.Empty;
            for (int i = 0; i < 2560; ++i)
            {
                data += (char)i;
            }

            data = "u=gongcen,ip=192.168.1.1,t=2016-10-13T11:31:20,r=25564568";
            Compress(data);
        }

        /*
         * compress:
         * 1. byte[] => hex
         * 2. g..z, A..Z total(46) => replace (00,01,..09,10,20,30..90)
         * 3. 0..1, total (32) => replace
         */

        //public static string Compress(string data)
        //{
        //    Console.WriteLine("data=\t" + data);
        //    Console.WriteLine("data.Length=\t" + data.Length);
        //    Encoding encoding = System.Text.Encoding.UTF8;
        //    Console.WriteLine("encoding.Name=\t" + encoding.EncodingName);
        //    byte[] dataBytes = ToBytes(data, encoding);
        //    Console.WriteLine("dataBytes.Length=" + dataBytes.Length);

        //    string hex = ToHex(dataBytes);
        //    Console.WriteLine("hex=\t" + hex);
        //    Console.WriteLine("hex.Length=\t" + hex.Length);

        //    string mixHex = CompressReplaceBytes(dataBytes, GetCompressConvertTableLevel1());
        //    Console.WriteLine("mixHex=\t" + mixHex);
        //    Console.WriteLine("mixHex.Length=\t" + mixHex.Length);

        //    CanLevel2Compress(mixHex);

        //    string mixHex2 = CompressReplaceString(mixHex, GetCompressConvertTableLevel2());
        //    Console.WriteLine("mixHex2=\t" + mixHex2);
        //    Console.WriteLine("mixHex2.Length=\t" + mixHex2.Length);

        //    Console.WriteLine("mixHex compress percent(%):\t" + ((double)mixHex.Length / (double)hex.Length));
        //    Console.WriteLine("mixHex2 compress percent(%):\t" + ((double)mixHex2.Length / (double)hex.Length));

        //    return string.Empty;
        //}


        public static string Compress(string data)
        {
            Console.WriteLine("data=\t" + data);
            Console.WriteLine("data.Length=\t" + data.Length);
            Encoding encoding = System.Text.Encoding.UTF8;
            Console.WriteLine("encoding.Name=\t" + encoding.EncodingName);
            byte[] dataBytes = ToBytes(data, encoding);
            Console.WriteLine("dataBytes.Length=" + dataBytes.Length);

            string[] hexArray = ToHexArray(dataBytes);
            string hex = ArrayToString(hexArray);
            Console.WriteLine("hex=\t" + hex);
            Console.WriteLine("hex.Length=\t" + hex.Length);

            string[] mixHexArray = CompressReplaceString(hexArray, GetCompressConvertTableLevel1Str());
            string mixHex = ArrayToString(mixHexArray);
            Console.WriteLine("mixHex=\t" + mixHex);
            Console.WriteLine("mixHex.Length=\t" + mixHex.Length);

            if (CanLevel2Compress(mixHexArray))
            {
                string[] mixHex2Array = CompressReplaceString(mixHexArray, GetCompressConvertTableLevel2());
                string mixHex2 = ArrayToString(mixHex2Array);
                Console.WriteLine("mixHex2=\t" + mixHex2);
                Console.WriteLine("mixHex2.Length=\t" + mixHex2.Length);

                Console.WriteLine("mixHex compress percent(%):\t" + ((double)mixHex.Length / (double)hex.Length));
                Console.WriteLine("mixHex2 compress percent(%):\t" + ((double)mixHex2.Length / (double)hex.Length));
            }
            return string.Empty;
        }

        //private static void CanLevel2Compress(string mixHex)
        //{
        //    ConsoleColor defaultColor = Console.ForegroundColor;
        //    if (!mixHex.Contains("6"))
        //    {
        //        Console.ForegroundColor = ConsoleColor.Green;
        //        Console.WriteLine("6 is replaced, can compress by level 2");
        //        Console.ForegroundColor = defaultColor;
        //    }
        //    else
        //    {
        //        Console.ForegroundColor = ConsoleColor.Red;
        //        Console.WriteLine("6 is not replaced, can not compress by level 2");
        //        Console.ForegroundColor = defaultColor;
        //    }
        //}

        private static bool CanLevel2Compress(string[] mixHex)
        {
            ConsoleColor defaultColor = Console.ForegroundColor;

            bool result = false;
            foreach (string item in mixHex)
            {
                if (item == "6")
                {
                    result = false;
                }
                else
                {
                    result = true;
                }
            }
            if (result == true)
            {
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("6 is replaced, can compress by level 2");
                Console.ForegroundColor = defaultColor;
            }
            else
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine("6 is not replaced, can not compress by level 2");
                Console.ForegroundColor = defaultColor;
            }
            return result;   
        }

        private static byte[] ToBytes(string data, Encoding encoding)
        {
            return encoding.GetBytes(data);
        }

        private static string ToHex(byte[] data)
        {
            string hex = string.Empty;
            foreach (byte b in data)
            {
                hex += string.Format("{0:x}", b);
            }
            return hex;

        }

        private static string[] ToHexArray(byte[] data)
        {
            List<string> hexArray = new List<string>();
            foreach (byte b in data)
            {
                hexArray.Add(string.Format("{0:x}", b));
            }
            return hexArray.ToArray();
        }

        private static string CompressReplaceBytes(byte[] data, Dictionary<byte, string> cct)
        {
            ConsoleColor defaultColor = Console.ForegroundColor;

            string result = string.Empty;
            for (int i = 0; i < data.Length; ++i)
            {
                if (cct.ContainsKey(data[i]))
                {
                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.Write(cct[data[i]]);
                    result += cct[data[i]];
                    Console.ForegroundColor = defaultColor;
                }
                else
                {
                    Console.ForegroundColor = defaultColor;
                    Console.Write(string.Format("{0:x}", data[i]));
                    result += string.Format("{0:x}", data[i]);
                    Console.ForegroundColor = defaultColor;
                }
            }
            Console.WriteLine();
            return result;
        }

        private static string[] CompressReplaceString(string[] dataArray, Dictionary<string, string> cct)
        {
            ConsoleColor defaultColor = Console.ForegroundColor;

            List<string> result = new List<string>();

            foreach (string item in dataArray)
            {
                if (cct.ContainsKey(item))
                {
                    result.Add(cct[item]);

                    Console.ForegroundColor = ConsoleColor.Red;
                    Console.Write(cct[item]);
                    Console.ForegroundColor = defaultColor;
                }
                else
                {
                    result.Add(item);

                    Console.ForegroundColor = defaultColor;
                    Console.Write(item);
                }
            }

            Console.WriteLine();
            return result.ToArray();
        }

        private static Dictionary<byte, string> GetCompressConvertTableLevel1()
        {
            /*
             * 原则1：涵盖最常用的字符
             * 原则2：要将某个二进制值（0……f）彻底替换掉（可进行二次压缩的前提）
             */
            Dictionary<byte, string> table = new Dictionary<byte, string>();
            table.Add(0x60, "g"); 
            table.Add(0x61, "h"); 
            table.Add(0x62, "i"); 
            table.Add(0x63, "j"); 
            table.Add(0x64, "k"); 
            table.Add(0x65, "l"); 
            table.Add(0x66, "m"); 
            table.Add(0x67, "n"); 
            table.Add(0x68, "o"); 
            table.Add(0x69, "p"); 
            table.Add(0x6a, "q"); 
            table.Add(0x6b, "r"); 
            table.Add(0x6c, "s"); 
            table.Add(0x6d, "t"); 
            table.Add(0x6e, "u"); 
            table.Add(0x6f, "v"); 
            table.Add(0x06, "w"); 
            table.Add(0x16, "x"); 
            table.Add(0x26, "y"); 
            table.Add(0x36, "z"); 
            table.Add(0x46, "A"); 
            table.Add(0x56, "B"); 
            table.Add(0x76, "C"); 
            table.Add(0x86, "D"); 
            table.Add(0x96, "E"); 
            table.Add(0xa6, "F"); 
            table.Add(0xb6, "G"); 
            table.Add(0xc6, "H"); 
            table.Add(0xd6, "I"); 
            table.Add(0xe6, "J"); 
            table.Add(0xf6, "K"); 
            table.Add(0x30, "L"); 
            table.Add(0x31, "M"); 
            table.Add(0x32, "N"); 
            table.Add(0x33, "O"); 
            table.Add(0x34, "P"); 
            table.Add(0x35, "Q"); 
            table.Add(0x37, "R"); 
            table.Add(0x38, "S"); 
            table.Add(0x39, "T"); 
            table.Add(0x3a, "U"); 
            table.Add(0x3b, "V"); 
            table.Add(0x3c, "W"); 
            table.Add(0x3d, "X"); 
            table.Add(0x3e, "Y"); 
            table.Add(0x3f, "Z");  

            return table;
        }

        private static Dictionary<string, string> GetCompressConvertTableLevel1Str()
        {
            /*
             * 原则1：涵盖最常用的字符
             * 原则2：要将某个二进制值（0……f）彻底替换掉（可进行二次压缩的前提）
             */
            Dictionary<string, string> table = new Dictionary<string, string>();
            table.Add("60", "g");
            table.Add("61", "h");
            table.Add("62", "i");
            table.Add("63", "j");
            table.Add("64", "k");
            table.Add("65", "l");
            table.Add("66", "m");
            table.Add("67", "n");
            table.Add("68", "o");
            table.Add("69", "p");
            table.Add("6a", "q");
            table.Add("6b", "r");
            table.Add("6c", "s");
            table.Add("6d", "t");
            table.Add("6e", "u");
            table.Add("6f", "v");
            table.Add("06", "w");
            table.Add("16", "x");
            table.Add("26", "y");
            table.Add("36", "z");
            table.Add("46", "A");
            table.Add("56", "B");
            table.Add("76", "C");
            table.Add("86", "D");
            table.Add("96", "E");
            table.Add("a6", "F");
            table.Add("b6", "G");
            table.Add("c6", "H");
            table.Add("d6", "I");
            table.Add("e6", "J");
            table.Add("f6", "K");
            table.Add("30", "L");
            table.Add("31", "M");
            table.Add("32", "N");
            table.Add("33", "O");
            table.Add("34", "P");
            table.Add("35", "Q");
            table.Add("37", "R");
            table.Add("38", "S");
            table.Add("39", "T");
            table.Add("3a", "U");
            table.Add("3b", "V");
            table.Add("3c", "W");
            table.Add("3d", "X");
            table.Add("3e", "Y");
            table.Add("3f", "Z");

            return table;
        }

        private static Dictionary<string, string> GetCompressConvertTableLevel2()
        {
            /*
             * 原则1：涵盖最常用的字符
             * 原则2：要将某个二进制值（0……f）彻底替换掉（可进行二次压缩的前提）
             */
            Dictionary<string, string> table = new Dictionary<string, string>();
            table.Add("2c", "6");

            return table;
        }

        private static string ArrayToString(string[] dataArray)
        {
            string result = string.Empty;
            foreach (string item in dataArray)
            {
                result += item;
            }
            return result;
        }

        private string GzipCompress(byte[] data)
        {
            MemoryStream ms = new MemoryStream();
            GZipStream compressedzipStream = new GZipStream(ms, CompressionMode.Compress, true);
            compressedzipStream.Write(data, 0, data.Length);
            compressedzipStream.Close();
            return string.Empty;
        }
    }
}
