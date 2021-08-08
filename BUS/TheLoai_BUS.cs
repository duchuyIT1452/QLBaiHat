using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DATA;

namespace BUS
{
    public class TheLoai_BUS
    {
        TheLoai_DATA newTheLoai = new TheLoai_DATA();

        private string maTheLoai;
        private string tenTheLoai;

        public string MaTheLoai
        {
            get { return maTheLoai; }
            set
            {
                try
                {
                    if (value.Trim().Equals(""))
                    {
                        MessageBox.Show("Mã thể loại không được để trống", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                    else maTheLoai = value;
                }
                catch (Exception ex)
                {
                    if (ex.Message.Contains("duplicate key"))
                        MessageBox.Show("Hãy kiểm tra trùng mã thể loại.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    else MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        public string TenTheLoai
        {
            get { return tenTheLoai; }
            set
            {
                try
                {
                    if (value.Trim().Equals(""))
                    {
                        MessageBox.Show("Tên thể loại không được để trống", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                    else tenTheLoai = value;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        public TheLoai_BUS()
        {

        }
        public TheLoai_BUS(string ma, string ten)
        {
            this.maTheLoai = ma;
            this.tenTheLoai = ten;
        }
    }
}
