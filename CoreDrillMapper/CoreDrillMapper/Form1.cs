using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using OfficeOpenXml;
using System.IO;

namespace CoreDrillMapper
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        List<CoreSample> coresamples = new List<CoreSample>();
        Bitmap bm;
        private void button1_Click(object sender, EventArgs e)
        {
            using (ExcelPackage xlPackage = new ExcelPackage(new FileInfo(@"e:\Continuum.xlsx")))
            {
                //var myWorksheet = xlPackage.Workbook.Worksheets.First(); //select sheet here
                var myWorksheet = xlPackage.Workbook.Worksheets["Sheet2"];
                var totalRows = myWorksheet.Dimension.End.Row;
                var totalColumns = myWorksheet.Dimension.End.Column;

                var sb = new StringBuilder(); //this is your your data
                for (int rowNum = 2; rowNum <= totalRows; rowNum++) //selet starting row here
                {
                    int x=int.Parse(myWorksheet.Cells[rowNum, 1].Value.ToString());
                    int y = int.Parse(myWorksheet.Cells[rowNum, 2].Value.ToString());
                    string ore = myWorksheet.Cells[rowNum, 5].Value.ToString();
                    string liq = myWorksheet.Cells[rowNum, 6].Value.ToString();
                    CoreSample cs = new CoreSample(x, y, ore, liq);
                    coresamples.Add(cs);
                    
                    sb.AppendLine(cs.ToString());
                }
                txtDebug.Text = sb.ToString();
            }
            int maxX = 384;
            int maxY = 384;
            bm = new Bitmap(maxX, maxY);
            Graphics g = Graphics.FromImage(bm);
            g.FillRectangle(Brushes.Black, 0, 0, maxX, maxY);
            foreach(CoreSample cs in coresamples)
            {
                Point[] p = new Point[3];
                p[0] = new Point(cs.X, cs.Y);
                p[1] = new Point(cs.X,cs.Y+16);
                p[2] = new Point(cs.X+16,cs.Y);
                g.FillPolygon(new SolidBrush(colorFromSubstance(cs.Ore)),p);

                Point[] pl = new Point[3];
                p[0] = new Point(cs.X+16, cs.Y+16);
                p[1] = new Point(cs.X, cs.Y + 16);
                p[2] = new Point(cs.X + 16, cs.Y);
                g.FillPolygon(new SolidBrush(colorFromSubstance(cs.Liquid)), p);
            }

            Pen linepen = new Pen(Color.FromArgb(128,255,255,255));
            for(int x=0;x<512;x+=16)
            {
                g.DrawLine(linepen, x, 0, x, maxY-1);
                g.DrawLine(linepen, 0, x, maxX-1, x);
            }
            pG.Invalidate();
        }

        private void pG_Paint(object sender, PaintEventArgs e)
        {
            if(bm!= null)
            {
                Graphics g = e.Graphics;
                g.DrawImage(bm, 0, 0,511,511);
            }
        }

        private Color colorFromSubstance(string thing)
        {
            switch(thing)
            {
                case "Oil":
                    return Color.FromArgb(255, 32, 32, 32);
                case "Water":
                    return Color.FromArgb(255, 0, 0, 255);
                case "Lava":
                    return Color.FromArgb(255, 255, 64, 0);
                case "-":
                    return Color.FromArgb(255, 128, 64, 64);
                case "Coal":
                    return Color.FromArgb(255, 32, 32, 32);
                case "Bauxite":
                    return Color.FromArgb(255, 255, 128, 0);
                default:
                    return Color.FromArgb(255, 255, 0, 255);
            }
        }
    }
    public class CoreSample
    {
        public CoreSample(int _x, int _y, string _ore, string _liquid)
        {
            X = _x;
            Y = _y;
            Ore = _ore;
            Liquid = _liquid;
        }
        public int X { get; set; }
        public int Y { get; set; }
        public String Ore { get; set; }
        public String Liquid { get; set; }

        public Point getCenter()
        {
            return new Point(X + 8, Y + 8);
        }
        public override string ToString()
        {
            return string.Format("{0},{1},{2},{3}",X,Y,Ore,Liquid);
        }
    }
}
