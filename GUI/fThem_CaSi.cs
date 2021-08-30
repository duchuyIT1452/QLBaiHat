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
    public partial class fThem_CaSi : Form
    {
        public fThem_CaSi()
        {
            InitializeComponent();
        }

        private void fThem_CaSi_Load(object sender, EventArgs e)
        {
            txt_macasi.Text = "";
            txt_tencasi.Text = "";
            txt_thongtincasi.Text = "";
        }

        private void btn_them_Click(object sender, EventArgs e)
        {
            String maCaSi, tenCaSi, thongTinCaSi;

            CaSi_BUS bus = new CaSi_BUS();

            try
            {
                if(txt_macasi.Text == "" || txt_tencasi.Text == "" || txt_thongtincasi.Text == "")
                {
                    MessageBox.Show("Chưa cung cấp đầy đủ thông tin!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                maCaSi = txt_macasi.Text.ToString();
                tenCaSi = txt_tencasi.Text.ToString();
                thongTinCaSi = txt_thongtincasi.Text.ToString();

                int dem = 0;
                foreach(DataRow row in bus.getCasi_by_macasi(maCaSi).Rows)
                {
                    dem++;
                }

                if(dem > 0)
                {
                    MessageBox.Show("Trùng mã!", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                bus.themCaSi(maCaSi, tenCaSi, thongTinCaSi);
                MessageBox.Show("Thêm thành công!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                fThem_CaSi_Load(sender, e);
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btn_nhaplai_Click(object sender, EventArgs e)
        {
            fThem_CaSi_Load(sender, e);
        }

        private void btn_huythaotac_Click(object sender, EventArgs e)
        {
            string msg = "Xác nhận đóng!";
            DialogResult result = MessageBox.Show(msg, "Đóng",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
                Close();
        }
    }
}
