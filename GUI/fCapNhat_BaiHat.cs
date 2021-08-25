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
        public string maBaiHat;
        public string maTheLoai;
        public string maAlbum;
        public string maCaSi;
        public string maTacGia;
        public string maHangSanXuat;
        public fCapNhat_BaiHat()
        {
            InitializeComponent();
            txt_loibaihat.Text = txt_loibaihat.ToString();
            txt_mabaihat.Text = txt_mabaihat.ToString();
            txt_tenbaihat.Text = txt_tenbaihat.ToString();

            //load combobox thể loại
            TheLoai_BUS tlBus = new TheLoai_BUS();
            cb_theloai.DataSource = tlBus.getTheLoai();
            cb_theloai.DisplayMember = "ten_theloai";
            cb_theloai.ValueMember = "ma_theloai";
            cb_theloai.SelectedValue = maTheLoai;

            //load combobox album
            Album_BUS abBus = new Album_BUS();
            cb_album.DataSource = abBus.getAlbum();
            cb_album.DisplayMember = "ten_album";
            cb_album.ValueMember = "ma_album";
            cb_album.SelectedValue = maAlbum;

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

            //txt_loibaihat.Text = "";
            //txt_mabaihat.Text = "";
            //txt_tenbaihat.Text = "";
        }

        private void button2_Click(object sender, EventArgs e)
        {

        }
    }
}
