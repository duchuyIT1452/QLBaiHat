using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
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

        // load dữ liệu

        #region form1 load
        private void Form1_Load(object sender, EventArgs e)
        {
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            LoadBaiHat_Home();        
        }
        #endregion

        #region load bài hát home
        private void LoadBaiHat_Home()
        {
            BaiHat_BUS bus = new BaiHat_BUS();
            dgv_baihat_home.DataSource = bus.getBaiHatHome();
            int dem = 0;
            foreach (DataRow row in bus.getBaiHatHome().Rows)
            {
                if (dem % 2 == 0)
                    dgv_baihat_home.Rows[dem].DefaultCellStyle.BackColor = Color.PaleTurquoise;
                dem++;
            }
        }
        #endregion

        #region load bài hát
        private void load_BaiHat()
        {
            BaiHat_BUS bus = new BaiHat_BUS();
            dgv_baihat.DataSource = bus.getBaiHat();
            int dem = 0;
            foreach (DataRow row in bus.getBaiHat().Rows)
            {
                if (dem % 2 == 0)
                    dgv_baihat.Rows[dem].DefaultCellStyle.BackColor = Color.PaleTurquoise;
                dem++;
            }
        }
        #endregion

        #region load album
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
        #endregion

        #region load thể loại
        private void load_TheLoai()
        {
            TheLoai_BUS bus = new TheLoai_BUS();
            DataTable dt = new DataTable();
            dt = bus.getTheLoai();
            dgv_theloai.DataSource = dt;
            int dem = 0;
            foreach (DataRow row in dt.Rows)
            {
                dgv_theloai.Rows[dem].Cells[0].Value = (dem + 1);
                dem++;
            }

        }
        #endregion

        #region Load tac giả
        private void load_Tacgia()
        {
            TacGia_BUS dtTacGia = new TacGia_BUS();
            DataTable dt = new DataTable();
            dt = dtTacGia.getAllTacGia();
            dgv_dsNhacSi.DataSource = dt;
        }
        
        private void load_Hangsx()
        {
            HangSanXuat_BUS dtHangsx = new HangSanXuat_BUS();
            DataTable dt = new DataTable();
            dt = dtHangsx.getAllHangSX();
            dgv_dsHangsx.DataSource = dt;
        }
        #endregion

        #region load ca sĩ
        private void load_CaSi()
        {
            CaSi_BUS bus = new CaSi_BUS();
            dgv_dsCaSi.DataSource = bus.getCaSi();
            int dem = 0;
            foreach(DataRow row in bus.getCaSi().Rows)
            {
                if (dem % 2 == 0)
                    dgv_dsCaSi.Rows[dem].DefaultCellStyle.BackColor = Color.PaleTurquoise;
                dem++;
            }
        }
        #endregion

        

        #region tabcontrol form chính mouse click
        private void tabControl_formChinh_MouseClick(object sender, MouseEventArgs e)
        {
            load_Album();
            load_TheLoai();
            load_Tacgia();
            load_Hangsx();
            load_CaSi();
            load_BaiHat();
        }
        #endregion

        #region button thêm album click
        private void bt_them_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fThem_Album f = new fThem_Album();
            f.ShowDialog();
            this.Visible = true;
            load_Album();
        }
        #endregion

        #region button xoá album click
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
        #endregion

        //dataGridView cell click

        #region dgv album cellclick
        private void dgv_Album_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int d = e.RowIndex;
            BaiHat_BUS bus = new BaiHat_BUS();
            DataTable dt = new DataTable();
            String ma = dgv_Album.Rows[d].Cells[1].Value.ToString();
            dt = bus.listBaiHatTheoAlbum(ma);
            dgv_AlbumBaihat.DataSource = dt;
        }
        #endregion

        #region dgv thể loại cellclick
        private void dgv_theloai_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int d = e.RowIndex;
            BaiHat_BUS bus = new BaiHat_BUS();
            DataTable dt = new DataTable();
            String ma = dgv_theloai.Rows[d].Cells[1].Value.ToString();
            dt = bus.listBaiHatTheoTheLoai(ma);
            dgv_TheloaiBaihat.DataSource = dt;
        }
        #endregion

        #region dgv nhạc sĩ cellclick
        private void dgv_dsNhacSi_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                int d = e.RowIndex;
                BaiHat_BUS bus = new BaiHat_BUS();
                DataTable dt = new DataTable();
                String ma = dgv_dsNhacSi.Rows[d].Cells[0].Value.ToString();
                dt = bus.listBaiHatTheoTacGia(ma);
                dgv_Baihat_nhacsi.DataSource = dt;
                txt_tentacgia.Text = dgv_dsNhacSi.Rows[d].Cells[1].Value.ToString();
                txt_thongtintacgia.Text = dgv_dsNhacSi.Rows[d].Cells[2].Value.ToString();
            }

        }
        #endregion

        #region dataGridView hãng sản xuất cellclick
        private void dgv_dsHangsx_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                int d = e.RowIndex;
                BaiHat_BUS bus = new BaiHat_BUS();
                DataTable dt = new DataTable();
                String ma = dgv_dsHangsx.Rows[d].Cells[0].Value.ToString();
                dt = bus.listBaiHatTheoHSX(ma);
                dgv_Baihat_phathanh.DataSource = dt;
                txt_tenhangsanxuat.Text = dgv_dsNhacSi.Rows[d].Cells[1].Value.ToString();
                txt_thongtinhangsanxuat.Text = dgv_dsNhacSi.Rows[d].Cells[2].Value.ToString();
            }
        }
        #endregion

        #region ca sĩ cellclick
        private void dgv_dsCaSi_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                int d = e.RowIndex;
                BaiHat_BUS bus = new BaiHat_BUS();
                DataTable dt = new DataTable();
                String ma = dgv_dsCaSi.Rows[d].Cells[0].Value.ToString();
                dt = bus.listBaiHatTheoCaSi(ma);
                dgv_BaiHatTheoCaSi.DataSource = dt;
                txt_tencasi.Text = dgv_dsCaSi.Rows[d].Cells[1].Value.ToString();
                txt_thongtincasi.Text = dgv_dsCaSi.Rows[d].Cells[2].Value.ToString();
            }
        }
        #endregion

        //button click

        private void bt_dong_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("BẠN CHẮC CHẮN MUỐN ĐÓNG ỨNG DỤNG ?", "THOÁT CHƯƠNG TRÌNH", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                this.Close();
        }

        #region button xoá thể loại click
        private void bt_xoaTheLoai_Click(object sender, EventArgs e)
        {
            TheLoai_BUS bus = new TheLoai_BUS();
            string ma = dgv_theloai.Rows[dgv_theloai.CurrentCell.RowIndex].Cells[1].Value.ToString();
            try
            {
                DialogResult dialogResult = MessageBox.Show("Bạn có chắc chắn muốn xóa không?", "Xác nhận", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    bus.xoaTheLoai(ma);
                    load_TheLoai();
                }

                else if (dialogResult == DialogResult.No)
                    load_TheLoai();
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region button thêm thể loại
        private void bt_themTheLoai_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fThem_TheLoai f = new fThem_TheLoai();
            f.ShowDialog();
            this.Visible = true;
            load_TheLoai();
        }
        #endregion

        #region button đóng click
        private void btn_close_Click(object sender, EventArgs e)
        {
            Close();
        }
        #endregion

        #region button tìm kiếm click
        private void btn_timkiem_Click(object sender, EventArgs e)
        {
            Album_BUS bus = new Album_BUS();
            DataTable dt = new DataTable();
            dt = bus.findAlbum(txt_timkiem.Text);
            dgv_searchTenAlbum.DataSource = bus.findAlbum(txt_timkiem.Text);
            int dem = 0;
            foreach (DataRow row in dt.Rows)
            {
                dgv_searchTenAlbum.Rows[dem].Cells[0].Value = (dem + 1);
                dem++;
            }
            if (dem == 0)
            {
                DialogResult dialogResult = MessageBox.Show("Không có tên album trong danh sách!", "Xác nhận", MessageBoxButtons.OK);
            }
        }
        #endregion

        // HSX
        private void button1_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fThem_HangSX f = new fThem_HangSX();
            f.ShowDialog();
            this.Visible = true;
            load_Hangsx();
        }
        #region xoá hãng sản xuất
        private void btn_xoaHSX_Click(object sender, EventArgs e)
        {
            HangSanXuat_BUS hangsx = new HangSanXuat_BUS();
            string del = dgv_dsHangsx.Rows[dgv_dsHangsx.CurrentCell.RowIndex].Cells[0].Value.ToString();
            try
            {
                DialogResult dialog = MessageBox.Show("Bạn có chắc muốn xóa dữ liệu không?", "XÁC NHẬN XÓA", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dialog == DialogResult.Yes)
                {
                    hangsx.Delete_HangSX(del);
                    load_Hangsx();
                }
                else
                {
                    if (dialog == DialogResult.No)
                    {
                        load_Hangsx();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion
        private void btn_suaHSX_Click(object sender, EventArgs e)
        {

        }

        #region button thêm tác giả click
        private void btn_themNS_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fThem_Tacgia f = new fThem_Tacgia();
            f.ShowDialog();
            this.Visible = true;
            load_Tacgia();
        }
        #endregion

        #region xoá nhạc sĩ
        private void btn_xoaNS_Click(object sender, EventArgs e)
        {
            TacGia_BUS tg = new TacGia_BUS();
            string del = dgv_dsNhacSi.Rows[dgv_dsNhacSi.CurrentCell.RowIndex].Cells[0].Value.ToString();
            try
            {
                DialogResult dialog = MessageBox.Show("Bạn có chắc muốn xóa không?", "XÁC NHẬN XÓA", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (dialog == DialogResult.Yes)
                {
                    tg.Delete_TacGia(del);
                    load_Tacgia();
                }
                else
                {
                    if (dialog == DialogResult.No)
                    {
                        load_Tacgia();
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region sửa nhạc sĩ
        private void btn_suaNS_Click(object sender, EventArgs e)
        {

        }
        #endregion

        
    }
}
