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
        string connString = @"Data Source=DESKTOP-CMM6T7Q;Initial Catalog=DBBaiHat;Integrated Security=True";

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
                if (dem % 2 == 0)
                    dgv_baihat_home.Rows[dem].DefaultCellStyle.BackColor = Color.PaleTurquoise;
                dem++;
            }
        }
        
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

        private void tabControl_formChinh_MouseClick(object sender, MouseEventArgs e)
        {
            load_Album();
            load_TheLoai();
            load_Tacgia();
            load_Hangsx();
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
            if (MessageBox.Show("BẠN CHẮC CHẮN MUỐN ĐÓNG ỨNG DỤNG ?", "THOÁT CHƯƠNG TRÌNH", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                this.Close();
        }

        private void dgv_theloai_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int d = e.RowIndex;
            BaiHat_BUS bus = new BaiHat_BUS();
            DataTable dt = new DataTable();
            String ma = dgv_theloai.Rows[d].Cells[1].Value.ToString();
            dt = bus.listBaiHatTheoTheLoai(ma);
            dgv_TheloaiBaihat.DataSource = dt;
        }

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

        private void bt_themTheLoai_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fThem_TheLoai f = new fThem_TheLoai();
            f.ShowDialog();
            this.Visible = true;
            load_TheLoai();
        }

        private void dgv_baihat_home_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            //int dem = 1;
            
        }

        private void dgv_baihat_home_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btn_close_Click(object sender, EventArgs e)
        {
            Close();
        }

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

        private void dataGridView1_CellContentClick_1(object sender, DataGridViewCellEventArgs e)
        {

        }

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
        
        // Tác giả
        private void btn_themNS_Click(object sender, EventArgs e)
        {
            this.Visible = false;
            fThem_Tacgia f = new fThem_Tacgia();
            f.ShowDialog();
            this.Visible = true;
            load_Tacgia();
        }
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

        #region dataGridView hãng sản xuất cellclick
        private void dgv_dsHangsx_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                //Luu lai dong du lieu vua kich chon
                DataGridViewRow row = this.dgv_dsHangsx.Rows[e.RowIndex];
                //Dua du lieu vao textbox
                txt_tenhangsanxuat.Text = row.Cells[1].Value.ToString();
                txt_thongtinhangsanxuat.Text = row.Cells[2].Value.ToString();

                string maHangsx = row.Cells[0].Value.ToString();
                themBangHSX(e.RowIndex, maHangsx);
            }
        }
        #endregion

        /*private void themBangBH(int select, string maTG)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            String sql = "select BAIHAT.ten_baihat, CASI.ten_casi,HANGSANXUAT.ten_hangsanxuat, BAIHAT.loi_baihat from BAIHAT INNER JOIN HANGSANXUAT ON BAIHAT.ma_hangsanxuat=HANGSANXUAT.ma_hangsanxuat INNER JOIN TACGIA ON BAIHAT.ma_tacgia=TACGIA.ma_tacgia INNER JOIN CASI ON CASI.ma_casi=BAIHAT.ma_casi WHERE TACGIA.ma_tacgia=@matg";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@matg", maTG);
            SqlDataReader red = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(red);
            dgv_Baihat_nhacsi.DataSource = dt;
        }*/

        private void themBangHSX(int select, string maHangsx)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();

            String sql = "select BAIHAT.ten_baihat, CASI.ten_casi,TACGIA.ten_tacgia, BAIHAT.loi_baihat from BAIHAT INNER JOIN TACGIA ON BAIHAT.ma_tacgia = TACGIA.ma_tacgia INNER JOIN HANGSANXUAT ON BAIHAT.ma_hangsanxuat = HANGSANXUAT.ma_hangsanxuat INNER JOIN CASI ON CASI.ma_casi=BAIHAT.ma_casi WHERE HANGSANXUAT.ma_hangsanxuat=@maHangSX";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@maHangSX", maHangsx);
            SqlDataReader red = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(red);
            dgv_Baihat_phathanh.DataSource = dt;
        }
    }
}
