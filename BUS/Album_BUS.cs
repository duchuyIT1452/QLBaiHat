using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DATA;

namespace BUS
{
    public class Album_BUS
    {
        Album_DATA newAlbum = new Album_DATA();

        private string maAlbum;
        private string tenAlbum;
        private int namPhatHanh;

        public string MaAlbum
        {
            get { return maAlbum; }
            set
            {
                try
                {
                    if (value.Trim().Equals(""))
                    {
                        MessageBox.Show("Mã album không được để trống", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                    else maAlbum = value;
                }
                catch (Exception ex)
                {
                    if (ex.Message.Contains("duplicate key"))
                        MessageBox.Show("Hãy kiểm tra trùng mã album.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    else MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        public string TenAlbum
        {
            get { return tenAlbum; }
            set
            {
                try
                {
                    if (value.Trim().Equals(""))
                    {
                        MessageBox.Show("Tên album không được để trống", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                    else tenAlbum = value;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        public int  NamPhatHanh
        {
            get { return namPhatHanh; }
            set
            {
                try
                {
                    if (!UInt32.TryParse(namPhatHanh.ToString(),out UInt32 o))
                    {
                        MessageBox.Show("Năm phát hành không được âm", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                    else namPhatHanh = value;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        public Album_BUS()
        {

        }
        public Album_BUS(string ma, string ten, int nam)
        {
            this.maAlbum = ma;
            this.tenAlbum = ten;
            this.namPhatHanh = nam;
        }
        public DataTable getAlbum()
        {
            return newAlbum.getAlbum();
        }
    }
}
