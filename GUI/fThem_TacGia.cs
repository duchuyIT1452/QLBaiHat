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

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            TacGia_BUS tacgia;
            try
            {
                tacgia = new TacGia_BUS(txt_matacgia.Text, txt_tentacgia.Text, txt_thongtintacgia.Text);
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

        private void btn_nhaplai_Click(object sender, EventArgs e)
        {
            txt_matacgia.Text = txt_tentacgia.Text = txt_thongtintacgia.Text = "";
            txt_matacgia.Focus();
        }

        private void btn_huy_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void fThem_Tacgia_FormClosing(object sender, FormClosingEventArgs e)
        {
            string msg = "Bạn có chắc chắn huỷ không?";
            DialogResult result = MessageBox.Show(msg, "Huỷ",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
                e.Cancel = false;
            else if (result == DialogResult.No)
                e.Cancel = true;
        }
    }
}
