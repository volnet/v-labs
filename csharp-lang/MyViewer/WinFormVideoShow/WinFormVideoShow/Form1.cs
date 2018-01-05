using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Runtime.InteropServices;


namespace WinFormVideoShow
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            framePath = GetFramePath();
            timer1.Start();
        }

        private string framePath = string.Empty;

        private string GetFramePath()
        {
            return System.IO.Path.GetFullPath("Video\\frame.jpg");
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            try
            {
                this.SuspendLayout();
                string path = framePath;
                byte[] buffer = System.IO.File.ReadAllBytes(path);
                if(buffer != null)
                {
                    MemoryStream ms = new MemoryStream(buffer);
                    Image img = Image.FromStream(ms);
                    pictureBox1.Image = img;
                    pictureBox1.Refresh();
                }
                this.ResumeLayout(true);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }

        private void Form1_Resize(object sender, EventArgs e)
        {
            pictureBox1.Size = this.Size;
        }

        private void Form1_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.F11 || e.KeyCode == Keys.Escape)
            {
                MaxToFullScreen();
            }
        }

        private void Form1_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            MaxToFullScreen();
        }
        
        private void pictureBox1_DoubleClick(object sender, EventArgs e)
        {
            MaxToFullScreen();
        }

        private void MaxToFullScreen()
        {
            if (WindowState == FormWindowState.Maximized)
            {
                ShowWindow(FindWindow("Shell_TrayWnd", null), SW_RESTORE);
                FormBorderStyle = FormBorderStyle.Sizable;
                WindowState = FormWindowState.Normal;
            }
            else if (WindowState == FormWindowState.Normal)
            {
                ShowWindow(FindWindow("Shell_TrayWnd", null), SW_HIDE);
                FormBorderStyle = FormBorderStyle.None;
                WindowState = FormWindowState.Maximized;
            }
        }

        [DllImport("user32.dll")]
        public static extern int ShowWindow(int hwnd, int nCmdShow);

        [DllImport("user32.dll")]
        public static extern int FindWindow(string lpClassName, string lpWindowName);

        private const int SW_HIDE = 0;  //隐藏任务栏
        private const int SW_RESTORE = 9;//显示任务栏
    }
}
