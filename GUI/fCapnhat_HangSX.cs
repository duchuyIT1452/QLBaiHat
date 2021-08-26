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
    public partial class fCapnhat_HangSX : Form
    {
        public string maH, tenH, thongtinH;
        public fCapnhat_HangSX()
        {
            InitializeComponent();
        }

        private void fCapnhat_HangSX_Load(object sender, EventArgs e)
        {
            txt_mahangsanxuat.Text = maH;
            txt_tenhangsanxuat.Text = tenH;
            txt_thongtinhangsanxuat.Text = thongtinH;
            this.Text = "Cập nhật Hãng sản xuất [" + tenH + "]";
            txt_tenhangsanxuat.SelectAll();
            txt_tenhangsanxuat.Focus();
        }

        private void btn_ok_Click(object sender, EventArgs e)
        {
            HangSanXuat_BUS bus = new HangSanXuat_BUS();
            if(txt_tenhangsanxuat.Text == "" || txt_thongtinhangsanxuat.Text == "")
            {
                MessageBox.Show("Vui lòng điền đầy đủ thông tin!", "XÁC NHẬN LỖI", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            maH = txt_mahangsanxuat.Text;
            tenH = txt_tenhangsanxuat.Text;
            thongtinH = txt_thongtinhangsanxuat.Text;

            bus.capnhatHSX(maH, tenH, thongtinH);
            MessageBox.Show("Cập nhật thành công", "Thành công", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void fCapnhat_HangSX_FormClosing(object sender, FormClosingEventArgs e)
        {
            string msg = "Bạn có chắc chắn huỷ không?";
            DialogResult result = MessageBox.Show(msg, "Huỷ",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
                e.Cancel = false;
            else if (result == DialogResult.No)
                e.Cancel = true;
        }

        private void btn_nhaplai_Click(object sender, EventArgs e)
        {
            txt_mahangsanxuat.Text = txt_tenhangsanxuat.Text = txt_thongtinhangsanxuat.Text = "";
            txt_mahangsanxuat.Focus();
        }

        private void btn_huy_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }
    }
}
