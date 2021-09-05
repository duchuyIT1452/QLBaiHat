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

        #region button đóng click
        private void bt_huyBo_Click(object sender, EventArgs e)
        {
            string msg = "Xác nhận đóng!";
            DialogResult result = MessageBox.Show(msg, "Đóng",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
                Close();
        }
        #endregion

        #region button nhập lại click
        private void bt_nhapLai_Click(object sender, EventArgs e)
        {
            txt_maTheLoai.Text = "";
            txt_tenTheLoai.Text = "";
            txt_maTheLoai.Focus();
        }
        #endregion

        #region button đồng ý click
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
                if (txt_maTheLoai.Text.Length > 10)
                {
                    MessageBox.Show("Mã thể loại chỉ được nhập tối đa 10 ký tự", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (txt_tenTheLoai.Text.Length > 100)
                {
                    MessageBox.Show("Tên thể loại chỉ được nhập tối đa 100 ký tự", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
        #endregion

        private void fThem_TheLoai_Load(object sender, EventArgs e)
        {
            txt_maTheLoai.Select();
        }
    }
}
