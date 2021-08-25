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
            HangSanXuat_BUS tacgia;
            try
            {
                tacgia = new HangSanXuat_BUS(txt_mahangsanxuat.Text, txt_tenhangsanxuat.Text, txt_thongtinhangsanxuat.Text);
            }
            catch (Exception ex)
            {
                string err = ex.Message;
                MessageBox.Show(err, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (err.Contains("maH"))
                {
                    txt_mahangsanxuat.Focus();
                    return;
                }
                else
                    if (err.Contains("tenH"))
                {
                    txt_tenhangsanxuat.Focus();
                    return;
                }
                else
                    txt_thongtinhangsanxuat.Text = "Chưa có thông tin cho Hãng sản xuất !! == > bấm[Đồng ý] lần nữa để lưu Hãng sản xuất này !";
                return;
            }
            HangSanXuat_BUS tg = new HangSanXuat_BUS(txt_mahangsanxuat.Text, txt_tenhangsanxuat.Text, txt_thongtinhangsanxuat.Text);
            int result = tg.Update_HangSX();
            if (result == 0)
            {
                MessageBox.Show("Cập nhật thành công hãng sản xuất [" + txt_tenhangsanxuat.Text + "]");
            }
            MessageBox.Show("Cập nhật thất bại");

            this.DialogResult = DialogResult.OK;
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
