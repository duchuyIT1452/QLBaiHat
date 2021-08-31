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

        #region button đồng ý click
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
                if(txt_maAlbum.Text.Length > 10)
                {
                    MessageBox.Show("Mã album chỉ được nhập tối đa 10 ký tự", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (txt_tenAlbum.Text.Length > 200)
                {
                    MessageBox.Show("Tên album chỉ được nhập tối đa 200 ký tự", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
        #endregion

        #region button nhập lại click
        private void bt_nhapLai_Click(object sender, EventArgs e)
        {
            txt_maAlbum.Text = "";
            txt_tenAlbum.Text = "";
            txt_maAlbum.Focus();
        }
        #endregion

        #region button đóng click
        private void bt_dong_Click(object sender, EventArgs e)
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
