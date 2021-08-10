using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BUS;

namespace GUI
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void quảnLýAlbumToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl_formChinh.SelectedIndex = 1;
        }

        private void quảnLýTHỂLOẠIToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl_formChinh.SelectedIndex = 2;
        }

        private void quảnLýCASĨToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl_formChinh.SelectedIndex = 3;
        }

        private void quảnLýTÁCGIẢToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl_formChinh.SelectedIndex = 4;
        }

        private void quảnLýBÀIHÁTToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl_formChinh.SelectedIndex = 7;
        }

        private void quảnLýHÃNGSẢNXUẤTToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl_formChinh.SelectedIndex = 5;
        }

        private void quảnLýTRACỨUTÌMKIẾMToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl_formChinh.SelectedIndex = 6;
        }

        private void đóngỨngDụngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            load_Album();
        }

        private DataTable dtAlbum;
        private void load_Album()
        {
            DataTable dtAlbum = new Album_BUS().getAlbum();
            dgv_Album.DataSource = dtAlbum;
<<<<<<< HEAD
            
        }

        private void dgv_AlbumBaihat_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgv_Album.SelectedRows.Count == 0)
                return;
            dgv_AlbumBaihat.Rows.Clear();
            DataTable dt = null;
        }

        private void load_TheLoai()
        {
            DataTable dtTheLoai = new TheLoai_BUS().getTheLoai();
            dgv_theloai.DataSource = dtTheLoai;

=======
>>>>>>> 14d71c2966f9a0d12211463ea35154d348ae963d
        }

        private void bt_themTheLoai_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            Form_ThemTheLoai f = new Form_ThemTheLoai();
            f.ShowDialog();
            if (f.DialogResult == DialogResult.OK)
                load_TheLoai();
            this.Visible = true;
        }
    }
}
