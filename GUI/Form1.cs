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

        //-------------------------LOAD DỮ LIỆU-----------------------//

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
            try
            {
                while (dgv_AlbumBaihat.Rows.Count > 1)
                {
                    dgv_AlbumBaihat.Rows.RemoveAt(0);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            dgv_Album.ClearSelection();
            dgv_AlbumBaihat.ClearSelection();
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
            try
            {
                while (dgv_TheloaiBaihat.Rows.Count > 1)
                {
                    dgv_TheloaiBaihat.Rows.RemoveAt(0);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            dgv_theloai.ClearSelection();
            dgv_TheloaiBaihat.ClearSelection();
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
            try
            {
                while (dgv_Baihat_nhacsi.Rows.Count > 1)
                {
                    dgv_Baihat_nhacsi.Rows.RemoveAt(0);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            txt_tentacgia.Text = "";
            txt_thongtintacgia.Text = "";
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
            try
            {
                while (dgv_Baihat_phathanh.Rows.Count > 1)
                {
                    dgv_Baihat_phathanh.Rows.RemoveAt(0);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            txt_tenhangsanxuat.Text = "";
            txt_thongtinhangsanxuat.Text = "";
        }
        #endregion

        #region load ca sĩ
        private void load_CaSi()
        {
            CaSi_BUS bus = new CaSi_BUS();
            dgv_dsCaSi.DataSource = bus.getCaSi();
            int dem = 0;
            foreach (DataRow row in bus.getCaSi().Rows)
            {
                if (dem % 2 == 0)
                    dgv_dsCaSi.Rows[dem].DefaultCellStyle.BackColor = Color.PaleTurquoise;
                dem++;
            }
            try
            {
                while (dgv_BaiHatTheoCaSi.Rows.Count > 1)
                {
                    dgv_BaiHatTheoCaSi.Rows.RemoveAt(0);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            txt_tencasi.Text = "";
            txt_thongtincasi.Text = "";
            dgv_dsCaSi.ClearSelection();
        }
        #endregion

        //----------------------------CLICK--------------------------//

        //button thêm

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

        #region button thêm ca sĩ click
        private void btn_themcasi_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fThem_CaSi f = new fThem_CaSi();
            f.ShowDialog();
            this.Visible = true;
            load_CaSi();
        }
        #endregion

        #region button thêm HSX click
        private void button1_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fThem_HangSX f = new fThem_HangSX();
            f.ShowDialog();
            this.Visible = true;
            load_Hangsx();
        }
        #endregion

        #region thông báo khi formclosing
        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            string msg = "Bạn có chắc chắn đóng không?";
            DialogResult result = MessageBox.Show(msg, "Xác nhận đóng",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
                e.Cancel = false;
            else if (result == DialogResult.No)
                e.Cancel = true;
        }
        #endregion

        //button tìm kiếm click

        #region button tìm kiếm click
        private void btn_timkiem_Click(object sender, EventArgs e)
        {
            if (txt_timkiem.Text == "(Gõ nội dung cần tìm kiếm...)" || txt_timkiem.Text == "")
            {
                MessageBox.Show("Thiếu nội dung cần tìm kiếm!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            //Tìm kiếm Album
            if (tabControl_TimKiem.SelectedIndex == 2)
            {
                Album_BUS bus = new Album_BUS();
                DataTable dt = new DataTable();
                dt = bus.findAlbum(txt_timkiem.Text);
                dgv_searchTenAlbum.DataSource = bus.findAlbum(txt_timkiem.Text);
                int dem = 0;
                foreach (DataRow row in dt.Rows)
                {
                    dem++;
                }
                if (dem == 0)
                {
                    DialogResult dialogResult = MessageBox.Show("Không có tên album trong danh sách!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }

            //Tìm kiếm Thể Loại
            if (tabControl_TimKiem.SelectedIndex == 6)
            {
                TheLoai_BUS bus = new TheLoai_BUS();
                DataTable dt = new DataTable();
                dt = bus.searchTheLoai(txt_timkiem.Text);
                dgv_searchTenTheLoai.DataSource = bus.searchTheLoai(txt_timkiem.Text);
                int dem = 0;
                foreach (DataRow row in dt.Rows)
                {
                    dem++;
                }
                if (dem == 0)
                {
                    DialogResult dialogResult = MessageBox.Show("Không có tên thể loại trong danh sách!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }

            //------------- Tìm kiếm Hãng sản xuất -------------//
            if (tabControl_TimKiem.SelectedIndex == 4)
            {
                HangSanXuat_BUS hangsx = new HangSanXuat_BUS();
                DataTable dt = new DataTable();
                dt = hangsx.timkiem_hsx(txt_timkiem.Text);
                dgv_timkiemHSX.DataSource = hangsx.timkiem_hsx(txt_timkiem.Text);
                int dem = 0;
                foreach (DataRow row in dt.Rows)
                {
                    dem++;
                }
                if (dem == 0)
                {
                    DialogResult dia = MessageBox.Show("Không có tên hãng sản xuất trong danh sách", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }

            //------------- Tìm kiếm nhạc sĩ -------------------//
            if (tabControl_TimKiem.SelectedIndex == 5)
            {
                TacGia_BUS tacgia = new TacGia_BUS();
                DataTable dt = new DataTable();
                dt = tacgia.timkiem_tg(txt_timkiem.Text);
                dgv_timkiemTacGia.DataSource = tacgia.timkiem_tg(txt_timkiem.Text);
                int dem = 0;
                foreach (DataRow row in dt.Rows)
                {
                    dem++;
                }
                if (dem == 0)
                {
                    DialogResult dia = MessageBox.Show("Không có tên nhạc sĩ trong danh sách", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            //------------- Tìm kiếm bài hát theo lời bài hát -------------------//
            if (tabControl_TimKiem.SelectedIndex == 3)
            {
                BaiHat_BUS bus = new BaiHat_BUS();
                dgv_search_LoiBaiHat.DataSource = bus.getBaiHatByLoiBaiHat(txt_timkiem.Text.ToString());
                int dem = 0;
                foreach (DataRow row in bus.getBaiHatByLoiBaiHat(txt_timkiem.Text.ToString()).Rows)
                {
                    dem++;
                }
                if (dem == 0)
                {
                    MessageBox.Show("Không có bài hát có lời bài hát này!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            //------------- Tìm kiếm bài hát theo tên bài hát -------------------//
            if (tabControl_TimKiem.SelectedIndex == 0)
            {
                BaiHat_BUS bus = new BaiHat_BUS();
                dgv_searchTenBaiHat.DataSource = bus.getBaiHatByTenBaiHat(txt_timkiem.Text.ToString());
                int dem = 0;
                foreach (DataRow row in bus.getBaiHatByTenBaiHat(txt_timkiem.Text.ToString()).Rows)
                {
                    dem++;
                }
                if (dem == 0)
                {
                    MessageBox.Show("Không tồn tại bài hát có tên này!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
            //------------- TÌm kiếm ca sĩ theo tên ca sĩ -------------------//
            if (tabControl_TimKiem.SelectedIndex == 1)
            {
                CaSi_BUS bus = new CaSi_BUS();
                dgv_searchTenCaSi.DataSource = bus.getCaSiByTen(txt_timkiem.Text.ToString());
                int dem = 0;
                foreach (DataRow row in bus.getCaSiByTen(txt_timkiem.Text.ToString()).Rows)
                {
                    dem++;
                }
                if (dem == 0)
                {
                    MessageBox.Show("Không tồn tại ca sĩ có tên này!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }
        #endregion

        //button xoá

        #region button xoá ca sĩ click
        private void btn_xoacasi_Click(object sender, EventArgs e)
        {
            CaSi_BUS bus = new CaSi_BUS();
            string ma = dgv_dsCaSi.Rows[dgv_dsCaSi.CurrentCell.RowIndex].Cells[0].Value.ToString();
            try
            {
                DialogResult dialogResult = MessageBox.Show("Bạn có chắc chắn muốn xóa không?", "Xác nhận", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    bus.xoaCasi(ma);
                    load_CaSi();
                }
                else if (dialogResult == DialogResult.No)
                    load_CaSi();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
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

        #region button xoá nhạc sĩ click
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
                load_Tacgia();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region button xoá hãng sản xuất click
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

        //button sửa

        #region button sửa ca sĩ click
        private void btn_editcasi_Click(object sender, EventArgs e)
        {
            string maCaSi = dgv_dsCaSi.Rows[dgv_dsCaSi.CurrentCell.RowIndex].Cells[0].Value.ToString();
            string tenCaSi = dgv_dsCaSi.Rows[dgv_dsCaSi.CurrentCell.RowIndex].Cells[1].Value.ToString();
            string thongTinCaSi = dgv_dsCaSi.Rows[dgv_dsCaSi.CurrentCell.RowIndex].Cells[2].Value.ToString();

            fCapNhat_CaSi.maCaSi = maCaSi;
            fCapNhat_CaSi.tenCaSi = tenCaSi;
            fCapNhat_CaSi.thongTinCaSi = thongTinCaSi;

            this.Visible = false;
            fCapNhat_CaSi f = new fCapNhat_CaSi();
            f.ShowDialog();
            this.Visible = true;
            load_CaSi();
        }
        #endregion

        #region button sửa bài hát click
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
        #endregion

        #region button sửa ca sĩ click
        private void btn_chinhSuaAlbum_Click(object sender, EventArgs e)
        {
            fCapNhat_Album.maAlbum = dgv_Album.Rows[dgv_Album.CurrentCell.RowIndex].Cells[0].Value.ToString();
            fCapNhat_Album.tenAlbum = dgv_Album.Rows[dgv_Album.CurrentCell.RowIndex].Cells[1].Value.ToString();
            fCapNhat_Album.namPhatHanh = dgv_Album.Rows[dgv_Album.CurrentCell.RowIndex].Cells[2].Value.ToString();

            this.Visible = false;
            fCapNhat_Album f = new fCapNhat_Album();
            f.ShowDialog();
            this.Visible = true;

            load_Album();
        }
        #endregion

        #region button sửa thể loại click
        private void btn_chinhSuaTheLoai_Click(object sender, EventArgs e)
        {
            fCapNhat_TheLoai.maTheLoai = dgv_theloai.Rows[dgv_theloai.CurrentCell.RowIndex].Cells[0].Value.ToString();
            fCapNhat_TheLoai.tenTheLoai = dgv_theloai.Rows[dgv_theloai.CurrentCell.RowIndex].Cells[1].Value.ToString();

            this.Visible = false;
            fCapNhat_TheLoai f = new fCapNhat_TheLoai();
            f.ShowDialog();
            this.Visible = true;

            load_TheLoai();
        }
        #endregion

        #region button sửa nhạc sĩ click
        private void btn_suaNS_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fCapnhat_Tacgia capnhat = new fCapnhat_Tacgia();
            capnhat.ma = dgv_dsNhacSi.Rows[dgv_dsNhacSi.CurrentCell.RowIndex].Cells[0].Value.ToString();
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
            load_Tacgia();
        }
        #endregion

        #region button sửa HSX click
        private void btn_suaHSX_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fCapnhat_HangSX f = new fCapnhat_HangSX();
            f.maH = dgv_dsHangsx.Rows[dgv_dsHangsx.CurrentCell.RowIndex].Cells[0].Value.ToString();
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
            load_Hangsx();
        }
        #endregion  

        //button đóng ứng dụng click

        #region button đóng click
        private void btn_close_Click(object sender, EventArgs e)
        {
            Close();
        }
        #endregion

        //button hiển thị toàn bộ bài hát click

        #region button hiển thị bài hát click
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

        //dataGridView cell click

        #region dgv album cellclick
        private void dgv_Album_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int d = e.RowIndex;
            BaiHat_BUS bus = new BaiHat_BUS();
            if (d >= 0)
            {
                String ma = dgv_Album.Rows[d].Cells[0].Value.ToString();
                dgv_AlbumBaihat.DataSource = bus.listBaiHatTheoAlbum(ma);
            }

            dgv_AlbumBaihat.ClearSelection();
        }
        #endregion

        #region dgv thể loại cellclick
        private void dgv_theloai_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int d = e.RowIndex;
            BaiHat_BUS bus = new BaiHat_BUS();
            if (d >= 0)
            {
                String ma = dgv_theloai.Rows[d].Cells[0].Value.ToString();
                dgv_TheloaiBaihat.DataSource = bus.listBaiHatTheoTheLoai(ma);
            }

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

        #region dgv hãng sản xuất cellclick
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
                txt_tenhangsanxuat.Text = dgv_dsHangsx.Rows[d].Cells[1].Value.ToString();
                txt_thongtinhangsanxuat.Text = dgv_dsHangsx.Rows[d].Cells[2].Value.ToString();
                dgv_Baihat_phathanh.ClearSelection();
            }
        }
        #endregion

        #region dgv ca sĩ cellclick
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

        //tool strip menu click

        #region tool strip menu click
        private void quảnLýAlbumToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl_formChinh.SelectedIndex = 1;
            load_Album();
        }

        private void quảnLýTHỂLOẠIToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl_formChinh.SelectedIndex = 2;
            load_TheLoai();
        }

        private void quảnLýCASĨToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl_formChinh.SelectedIndex = 3;
            load_CaSi();
        }

        private void quảnLýTÁCGIẢToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl_formChinh.SelectedIndex = 4;
            load_Tacgia();
        }

        private void quảnLýBÀIHÁTToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl_formChinh.SelectedIndex = 7;
            load_BaiHat();
        }

        private void quảnLýHÃNGSẢNXUẤTToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl_formChinh.SelectedIndex = 5;
            load_Hangsx();
        }

        private void quảnLýTRACỨUTÌMKIẾMToolStripMenuItem_Click(object sender, EventArgs e)
        {
            tabControl_formChinh.SelectedIndex = 6;
            resetDgvTimKiem();
        }

        private void đóngỨngDụngToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Close();
        }
        #endregion

        #region menu tool strip click
        private void thôngTinSinhViênThựcHiệnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fThongTinSV f = new fThongTinSV();
            f.ShowDialog();
            this.Visible = true;
        }

        private void thôngTinĐềTàiToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fThongTinDeTai f = new fThongTinDeTai();
            f.ShowDialog();
            this.Visible = true;
        }
        #endregion

        //tabcontrol click

        #region tabcontrol form chính mouse click
        private void tabControl_formChinh_MouseClick(object sender, MouseEventArgs e)
        {
            load_Album();
            load_TheLoai();
            load_Tacgia();
            load_Hangsx();
            load_CaSi();
            load_BaiHat();
            txt_timkiem.Text = "(Gõ nội dung cần tìm kiếm...)";
            txt_timkiem.ForeColor = Color.Silver;
            resetDgvTimKiem();
            tabControl_TimKiem.SelectedIndex = 0;
        }
        #endregion

        #region tabcontrol tìm kiếm click
        private void tabControl_TimKiem_MouseClick(object sender, MouseEventArgs e)
        {
            txt_timkiem.Text = "(Gõ nội dung cần tìm kiếm...)";
            txt_timkiem.ForeColor = Color.Silver;
            resetDgvTimKiem();
        }
        #endregion

        //------------------------------Các hàm xử lý để lọc, tìm kiếm...----------------------------//

        //các hàm lọc bài hát theo thuộc tính

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

        //xử lí text trong ô tìm kiếm

        #region click tìm kiếm hidden text
        private void txt_timkiem_Enter(object sender, EventArgs e)
        {
            if (txt_timkiem.Text == "(Gõ nội dung cần tìm kiếm...)")
            {
                txt_timkiem.Text = "";
                txt_timkiem.ForeColor = Color.Black;
            }
        }
        #endregion

        #region click ngoài ô tìm kiếm thì display text
        private void txt_timkiem_Leave(object sender, EventArgs e)
        {
            if (txt_timkiem.Text == "")
            {
                txt_timkiem.Text = "(Gõ nội dung cần tìm kiếm...)";
                txt_timkiem.ForeColor = Color.Silver;
            }
        }
        #endregion

        #region reset dgv_timkiem
        public void resetDgvTimKiem()
        {
            try
            {
                while (dgv_search_LoiBaiHat.Rows.Count > 1)
                {
                    dgv_search_LoiBaiHat.Rows.RemoveAt(0);
                }
                while (dgv_searchTenTheLoai.Rows.Count > 1)
                {
                    dgv_searchTenTheLoai.Rows.RemoveAt(0);
                }
                while (dgv_searchTenCaSi.Rows.Count > 1)
                {
                    dgv_searchTenCaSi.Rows.RemoveAt(0);
                }
                while (dgv_searchTenAlbum.Rows.Count > 1)
                {
                    dgv_searchTenAlbum.Rows.RemoveAt(0);
                }
                while (dgv_searchHangSanXuat.Rows.Count > 1)
                {
                    dgv_searchHangSanXuat.Rows.RemoveAt(0);
                }
                while (dgv_searchTenBaiHat.Rows.Count > 1)
                {
                    dgv_searchTenBaiHat.Rows.RemoveAt(0);
                }
                while (dgv_timkiemTacGia.Rows.Count > 1)
                {
                    dgv_timkiemTacGia.Rows.RemoveAt(0);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion
    }
}
