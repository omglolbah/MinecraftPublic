using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;

using Substrate;
using Substrate.Core;

namespace SubstrateTestbed
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
     
        }
        string worldPath = @"B:\Games\FeedTheBeast\FTBInfinity\minecraft\saves\New World";
        void GenerateList()
        {
            StreamWriter wr = new StreamWriter(Path.Combine(Path.GetDirectoryName(Application.ExecutablePath), "OreList.txt"), false);

            int totalcount = 0;
            int ore = 2646;
            int oreMeta = 6;

            // Open our world

            AnvilWorld world = AnvilWorld.Open(worldPath);

            // The chunk manager is more efficient than the block manager for
            // this purpose, since we'll inspect every block
            RegionChunkManager rcm = world.GetChunkManager();

            pbChunks.Maximum = rcm.Count();
            pbChunks.Minimum = 0;
            pbChunks.Value = 0;

            foreach (ChunkRef chunk in rcm)
            {
                pbChunks.Value++;
                if (chunk.X < 0 || chunk.Z < 0 || chunk.Z > 134 || chunk.X > 111)
                {
                    continue;
                }

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

                        for (int y = 0; y < ydim; y++)
                        {
                            int cid = chunk.Blocks.GetID(x, y, z);
                            if (y > 3)
                            {
                                if (cid == ore)
                                {
                                    int cdata = chunk.Blocks.GetData(x, y, z);
                                    if (cdata == oreMeta)
                                    {
                                        wr.WriteLine("E;{0};{1};{2};{3}", chunk.X * xdim + x, chunk.Z * zdim + z, y,biome);
                                        totalcount++;
                                    }
                                }
                            }
                            //Break when hitting daylight.
                            int light = chunk.Blocks.GetSkyLight(x, y, z);
                            if (light == 12)
                            {
                                break;
                            }

                        }
                    }
                }
                if (pbChunks.Value % 32 == 0)
                {
                    txtDebug.Text = string.Format("Processed Chunk {0},{1}", chunk.X, chunk.Z) + Environment.NewLine;
                    Application.DoEvents();
                }
            }
            
            txtDebug.Text += string.Format("Found ore count:{0}", totalcount) + Environment.NewLine;
            wr.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            GenerateList();
        }

    }
}
