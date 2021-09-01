using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GUI
{
    public partial class fLoad : Form
    {
        public fLoad()
        {
            InitializeComponent();
        }

        private void countTime_Tick(object sender, EventArgs e)
        {
            if (progressBar_loading.Value < progressBar_loading.Maximum)
            {
                progressBar_loading.Value += 4;
                if(progressBar_loading.Value == 100)
                {
                    this.Visible = false;
                    Form1 f = new Form1();
                    f.ShowDialog();
                    this.Close();
                }
            }
        }
    }
}
