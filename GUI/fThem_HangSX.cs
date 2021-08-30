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
    public partial class fThem_HangSX : Form
    {
        public fThem_HangSX()
        {
            InitializeComponent();
        }

        private void btn_them_Click(object sender, EventArgs e)
        {
            HangSanXuat_BUS hangsx;
            try
            {
                hangsx = new HangSanXuat_BUS(txt_mahangsx.Text, txt_tenhangsx.Text, txt_thongtin.Text);
                if (txt_mahangsx.Text == "")
                {
                    MessageBox.Show("Mã hãng sản xuất không được bỏ trống", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (txt_tenhangsx.Text == "")
                {
                    MessageBox.Show("Tên hãng sản xuất không được bỏ trống", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (txt_thongtin.Text == "")
                {
                    MessageBox.Show("Thông tin hãng sản xuất không được bỏ trống", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                hangsx.Insert_HangSX();
                MessageBox.Show("Thêm thành công");
            }
            catch (Exception ex)
            {
                if (txt_mahangsx.Text.Contains("trung ma"))
                {
                    MessageBox.Show("Trùng mã. Vui lòng nhập lại", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                else
                    MessageBox.Show(ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        private void btn_nhaplai_Click(object sender, EventArgs e)
        {
            txt_mahangsx.Text = txt_tenhangsx.Text = txt_thongtin.Text = "";
            txt_mahangsx.Focus();
        }

        private void btn_thoat_Click(object sender, EventArgs e)
        {
            string msg = "Xác nhận đóng!";
            DialogResult result = MessageBox.Show(msg, "Đóng",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
                Close();
        }
    }
}
