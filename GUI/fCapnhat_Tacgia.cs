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
    public partial class fCapnhat_Tacgia : Form
    {
        public string ma, ten, thongtin;
        public fCapnhat_Tacgia()
        {
            InitializeComponent();
        }

        #region form load
        private void fCapnhat_Tacgia_Load(object sender, EventArgs e)
        {
            txt_matacgia.Text = ma;
            txt_tentacgia.Text = ten;
            txt_thongtintacgia.Text = thongtin;
            this.Text = "Cập nhật Tác Giả [" + ten + "]";
            txt_tentacgia.SelectAll();
            txt_tentacgia.Focus();
        }
        #endregion

        #region button đồng ý click
        private void btn_ok_Click(object sender, EventArgs e)
        {
            TacGia_BUS bus = new TacGia_BUS();
           if(txt_tentacgia.Text == "" || txt_thongtintacgia.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đầy đủ thông tin!", "XÁC NHẬN LỖI", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txt_tentacgia.Text.Length > 50)
            {
                MessageBox.Show("Tên tác giả chỉ được nhập tối đa 50 ký tự", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txt_thongtintacgia.Text.Length > 1000)
            {
                MessageBox.Show("Thông tin tác giả chỉ được nhập tối đa 1000 ký tự", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            ma = txt_matacgia.Text;
            ten = txt_tentacgia.Text;
            thongtin = txt_thongtintacgia.Text;

            bus.CapNhat_TG(ma, ten, thongtin);
            MessageBox.Show("Cập nhật thành công", "THÀNH CÔNG", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Close();
        }
        #endregion

        #region button nhập lại click
        private void btn_nhaplai_Click(object sender, EventArgs e)
        {
            txt_matacgia.Text = ma;
            txt_tentacgia.Text = ten;
            txt_thongtintacgia.Text = thongtin;
            txt_matacgia.Focus();
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
