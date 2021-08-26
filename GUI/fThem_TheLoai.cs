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
    public partial class fThem_TheLoai : Form
    {
        public fThem_TheLoai()
        {
            InitializeComponent();
        }

        private void bt_huyBo_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void bt_nhapLai_Click(object sender, EventArgs e)
        {
            txt_maTheLoai.Text = "";
            txt_tenTheLoai.Text = "";
            txt_maTheLoai.Focus();
        }

        private void bt_dongY_Click(object sender, EventArgs e)
        {
            TheLoai_BUS newTheLoai;
            try
            {
                newTheLoai = new TheLoai_BUS(txt_maTheLoai.Text, txt_tenTheLoai.Text);
                if (txt_maTheLoai.Text == "")
                {
                    MessageBox.Show("Mã thể loại không được để trống", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (txt_tenTheLoai.Text == "")
                {
                    MessageBox.Show("Tên thể loại không được để trống", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                newTheLoai.themTheLoai();
                MessageBox.Show("Thêm thành công");
            }
            catch (Exception ex)
            {

                if (ex.Message.Contains("duplicate key"))
                {
                    MessageBox.Show("Hãy kiểm tra trùng mã thể loại", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txt_maTheLoai.Focus();
                }
                else MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void fThem_TheLoai_FormClosing(object sender, FormClosingEventArgs e)
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
