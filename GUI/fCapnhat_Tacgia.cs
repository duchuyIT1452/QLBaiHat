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

        private void btn_ok_Click(object sender, EventArgs e)
        {
            TacGia_BUS tacgia;
            try
            {
                tacgia = new TacGia_BUS(txt_matacgia.Text, txt_tentacgia.Text, txt_thongtintacgia.Text);
            }
            catch (Exception ex)
            {
                string err = ex.Message;
                MessageBox.Show(err, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (err.Contains("ma"))
                {
                    txt_matacgia.Focus();
                    return;
                }
                else
                    if (err.Contains("ten"))
                {
                    txt_tentacgia.Focus();
                    return;
                }
                else
                    txt_thongtintacgia.Text = "Chưa có thông tin cho tác giả !! == > bấm[Đồng ý] lần nữa để lưu tác giả này !";
                return;
            }
            TacGia_BUS tg = new TacGia_BUS(txt_matacgia.Text, txt_tentacgia.Text, txt_thongtintacgia.Text);
            int result = tg.Update_TacGia();
            if (result == 0)
            {
                MessageBox.Show("Cập nhật thành công tác giả [" + txt_tentacgia.Text + "]");
            }
            MessageBox.Show("Cập nhật thất bại");

            this.DialogResult = DialogResult.OK;
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

        private void fCapnhat_Tacgia_Load(object sender, EventArgs e)
        {
            txt_matacgia.Text = ma;
            txt_tentacgia.Text = ten;
            txt_thongtintacgia.Text = thongtin;
            this.Text = "Cập nhật Tác Giả [" + ten + "]";
            txt_tentacgia.SelectAll();
            txt_tentacgia.Focus();
        }
    }
}
