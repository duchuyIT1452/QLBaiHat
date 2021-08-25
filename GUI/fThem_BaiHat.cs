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
        }
        #endregion

        private void button1_Click(object sender, EventArgs e)
        {
            String maBaiHat, tenBaiHat, maTheLoai, maAlbum, maCaSi, maTacGia, maHSX, loiBaiHat;
            maBaiHat = txt_mabaihat.Text;
            tenBaiHat = txt_tenbaihat.Text;
            loiBaiHat = txt_loibaihat.Text;
            maTheLoai = cb_theloai.SelectedValue.ToString();
            maAlbum = cb_album.SelectedValue.ToString();
            maCaSi = cb_casi.SelectedValue.ToString();
            maTacGia = cb_tacgia.SelectedValue.ToString();
            maHSX = cb_hsx.SelectedValue.ToString();
        }
    }
}
