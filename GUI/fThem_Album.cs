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
    public partial class fThem_Album : Form
    {
        public fThem_Album()
        {
            InitializeComponent();
        }

        private void bt_dongY_Click(object sender, EventArgs e)
        {
            Album_BUS newAlbum;
            try
            {
                newAlbum = new Album_BUS(txt_maAlbum.Text, txt_tenAlbum.Text, dtp_namphathanh.Value);
                if (txt_maAlbum.Text == "")
                {
                    MessageBox.Show("Mã album không được để trống", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (txt_tenAlbum.Text == "")
                {
                    MessageBox.Show("Tên album không được để trống", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                newAlbum.themAlbum();
                MessageBox.Show("Thêm thành công");
            }
            catch (Exception ex)
            {

                if (ex.Message.Contains("duplicate key"))
                {
                    MessageBox.Show("Hãy kiểm tra trùng mã album", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txt_maAlbum.Focus();
                }
                else MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void bt_nhapLai_Click(object sender, EventArgs e)
        {
            txt_maAlbum.Text = "";
            txt_tenAlbum.Text = "";
            txt_maAlbum.Focus();
        }

        private void bt_dong_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void fThem_Album_FormClosing(object sender, FormClosingEventArgs e)
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
