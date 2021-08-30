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
    public partial class fCapNhat_BaiHat : Form
    {
        public static string maBaiHat;
        public static string tenBaiHat;
        public static string loiBaiHat;
        public static string maTheLoai;
        public static string maAlbum;
        public static string maCaSi;
        public static string maTacGia;
        public static string maHangSanXuat;
        public fCapNhat_BaiHat()
        {
            InitializeComponent();
            

            //txt_loibaihat.Text = "";
            //txt_mabaihat.Text = "";
            //txt_tenbaihat.Text = "";
        }

        private void btn_sua_Click(object sender, EventArgs e)
        {
            BaiHat_BUS bus = new BaiHat_BUS();

            if(txt_loibaihat.Text == "" || txt_tenbaihat.Text == "")
            {
                MessageBox.Show("Chưa cung cấp đầy đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            maBaiHat = txt_mabaihat.Text.ToString();
            tenBaiHat = txt_tenbaihat.Text.ToString();
            loiBaiHat = txt_loibaihat.Text.ToString();
            maAlbum = cb_album.SelectedValue.ToString();
            maCaSi = cb_casi.SelectedValue.ToString();
            maHangSanXuat = cb_hsx.SelectedValue.ToString();
            maTheLoai = cb_theloai.SelectedValue.ToString();
            maTacGia = cb_tacgia.SelectedValue.ToString();


            bus.capNhatBaiHat(maBaiHat, tenBaiHat, maTheLoai, maAlbum, maCaSi, maTacGia, maHangSanXuat, loiBaiHat);
            MessageBox.Show("Sửa thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Close();
        }

        private void btn_nhaplai_Click(object sender, EventArgs e)
        {
            fCapNhat_BaiHat_Load(sender, e);
        }

        private void fCapNhat_BaiHat_Load(object sender, EventArgs e)
        {
            this.ActiveControl = label1;
            txt_loibaihat.Text = loiBaiHat.ToString();
            txt_mabaihat.Text = maBaiHat.ToString();
            txt_tenbaihat.Text = tenBaiHat.ToString();

            //load combobox thể loại
            TheLoai_BUS tlBus = new TheLoai_BUS();
            cb_theloai.DataSource = tlBus.getTheLoai();
            cb_theloai.DisplayMember = "ten_theloai";
            cb_theloai.ValueMember = "ma_theloai";
            cb_theloai.SelectedValue = maTheLoai.ToString();

            //load combobox album
            Album_BUS abBus = new Album_BUS();
            cb_album.DataSource = abBus.getAlbum();
            cb_album.DisplayMember = "ten_album";
            cb_album.ValueMember = "ma_album";
            cb_album.SelectedValue = maAlbum.ToString();

            //load combobox ca sĩ
            CaSi_BUS csBus = new CaSi_BUS();
            cb_casi.DataSource = csBus.getCaSi();
            cb_casi.DisplayMember = "ten_casi";
            cb_casi.ValueMember = "ma_casi";
            cb_casi.SelectedValue = maCaSi;

            //load combobox tác giả
            TacGia_BUS tgBus = new TacGia_BUS();
            cb_tacgia.DataSource = tgBus.getAllTacGia();
            cb_tacgia.DisplayMember = "ten_tacgia";
            cb_tacgia.ValueMember = "ma_tacgia";
            cb_tacgia.SelectedValue = maTacGia;

            //load combobox hãng sản xuất
            HangSanXuat_BUS hsxBus = new HangSanXuat_BUS();
            cb_hsx.DataSource = hsxBus.getAllHangSX();
            cb_hsx.DisplayMember = "ten_hangsanxuat";
            cb_hsx.ValueMember = "ma_hangsanxuat";
            cb_hsx.SelectedValue = maHangSanXuat;
        }

        private void btn_huy_Click(object sender, EventArgs e)
        {
            string msg = "Xác nhận đóng!";
            DialogResult result = MessageBox.Show(msg, "Đóng",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
                Close();
        }
    }
}
