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
    public partial class fCapNhat_Album : Form
    {
        public static string maAlbum;
        public static string tenAlbum;
        public static string namPhatHanh;
        public fCapNhat_Album()
        {
            InitializeComponent();

            DateTime x = DateTime.Parse(namPhatHanh);

            txt_maAlbum.Text = maAlbum.ToString();
            txt_tenAlbum.Text = tenAlbum.ToString();
            dtp_namPhatHanh.Value = x;
        }

        #region button đồng ý click
        private void btn_dongY_Click(object sender, EventArgs e)
        {
            Album_BUS bus = new Album_BUS();

            //bắt lỗi
            if (txt_tenAlbum.Text == "")
            {
                MessageBox.Show("Tên album không được để trống!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            if (txt_tenAlbum.Text.Length > 200)
            {
                MessageBox.Show("Tên album chỉ được nhập tối đa 200 ký tự", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            //cập nhật

            maAlbum = txt_maAlbum.Text.ToString();
            tenAlbum = txt_tenAlbum.Text.ToString();
            namPhatHanh = dtp_namPhatHanh.Value.ToString();

            bus.suaAlbum(maAlbum, tenAlbum, DateTime.Parse(namPhatHanh));
            MessageBox.Show("Sửa thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Close();
        }
        #endregion

        #region button nhập lại click
        private void btn_nhapLai_Click(object sender, EventArgs e)
        {
            txt_tenAlbum.Text = "";
            txt_tenAlbum.Focus();
        }
        #endregion

        #region button đóng click
        private void btn_dong_Click(object sender, EventArgs e)
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
