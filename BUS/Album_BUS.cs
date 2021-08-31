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
        GetData_Album newAlbum = new GetData_Album();

        private string maAlbum;
        private string tenAlbum;
        private DateTime namPhatHanh;

        #region getter setter
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
        public DateTime  NamPhatHanh
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
        #endregion

        #region constructor
        public Album_BUS()
        {

        }
        public Album_BUS(string ma, string ten, DateTime nam)
        {
            this.maAlbum = ma;
            this.tenAlbum = ten;
            this.namPhatHanh = nam;
        }
        #endregion

        #region lấy dữ liệu từ data
        public void themAlbum()
        {
            newAlbum.themAlbum(maAlbum, tenAlbum, namPhatHanh);
        }
        public void suaAlbum(string maAlbum, string tenAlbum, DateTime namPhatHanh)
        {
            newAlbum.suaAlbum(maAlbum, tenAlbum, namPhatHanh);
        }
        public void xoaAlbum(string maAlbum)
        {
            newAlbum.xoaAlbum(maAlbum);
        }
        public DataTable getAlbum()
        {
            return newAlbum.getAlbum();
        }
        public DataTable findAlbum(string tenAlbum)
        {
            return newAlbum.findAlbum(tenAlbum);
        }
        #endregion
    }
}
