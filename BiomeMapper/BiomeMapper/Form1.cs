using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Substrate;


namespace BiomeMapper
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Bitmap bm = new Bitmap(2048, 2176);
            
            NbtWorld world = NbtWorld.Open(@"E:\games\Curse\Instances\Modern Skyblock 2\saves\Kekimuro");
            // The chunk manager is more efficient than the block manager for
            // this purpose, since we'll inspect every block
            Substrate.Core.IChunkManager rcm = world.GetChunkManager();

            foreach (ChunkRef chunk in rcm)
            {
                // You could hardcode your dimensions, but maybe some day they
                // won't always be 16.  Also the CLR is a bit stupid and has
                // trouble optimizing repeated calls to Chunk.Blocks.xx, so we
                // cache them in locals
                int xdim = chunk.Blocks.XDim;
                int ydim = chunk.Blocks.YDim;
                int zdim = chunk.Blocks.ZDim;
                AnvilBiomeCollection chunkBiome = chunk.Biomes;

                // x, z, y is the most efficient order to scan blocks (not that
                // you should care about internal detail)
                for (int x = 0; x < xdim; x++)
                {
                    for (int z = 0; z < zdim; z++)
                    {
                        int biome = chunkBiome.GetBiome(x, z);
                        bm.SetPixel(chunk.X * xdim + x, chunk.Z * zdim + z, Biomes.id2color(biome));
                    }
                }
            }
            pictureBox1.Image = bm;
        }
    }
    public class Biomes
    {
        public static List<int> biomelist = new List<int>();

        public static Color id2color(int c)
        {
            switch (c)
            {
                case 0: // Ocean
                    return Color.FromArgb(0, 0, 112);
                case 1: // Plains
                    return Color.FromArgb(180, 200, 80);
                case 2: // Desert
                    return Color.FromArgb(240, 190, 50);
                case 3: // Extreme Hills
                    return Color.FromArgb(50, 50, 0);
                case 4: // Forest
                    return Color.FromArgb(40, 200, 40);
                case 5: // Taiga
                    return Color.FromArgb(10, 110, 10);
                case 6: // Swampland
                    return Color.FromArgb(120, 140, 80);
                case 7: // River
                    return Color.FromArgb(0, 200, 200);
                case 8: // Hell
                    return Color.FromArgb(0, 225, 225);
                case 10: // FrozenOcean
                    return Color.FromArgb(160, 240, 240);
                case 12: // Ice Plains
                    return Color.FromArgb(200, 200, 200);
                case 13: // Ice Mountains
                    return Color.FromArgb(170, 170, 170);
                case 14: // MushroomIsland
                    return Color.FromArgb(175, 40, 175);
                case 15: // MushroomIslandShore
                    return Color.FromArgb(130, 50, 175);
                case 16: // Beach
                    return Color.FromArgb(240, 240, 0);
                case 17: // DesertHills
                    return Color.FromArgb(192, 145, 40);
                case 18: // ForestHills
                    return Color.FromArgb(0, 150, 0);
                case 19: // TaigaHills
                    return Color.FromArgb(55, 85, 75);
                case 20: // Extreme Hills Edge
                    return Color.FromArgb(100, 90, 20);
                case 21: // Jungle
                    return Color.FromArgb(60, 100, 15);
                case 22: // JungleHills
                    return Color.FromArgb(32, 150, 40);
                case 23: // JungleEdge
                    return Color.FromArgb(100, 140, 20);
                case 27: // Birch Forest
                    return Color.FromArgb(50, 120, 70);
                case 35: // Savanna
                    return Color.FromArgb(200, 200, 64);
                case 36: // Savanna Plateau
                    return Color.FromArgb(170, 160, 100);
                case 45: // MSDune
                    return Color.FromArgb(210, 170, 70);
                case 46: // MSLakeshore2
                    return Color.FromArgb(170, 190, 100);
                case 47: // MSGravelBeach
                    return Color.FromArgb(75, 80, 130);
                case 48: // MSExtreme Hills2
                    return Color.FromArgb(160, 128, 64);
                case 49: // Extreme Hills Edge2
                    return Color.FromArgb(130, 110, 40);
                case 51: // MSTheArctic
                    return Color.FromArgb(0, 240, 100);
                case 52: // MSMonumentRocks
                    return Color.FromArgb(130, 100, 30);
                case 53: // MSMonumentRocksPeak
                    return Color.FromArgb(85, 60, 20);
                case 54: // MSMonumentValley
                    return Color.FromArgb(200, 160, 40);
                case 55: // MSMonumentRocksBorder
                    return Color.FromArgb(155, 120, 32);
                case 56: // MSErodedCoast
                    return Color.FromArgb(100, 85, 35);
                case 57: // MSMonumentArches
                    return Color.FromArgb(200, 100, 20);
                case 58: // MSMonumentRocksLowerPeak
                    return Color.FromArgb(85, 100, 120);
                case 59: // MSMonumentArchesLower
                    return Color.FromArgb(200, 100, 150);
                case 60: // MSMonumentArchesRiver
                    return Color.FromArgb(0, 200, 200);
                case 61: // MSMonumentArchesLowerRiver
                    return Color.FromArgb(0, 200, 200);
                case 62: // MSMonumentArchesMediumRiver
                    return Color.FromArgb(0, 200, 200);
                case 63: // MSLava
                    return Color.FromArgb(255, 100, 150);
                case 64: // MSWesterwald
                    return Color.FromArgb(20, 40, 24);
                case 65: // MSFloatingCity
                    return Color.FromArgb(200, 90, 200);
                case 66: // MSFloatingCityCenter
                    return Color.FromArgb(150, 85, 145);
                case 67: // MSFloatingCityBorder
                    return Color.FromArgb(100, 80, 100);
                case 68: // MSFloatingCityBorder2
                    return Color.FromArgb(70, 80, 120);
                case 69: // MSFloatingCityBorder3
                    return Color.FromArgb(90, 90, 180);
                case 71: // MSVolcano
                    return Color.FromArgb(200, 0, 0);
                case 72: // MSBryce
                    return Color.FromArgb(170, 150, 245);
                case 73: // MSGrassland
                    return Color.FromArgb(150, 200, 0);
                case 74: // MSLakeshore
                    return Color.FromArgb(125, 155, 60);
                case 75: // MSLakes
                    return Color.FromArgb(0, 155, 155);
                case 77: // TAOceanInBorder
                    return Color.FromArgb(40, 45, 200);
                case 81: // TAOceanRich
                    return Color.FromArgb(55, 60, 200);
                case 83: // TAJungleNetherrack
                    return Color.FromArgb(250, 100, 70);
                case 132: //Flower Forest
                    return Color.FromArgb(105, 115, 40);
                case 140: //Ice Plains Spikes
                    return Color.FromArgb(150, 225, 225);
                case 192: // Taint
                    return Color.FromArgb(32, 0, 32);
                case 193: // MagicForest
                    return Color.FromArgb(50, 100, 110);
                case 194: // Eerie
                    return Color.FromArgb(64, 32, 32);
                default:
                    return Color.FromArgb(0, 0, 0);
                //throw new NotImplementedException("Unknown biome ID [" + c + "]");
            }
        }
    }
}
