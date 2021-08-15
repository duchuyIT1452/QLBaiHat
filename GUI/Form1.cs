﻿using System;
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

        #region menu
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
        #endregion
        private void Form1_Load(object sender, EventArgs e)
        {
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            load_Album();
            load_TheLoai();
            LoadBaiHat_Home();
            load_Tacgia();
            load_Hangsx();
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
            Album_BUS bus = new Album_BUS();
            DataTable dt = new DataTable();
            dt = bus.getAlbum();
            dgv_Album.DataSource = dt;
            int dem = 0;
            foreach (DataRow row in dt.Rows)
            {
                dgv_Album.Rows[dem].Cells[0].Value = (dem + 1);
                dem++;
            }
        }


        private void load_TheLoai()
        {
            DataTable dtTheLoai = new TheLoai_BUS().getTheLoai();
            dgv_theloai.DataSource = dtTheLoai;

        }

        #region Click thừa
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        #endregion

        private DataTable dtTacGia;
        private void load_Tacgia()
        {
            dtTacGia = new TacGia_BUS().getAllTacGia();
            lst_dsnhacsi.DataSource = dtTacGia;
            lst_dsnhacsi.DisplayMember = "ten_tacgia";
            lst_dsnhacsi.ValueMember = "ma_tacgia";
        }

        private DataTable dtHangsx;
        private void load_Hangsx()
        {
            dtHangsx = new HangSanXuat_BUS().getAllHangSX();
            dgv_dsHangsx.DataSource = dtHangsx;
        }

        private void tabControl_formChinh_MouseClick(object sender, MouseEventArgs e)
        {
            load_Album();
        }

        private void bt_them_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fThem_Album f = new fThem_Album();
            f.ShowDialog();
            this.Visible = true;
            load_Album();
        }

        private void bt_xoa_Click(object sender, EventArgs e)
        {
            Album_BUS bus = new Album_BUS();
            string ma = dgv_Album.Rows[dgv_Album.CurrentCell.RowIndex].Cells[1].Value.ToString();
            try
            {
                DialogResult dialogResult = MessageBox.Show("Bạn có chắc chắn muốn xóa không?", "Xác nhận", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    bus.xoaAlbum(ma);
                    load_Album();
                }

                else if (dialogResult == DialogResult.No)
                    load_Album();
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void dgv_Album_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int d = e.RowIndex;
            BaiHat_BUS bus = new BaiHat_BUS();
            DataTable dt = new DataTable();
            String ma = dgv_Album.Rows[d].Cells[1].Value.ToString();
            dt = bus.listBaiHatTheoAlbum(ma);
            dgv_AlbumBaihat.DataSource = dt;
        }

        private void bt_dong_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
