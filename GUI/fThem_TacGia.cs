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
    public partial class fThem_Tacgia : Form
    {
        public fThem_Tacgia()
        {
            InitializeComponent();
        }

        #region button đồng ý click
        private void button1_Click(object sender, EventArgs e)
        {
            TacGia_BUS tacgia = new TacGia_BUS();
            try
            {
                //tacgia = new TacGia_BUS(txt_matacgia.Text, txt_tentacgia.Text, txt_thongtintacgia.Text);
                tacgia.MATACGIA = txt_matacgia.Text.ToString();
                tacgia.TENTACGIA = txt_tentacgia.Text.ToString();
                tacgia.THONGTINTACGIA = txt_thongtintacgia.Text.ToString();
                if (txt_matacgia.Text == "")
                {
                    MessageBox.Show("Mã tác giả không được bỏ trống", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (txt_tentacgia.Text == "")
                {
                    MessageBox.Show("Tên tác giả không được bỏ trống", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (txt_thongtintacgia.Text == "")
                {
                    MessageBox.Show("Thông tin tác giả không được bỏ trống", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (txt_matacgia.Text.Length > 10)
                {
                    MessageBox.Show("Mã tác giả chỉ được nhập tối đa 10 ký tự", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                tacgia.Insert_TacGia();
                MessageBox.Show("Thêm thành công");
            }
            catch (Exception ex)
            {
                if (txt_matacgia.Text.Contains("trung ma"))
                {
                    MessageBox.Show("Trùng mã. Vui lòng nhập lại", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                else
                {
                    MessageBox.Show(ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        #endregion

        #region button nhập lại click
        private void btn_nhaplai_Click(object sender, EventArgs e)
        {
            txt_matacgia.Text = txt_tentacgia.Text = txt_thongtintacgia.Text = "";
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
