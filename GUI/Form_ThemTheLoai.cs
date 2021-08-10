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
    public partial class Form_ThemTheLoai : Form
    {
        public Form_ThemTheLoai()
        {
            InitializeComponent();
        }

        private void Form_ThemTheLoai_Load(object sender, EventArgs e)
        {

        }

        private void bt_YES_Click(object sender, EventArgs e)
        {
            TheLoai_BUS newTheLoai;
            try
            {
                newTheLoai = new TheLoai_BUS(txt_maTL.Text, txt_tentL.Text);
                newTheLoai.themTheLoai();
                DialogResult dialogResult = MessageBox.Show("Bạn có muốn thêm không?", "Xác nhận", MessageBoxButtons.YesNo);
                if (dialogResult == DialogResult.Yes)
                {
                    MessageBox.Show("Thêm thành công thể loại [" + txt_tentL.Text + "] với mã thể loại là [" + txt_maTL.Text + "]");
                }

                else if (dialogResult == DialogResult.No)
                    MessageBox.Show("That bai");
            }
            catch (Exception ex)
            {
                string loi = ex.Message;
                MessageBox.Show(loi, "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                if (loi.Contains("mã"))
                    txt_maTL.Focus();
                else if (loi.Contains("tên"))
                    txt_tentL.Focus();
                if (ex.Message.Contains("duplicate key"))
                    MessageBox.Show("Hãy kiểm tra trùng key.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                else MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
        }

        private void bt_CLOSE_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void bt_CLEAR_Click(object sender, EventArgs e)
        {
            txt_maTL.Text = "";
            txt_tentL.Text = "";
            txt_maTL.Focus();
        }
    }
}
