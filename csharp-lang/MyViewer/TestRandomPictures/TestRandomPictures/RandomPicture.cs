using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;

namespace TestRandomPictures
{
    public class RandomPicture
    {
        public static int CreatePicture(int rnd, string fileName, string rawFileName)
        {
            try
            {
                Image img = null;
                if (string.IsNullOrEmpty(rawFileName))
                {
                    img = new Bitmap(500, 500);
                }
                else
                {
                    img = Bitmap.FromFile(rawFileName);
                }
                Graphics g = Graphics.FromImage(img);
                
                Pen p = new Pen(Color.Red);
                g.DrawLine(p, rnd % 70, rnd % 120, rnd % 1700, rnd % 2500);
                Rectangle rectangle1 = new Rectangle(rnd % 210, rnd % 120, rnd % 2000, rnd % 2000);
                g.DrawRectangle(p, rectangle1);
                g.FillRectangle(new SolidBrush(Color.Red), rectangle1);
                g.DrawEllipse(p, rnd % 120, rnd % 220, rnd % 1500, rnd % 600);

                img.Save(fileName, System.Drawing.Imaging.ImageFormat.Jpeg);
                img.Dispose();
                p.Dispose();
                g.Dispose();

                rnd += 10;
                return rnd % int.MaxValue;
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return rnd;
            }
        }
    }
}
