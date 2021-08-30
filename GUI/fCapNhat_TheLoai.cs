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
    public partial class fCapNhat_TheLoai : Form
    {
        public static string maTheLoai;
        public static string tenTheLoai;
        public fCapNhat_TheLoai()
        {
            InitializeComponent();
            txt_maTheLoai.Text = maTheLoai.ToString();
            txt_tenTheLoai.Text = tenTheLoai;
        }

        private void btn_dongY_Click(object sender, EventArgs e)
        {
            TheLoai_BUS bus = new TheLoai_BUS();

            if (txt_tenTheLoai.Text == "")
            {
                MessageBox.Show("Tên thể loại không được để trống!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            maTheLoai = txt_maTheLoai.Text.ToString();
            tenTheLoai = txt_tenTheLoai.Text.ToString();

            bus.suaTheLoai(maTheLoai, tenTheLoai);
            MessageBox.Show("Sửa thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Close();
        }

        private void btn_nhapLai_Click(object sender, EventArgs e)
        {
            txt_tenTheLoai.Text = "";
            txt_tenTheLoai.Focus();
        }

        private void btn_dong_Click(object sender, EventArgs e)
        {
            string msg = "Xác nhận đóng!";
            DialogResult result = MessageBox.Show(msg, "Đóng",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
                Close();
        }
    }
}
