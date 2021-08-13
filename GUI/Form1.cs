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
            load_TheLoai();
            LoadBaiHat_Home();
        }

        private void LoadBaiHat_Home()
        {
            BaiHat_BUS bus = new BaiHat_BUS();
            DataTable dt = new DataTable();
            dt = bus.getBaiHatHome();
            dgv_baihat_home.DataSource = dt;
            int dem = 0;
            foreach (DataRow row in dt.Rows)
            {
                dgv_baihat_home.Rows[dem].Cells[0].Value = "Bài hát "+(dem+1);
                dem++;
            }
        }

        private DataTable dtAlbum;
        private void load_Album()
        {
            DataTable dtAlbum = new Album_BUS().getAlbum();
            dgv_Album.DataSource = dtAlbum;
            int dong = dgv_Album.Rows.Count;
            for (int i=1; i<=dong;i++)
            {
                dgv_Album.Rows[i].Cells[0].Value = i++;
            }
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

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
