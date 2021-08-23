using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data;
using BUS;

namespace GUI
{
    public partial class fThem_HangSX : Form
    {
        public fThem_HangSX()
        {
            InitializeComponent();
        }

        private void btn_them_Click(object sender, EventArgs e)
        {
            
            try
            {
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void btn_nhaplai_Click(object sender, EventArgs e)
        {
            txt_mahangsx.Text = txt_tenhangsx.Text = txt_thongtin.Text = "";
            txt_mahangsx.Focus();
        }

        private void btn_thoat_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

    }
}
