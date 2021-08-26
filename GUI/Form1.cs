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
            load_BaiHat();
            
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
            dgv_baihat_home.ClearSelection();
        }
        #endregion

        #region load bài hát
        private void load_BaiHat()
        {
            //load combobox thể loại
            TheLoai_BUS tlBus = new TheLoai_BUS();
            cb_theloai_formchinh.DataSource = tlBus.getTheLoai();
            cb_theloai_formchinh.DisplayMember = "ten_theloai";
            cb_theloai_formchinh.ValueMember = "ma_theloai";
            

            //load combobox album
            Album_BUS abBus = new Album_BUS();
            cb_album_formchinh.DataSource = abBus.getAlbum();
            cb_album_formchinh.DisplayMember = "ten_album";
            cb_album_formchinh.ValueMember = "ma_album";
            

            //load combobox ca sĩ
            CaSi_BUS csBus = new CaSi_BUS();
            cb_casi_formchinh.DataSource = csBus.getCaSi();
            cb_casi_formchinh.DisplayMember = "ten_casi";
            cb_casi_formchinh.ValueMember = "ma_casi";
            

            //load combobox tác giả
            TacGia_BUS tgBus = new TacGia_BUS();
            cb_tacgia_formchinh.DataSource = tgBus.getAllTacGia();
            cb_tacgia_formchinh.DisplayMember = "ten_tacgia";
            cb_tacgia_formchinh.ValueMember = "ma_tacgia";
            

            //load combobox hãng sản xuất
            HangSanXuat_BUS hsxBus = new HangSanXuat_BUS();
            cb_hangsanxuat_formchinh.DataSource = hsxBus.getAllHangSX();
            cb_hangsanxuat_formchinh.DisplayMember = "ten_hangsanxuat";
            cb_hangsanxuat_formchinh.ValueMember = "ma_hangsanxuat";

            cb_hangsanxuat_formchinh.SelectedIndex = -1;
            cb_album_formchinh.SelectedIndex = -1;
            cb_casi_formchinh.SelectedIndex = -1;
            cb_theloai_formchinh.SelectedIndex = -1;
            cb_tacgia_formchinh.SelectedIndex = -1;

            //load bài hát
            BaiHat_BUS bus = new BaiHat_BUS();
            dgv_baihat.DataSource = bus.getBaiHat();
            int dem = 0;
            foreach (DataRow row in bus.getBaiHat().Rows)
            {
                if (dem % 2 == 0)
                    dgv_baihat.Rows[dem].DefaultCellStyle.BackColor = Color.PaleTurquoise;
                dem++;
            }
            dgv_baihat.ClearSelection();
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
                if (dem % 2 == 0)
                    dgv_Album.Rows[dem].DefaultCellStyle.BackColor = Color.PaleTurquoise;
                dem++;
            }
            dgv_Album.ClearSelection();
        }
        #endregion

        #region load thể loại
        private void load_TheLoai()
        {
            TheLoai_BUS bus = new TheLoai_BUS();
            dgv_theloai.DataSource = bus.getTheLoai();
            int dem = 0;
            foreach (DataRow row in bus.getTheLoai().Rows)
            {
                if (dem % 2 == 0)
                    dgv_theloai.Rows[dem].DefaultCellStyle.BackColor = Color.PaleTurquoise;
                dem++;
            }
            dgv_theloai.ClearSelection();
        }
        #endregion

        #region Load tac giả
        private void load_Tacgia()
        {
            TacGia_BUS dtTacGia = new TacGia_BUS();
            dgv_dsNhacSi.DataSource = dtTacGia.getAllTacGia();
            int dem = 0;
            foreach (DataRow row in dtTacGia.getAllTacGia().Rows)
            {
                if (dem % 2 == 0)
                    dgv_dsNhacSi.Rows[dem].DefaultCellStyle.BackColor = Color.PaleTurquoise;
                dem++;
            }
            dgv_dsNhacSi.ClearSelection();
        }
        #endregion

        #region load hsx
        private void load_Hangsx()
        {
            HangSanXuat_BUS dtHangsx = new HangSanXuat_BUS();
            dgv_dsHangsx.DataSource = dtHangsx.getAllHangSX();
            int dem = 0;
            foreach (DataRow row in dtHangsx.getAllHangSX().Rows)
            {
                if (dem % 2 == 0)
                    dgv_dsHangsx.Rows[dem].DefaultCellStyle.BackColor = Color.PaleTurquoise;
                dem++;
            }
            dgv_dsHangsx.ClearSelection();
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
            dgv_dsCaSi.ClearSelection();
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

        //dataGridView cell click

        #region dgv album cellclick
        private void dgv_Album_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int d = e.RowIndex;
            BaiHat_BUS bus = new BaiHat_BUS();
            String ma = dgv_Album.Rows[d].Cells[0].Value.ToString();
            dgv_AlbumBaihat.DataSource = bus.listBaiHatTheoAlbum(ma);
            dgv_AlbumBaihat.ClearSelection();
        }
        #endregion

        #region dgv thể loại cellclick
        private void dgv_theloai_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int d = e.RowIndex;
            BaiHat_BUS bus = new BaiHat_BUS();
            String ma = dgv_theloai.Rows[d].Cells[0].Value.ToString();
            dgv_TheloaiBaihat.DataSource = bus.listBaiHatTheoTheLoai(ma);
            dgv_TheloaiBaihat.ClearSelection();
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
                dgv_Baihat_nhacsi.ClearSelection();
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
                dgv_Baihat_phathanh.ClearSelection();
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
                dgv_BaiHatTheoCaSi.ClearSelection();
            }
        }
        #endregion

        //button click
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

        #region Thoát
        private void bt_dong_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("BẠN CHẮC CHẮN MUỐN ĐÓNG ỨNG DỤNG ?", "THOÁT CHƯƠNG TRÌNH", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                this.Close();
        }
        #endregion

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

        #region Thêm HSX
        private void button1_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fThem_HangSX f = new fThem_HangSX();
            f.ShowDialog();
            this.Visible = true;
            load_Hangsx();
        }
        #endregion

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

        #region Sửa HSX
        private void btn_suaHSX_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fCapnhat_HangSX f = new fCapnhat_HangSX();
            //f.maH = dgv_dsHangsx.SelectedColumns.ToString();
            f.maH = dgv_dsHangsx.Rows[0].Cells[1].Value.ToString();
            f.tenH = txt_tenhangsanxuat.Text;
            if (txt_thongtinhangsanxuat.Text.Contains("Chưa có thông tin hãng sản xuất"))
            {
                f.thongtinH = "";
            }
            else
                f.thongtinH = txt_thongtinhangsanxuat.Text;
            f.ShowDialog();
            if (f.DialogResult == DialogResult.OK)
            {
                dgv_dsHangsx.DataSource = null;
                load_Hangsx();
            }
            this.Visible = true;
        }
        #endregion  

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
            this.Visible = false;
            fCapnhat_Tacgia capnhat = new fCapnhat_Tacgia();
            capnhat.ma = dgv_dsNhacSi.SelectedRows.ToString();
            capnhat.ten = txt_tentacgia.Text;
            if (txt_thongtintacgia.Text.Contains("Chưa có thông tin tác giả"))
            {
                capnhat.thongtin = "";
            }
            else
                capnhat.thongtin = txt_thongtintacgia.Text;
            capnhat.ShowDialog();
            if (capnhat.DialogResult == DialogResult.OK)
            {
                dgv_dsNhacSi.DataSource = null;
                load_Tacgia();
            }
            this.Visible = true;
        }

        #endregion

        #region set string sql
        string theLoai = "";
        string album = "";
        string caSi = "";
        string tacGia = "";
        string hangSanXuat = "";
        private void setStringToFill()
        {
            if (cb_theloai_formchinh.SelectedIndex == -1)
                theLoai = "";
            else 
            {
                theLoai = "ma_theloai = " + "'" + cb_theloai_formchinh.SelectedValue.ToString() + "'";
            }
            if (cb_album_formchinh.SelectedIndex == -1)
                album = "";
            else
            {
                if (theLoai == "")
                    album = " ma_album = " + "'" + cb_album_formchinh.SelectedValue.ToString() + "'";
                else
                    album = " AND ma_album = " + "'" + cb_album_formchinh.SelectedValue.ToString() + "'";
            }
            if (cb_casi_formchinh.SelectedIndex == -1)
                caSi = "";
            else
            {
                if (theLoai == "" && album == "")
                    caSi = " ma_casi = " + "'" + cb_casi_formchinh.SelectedValue.ToString() + "'";
                else
                    caSi = " AND ma_casi = " + "'" + cb_casi_formchinh.SelectedValue.ToString() + "'";
            }
            if (cb_tacgia_formchinh.SelectedIndex == -1)
                tacGia = "";
            else
            {
                if (theLoai == "" && album == "" && caSi == "")
                    tacGia = " ma_tacgia = " + "'" + cb_tacgia_formchinh.SelectedValue.ToString() + "'";
                else
                    tacGia = " AND ma_tacgia = " + "'" + cb_tacgia_formchinh.SelectedValue.ToString() + "'";
            }
            if (cb_hangsanxuat_formchinh.SelectedIndex == -1)
                hangSanXuat = "";
            else
            {
                if (theLoai == "" && album == "" && caSi == "" && tacGia == "")
                    hangSanXuat = " ma_hangsanxuat = " + "'" + cb_hangsanxuat_formchinh.SelectedValue.ToString() + "'";
                else
                    hangSanXuat = " AND ma_hangsanxuat = " + "'" + cb_hangsanxuat_formchinh.SelectedValue.ToString() + "'";
            }
        }
        #endregion

        #region hàm lọc bài hát
        private void fill()
        {
            setStringToFill();
            BaiHat_BUS bus = new BaiHat_BUS();
            dgv_baihat.DataSource = bus.getBaiHatByAllKey(theLoai, album, caSi, tacGia, hangSanXuat);
        }
        #endregion

        #region hàm lọc khi thay đổi giá trị các thuộc tính
        private void cb_theloai_formchinh_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cb_theloai_formchinh.SelectedIndex != -1)
                fill();
        }

        private void cb_album_formchinh_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cb_album_formchinh.SelectedIndex != -1)
                fill();
        }

        private void cb_casi_formchinh_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cb_casi_formchinh.SelectedIndex != -1)
                fill();
        }

        private void cb_tacgia_formchinh_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cb_tacgia_formchinh.SelectedIndex != -1)
                fill();
        }

        private void cb_hangsanxuat_formchinh_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cb_hangsanxuat_formchinh.SelectedIndex != -1)
                fill();
        }
        #endregion

        #region button thêm bài hát
        private void btn_thembaihat_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fThem_BaiHat f = new fThem_BaiHat();
            f.ShowDialog();
            this.Visible = true;
            load_BaiHat();
        }
        #endregion
         
        #region butotn hiển thị bài hát click
        private void btn_hienthitoanbobaihat_Click(object sender, EventArgs e)
        {
            load_BaiHat();
            cb_hangsanxuat_formchinh.SelectedIndex = -1;
            cb_album_formchinh.SelectedIndex = -1;
            cb_casi_formchinh.SelectedIndex = -1;
            cb_theloai_formchinh.SelectedIndex = -1;
            cb_tacgia_formchinh.SelectedIndex = -1;
        }
        #endregion

        #region button xoá bài hát click
        private void btn_xoabaihat_Click(object sender, EventArgs e)
        {
            BaiHat_BUS bus = new BaiHat_BUS();
            string ma = dgv_baihat.Rows[dgv_baihat.CurrentCell.RowIndex].Cells[0].Value.ToString();
            try
            {
                DialogResult dialogResult = MessageBox.Show("Bạn có chắc chắn muốn xóa không?", "Xác nhận", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    bus.xoaBaiHat(ma);
                    load_BaiHat();
                }

                else if (dialogResult == DialogResult.No)
                    load_BaiHat();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        private void btn_suabaihat_Click(object sender, EventArgs e)
        {
            string maBaiHat = dgv_baihat.Rows[dgv_baihat.CurrentCell.RowIndex].Cells[0].Value.ToString();
            string tenBaiHat = dgv_baihat.Rows[dgv_baihat.CurrentCell.RowIndex].Cells[1].Value.ToString();
            string loiBaiHat = dgv_baihat.Rows[dgv_baihat.CurrentCell.RowIndex].Cells[7].Value.ToString();
            string maTheLoai = dgv_baihat.Rows[dgv_baihat.CurrentCell.RowIndex].Cells[2].Value.ToString();
            string maAlbum = dgv_baihat.Rows[dgv_baihat.CurrentCell.RowIndex].Cells[3].Value.ToString();
            string maCaSi = dgv_baihat.Rows[dgv_baihat.CurrentCell.RowIndex].Cells[4].Value.ToString();
            string maTacGia = dgv_baihat.Rows[dgv_baihat.CurrentCell.RowIndex].Cells[5].Value.ToString();
            string maHangSanXuat = dgv_baihat.Rows[dgv_baihat.CurrentCell.RowIndex].Cells[6].Value.ToString();

            fCapNhat_BaiHat.maBaiHat = maBaiHat;
            fCapNhat_BaiHat.tenBaiHat = tenBaiHat;
            fCapNhat_BaiHat.loiBaiHat = loiBaiHat;
            fCapNhat_BaiHat.maTheLoai = maTheLoai;
            fCapNhat_BaiHat.maAlbum = maAlbum;
            fCapNhat_BaiHat.maCaSi = maCaSi;
            fCapNhat_BaiHat.maTacGia = maTacGia;
            fCapNhat_BaiHat.maHangSanXuat = maHangSanXuat;

            this.Visible = false;
            fCapNhat_BaiHat f = new fCapNhat_BaiHat();
            f.ShowDialog();
            this.Visible = true;
            load_BaiHat();
        }

        private void button3_Click(object sender, EventArgs e)
        {

        }
    }
}
