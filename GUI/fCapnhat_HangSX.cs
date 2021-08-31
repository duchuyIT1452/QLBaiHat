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

        #region form load
        private void fCapnhat_HangSX_Load(object sender, EventArgs e)
        {
            txt_mahangsanxuat.Text = maH;
            txt_tenhangsanxuat.Text = tenH;
            txt_thongtinhangsanxuat.Text = thongtinH;
            this.Text = "Cập nhật Hãng sản xuất [" + tenH + "]";
            txt_tenhangsanxuat.SelectAll();
            txt_tenhangsanxuat.Focus();
        }
        #endregion

        #region button đồng ý click
        private void btn_ok_Click(object sender, EventArgs e)
        {
            HangSanXuat_BUS bus = new HangSanXuat_BUS();
            if(txt_tenhangsanxuat.Text == "" || txt_thongtinhangsanxuat.Text == "")
            {
                MessageBox.Show("Vui lòng điền đầy đủ thông tin!", "XÁC NHẬN LỖI", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txt_tenhangsanxuat.Text.Length > 100)
            {
                MessageBox.Show("Tên hãng sản xuất chỉ được nhập tối đa 100 ký tự", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txt_thongtinhangsanxuat.Text.Length > 1000)
            {
                MessageBox.Show("Thông tin hãng sản xuất chỉ được nhập tối đa 1000 ký tự", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            maH = txt_mahangsanxuat.Text;
            tenH = txt_tenhangsanxuat.Text;
            thongtinH = txt_thongtinhangsanxuat.Text;

            bus.capnhatHSX(maH, tenH, thongtinH);
            MessageBox.Show("Cập nhật thành công", "Thành công", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Close();
        }
        #endregion

        #region button nhập lại click
        private void btn_nhaplai_Click(object sender, EventArgs e)
        {
            txt_mahangsanxuat.Text = maH;
            txt_tenhangsanxuat.Text = tenH;
            txt_thongtinhangsanxuat.Text = thongtinH;
            txt_mahangsanxuat.Focus();
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
