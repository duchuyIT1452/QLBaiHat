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
    public partial class fThem_BaiHat : Form
    {
        public fThem_BaiHat()
        {
            InitializeComponent();
        }

        #region form thêm bài hát load
        private void fThem_BaiHat_Load(object sender, EventArgs e)
        {
            //load combobox thể loại
            TheLoai_BUS tlBus = new TheLoai_BUS();
            cb_theloai.DataSource = tlBus.getTheLoai();
            cb_theloai.DisplayMember = "ten_theloai";
            cb_theloai.ValueMember = "ma_theloai";
            cb_theloai.SelectedIndex = -1;

            //load combobox album
            Album_BUS abBus = new Album_BUS();
            cb_album.DataSource = abBus.getAlbum();
            cb_album.DisplayMember = "ten_album";
            cb_album.ValueMember = "ma_album";
            cb_album.SelectedIndex = -1;

            //load combobox ca sĩ
            CaSi_BUS csBus = new CaSi_BUS();
            cb_casi.DataSource = csBus.getCaSi();
            cb_casi.DisplayMember = "ten_casi";
            cb_casi.ValueMember = "ma_casi";
            cb_casi.SelectedIndex = -1;

            //load combobox tác giả
            TacGia_BUS tgBus = new TacGia_BUS();
            cb_tacgia.DataSource = tgBus.getAllTacGia();
            cb_tacgia.DisplayMember = "ten_tacgia";
            cb_tacgia.ValueMember = "ma_tacgia";
            cb_tacgia.SelectedIndex = -1;

            //load combobox hãng sản xuất
            HangSanXuat_BUS hsxBus = new HangSanXuat_BUS();
            cb_hsx.DataSource = hsxBus.getAllHangSX();
            cb_hsx.DisplayMember = "ten_hangsanxuat";
            cb_hsx.ValueMember = "ma_hangsanxuat";
            cb_hsx.SelectedIndex = -1;

            txt_loibaihat.Text = "";
            txt_mabaihat.Text = "";
            txt_tenbaihat.Text = "";
        }
        #endregion

        #region button thêm click
        private void btn_them_Click(object sender, EventArgs e)
        {
            String maBaiHat, tenBaiHat, maTheLoai, maAlbum, maCaSi, maTacGia, maHSX, loiBaiHat;
            

            BaiHat_BUS bus = new BaiHat_BUS();
            try
            {
                //Kiểm tra xem thông tin đã đẩy đủ chưa
                if (txt_mabaihat.Text == "" || txt_tenbaihat.Text == "" || txt_loibaihat.Text == "" || cb_theloai.SelectedIndex == -1 || cb_tacgia.SelectedIndex == -1 || cb_casi.SelectedIndex == -1 || cb_tacgia.SelectedIndex == -1 || cb_hsx.SelectedIndex == -1)
                {
                    MessageBox.Show("Chưa cung cấp đầy đủ thông tin!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if(txt_mabaihat.Text.Length > 10)
                {
                    MessageBox.Show("Mã bài hát chỉ được nhập tối đa 10 ký tự", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if(txt_tenbaihat.Text.Length > 100)
                {
                    MessageBox.Show("Tên bài hát chỉ được nhập tối đa 100 ký tự", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                maBaiHat = txt_mabaihat.Text;
                tenBaiHat = txt_tenbaihat.Text;
                loiBaiHat = txt_loibaihat.Text;
                maTheLoai = cb_theloai.SelectedValue.ToString();
                maAlbum = cb_album.SelectedValue.ToString();
                maCaSi = cb_casi.SelectedValue.ToString();
                maTacGia = cb_tacgia.SelectedValue.ToString();
                maHSX = cb_hsx.SelectedValue.ToString();

                //Kiểm tra mã nhập vào có bị trùng hay không
                int dem = 0;
                foreach (DataRow row in bus.getBaiHatByMaBaiHat(maBaiHat).Rows)
                {
                    dem++;
                }
                if (dem > 0)
                {
                    MessageBox.Show("Trùng mã!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                bus.themBaiHat(maBaiHat, tenBaiHat, maTheLoai, maAlbum, maCaSi, maTacGia, maHSX, loiBaiHat);
                MessageBox.Show("Thêm thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                fThem_BaiHat_Load(sender, e);
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        #endregion

        #region button nhập lại click
        private void btn_nhaplai_Click(object sender, EventArgs e)
        {
            fThem_BaiHat_Load(sender, e);
        }
        #endregion

        #region button đóng click
        private void btn_huy_Click(object sender, EventArgs e)
        {
            string msg = "Xác nhận đóng!";
            DialogResult result = MessageBox.Show(msg, "Đóng",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
                Close();
        }
        #endregion
    }
}
