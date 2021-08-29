using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Sql;
using System.Data;
using DATA;
using System.Windows.Forms;

namespace BUS
{
    public class HangSanXuat_BUS
    {
        GetData_HangSanXuat hangsx = new GetData_HangSanXuat();

        #region Khai bao va truy van du lieu
        private string mahangsanxuat;
        private string tenhangsanxuat;
        private string thongtinhangsanxuat;

        public HangSanXuat_BUS() { }

        public HangSanXuat_BUS(string ma)
        {
            this.mahangsanxuat = ma;
        }

        public HangSanXuat_BUS(string mahangsanxuat, string tenhangsanxuat, string thongtinhangsanxuat)
        {
            this.MAHANGSANXUAT = mahangsanxuat;
            this.TENHANGSANXUAT = tenhangsanxuat;
            this.THONGTINHANGSANXUAT = thongtinhangsanxuat;
        }

        public string MAHANGSANXUAT
        {
            get { return mahangsanxuat; }
            set
            {
                try
                {
                    if (value.Trim().Equals(""))
                    {
                        MessageBox.Show("Mã hãng sản xuất không được bỏ trống", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                    else
                    {
                        mahangsanxuat = value;
                    }
                }
                catch (Exception ex)
                {
                    if (ex.Message.Contains("Trùng mã"))
                    {
                        MessageBox.Show("Mã bị trùng. Vui lòng nhập lại", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        MessageBox.Show(ex.Message);
                    }
                }
            }
        }

        public string TENHANGSANXUAT
        {
            get { return tenhangsanxuat; }
            set
            {
                try
                {
                    if (value.Trim().Equals(""))
                    {
                        MessageBox.Show("Ten hang san xuat khong duoc bo trong", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                    else
                    {
                        tenhangsanxuat = value;
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }

        public string THONGTINHANGSANXUAT
        {
            get { return thongtinhangsanxuat; }
            set
            {
                try
                {
                    if (value.Trim().Equals(""))
                    {
                        MessageBox.Show("Thông tin hãng sx không được bỏ trống", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        return;
                    }
                    else
                    {
                        thongtinhangsanxuat = value;
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }
        #endregion

        #region Lay du lieu ben DATA
        public DataTable getAllHangSX()
        {
            return hangsx.getAllHangSX();
        }
        public void Insert_HangSX()
        {
            hangsx.Insert_HangSX(mahangsanxuat, tenhangsanxuat, thongtinhangsanxuat);
        }
        public void Delete_HangSX(string mahangsanxuat)
        {
            hangsx.Delete_HangSX(mahangsanxuat);

        }
        public void capnhatHSX(string mahangsanxuat, string tenhangsanxuat, string thongtinhangsanxuat)
        {
            hangsx.Update_HangSX(mahangsanxuat, tenhangsanxuat, thongtinhangsanxuat);
        }
        /*
        public DataTable search_byCode_HSX(string mahangsanxuat)
        {
            return hangsx.SearchByCode_HangSX(mahangsanxuat);
        }
        public DataTable search_byName_HSX(string tenhangsanxuat)
        {
            return hangsx.SearchByName_HangSX(tenhangsanxuat);
        }
        */
        public DataTable timkiem_hsx(string tenhangsanxuat)
        {
            return hangsx.timkiem_HSX(tenhangsanxuat);
        }
        #endregion

    }
}
