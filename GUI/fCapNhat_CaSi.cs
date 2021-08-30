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
    public partial class fCapNhat_CaSi : Form
    {
        public static string maCaSi;
        public static string tenCaSi;
        public static string thongTinCaSi;
        public fCapNhat_CaSi()
        {
            InitializeComponent();
        }

        private void fCapNhat_CaSi_Load(object sender, EventArgs e)
        {
            this.ActiveControl = label1;
            txt_macasi.Text = maCaSi;
            txt_tencasi.Text = tenCaSi;
            txt_thongtincasi.Text = thongTinCaSi;
        }

        private void btn_sua_Click(object sender, EventArgs e)
        {
            CaSi_BUS bus = new CaSi_BUS();

            if (txt_tencasi.Text == "" || txt_thongtincasi.Text == "")
            {
                MessageBox.Show("Chưa cung cấp đầy đủ thông tin!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            maCaSi = txt_macasi.Text;
            tenCaSi = txt_tencasi.Text;
            thongTinCaSi = txt_thongtincasi.Text;

            bus.capNhatCaSi(maCaSi, tenCaSi, thongTinCaSi);
            MessageBox.Show("Sửa thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Close();
        }

        private void btn_nhaplai_Click(object sender, EventArgs e)
        {
            fCapNhat_CaSi_Load(sender, e);
        }

        private void btn_huy_Click(object sender, EventArgs e)
        {
            string msg = "Bạn có chắc chắn huỷ không?";
            DialogResult result = MessageBox.Show(msg, "Huỷ",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
                Close();
        }
    }
}
