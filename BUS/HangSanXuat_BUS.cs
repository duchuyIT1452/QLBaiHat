﻿using System;
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
        HangSanXuat_Data hangsx = new HangSanXuat_Data();

        #region Khai bao va truy van du lieu
        private string mahangsanxuat;
        private string tenhangsanxuat;
        private string thongtinhangsanxuat;

        public HangSanXuat_BUS() { }
        public HangSanXuat_BUS(string ma)
        {
            this.mahangsanxuat = ma;
        }
        public HangSanXuat_BUS(string ma, string ten, string thongtin)
        {
            this.MAHANGSANXUAT = ma;
            this.TENHANGSANXUAT = ten;
            this.THONGTINHANGSANXUAT = thongtin;
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
                        throw new Exception("Nhap thong tin hang san xuat");
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
        public int Insert_HangSX()
        {
            return hangsx.Insert_HangSX(mahangsanxuat, tenhangsanxuat, thongtinhangsanxuat);
        }
        public int Delete_HangSX()
        {
            return hangsx.Delete_HangSX(mahangsanxuat);
            
        }
        public int Update_HangSX()
        {
            return hangsx.Update_HangSX(mahangsanxuat, tenhangsanxuat, thongtinhangsanxuat);
        }
        #endregion

    }
}