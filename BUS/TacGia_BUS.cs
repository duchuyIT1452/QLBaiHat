﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;
using System.Data.Sql;
using System.Windows.Forms;

namespace BUS
{
    public class TacGia_BUS
    {
        TacGia_Data tacgia = new TacGia_Data();

        #region khai bao va truy xuat du lieu
        private string matacgia;
        private string tentacgia;
        private string thongtintacgia;

        public TacGia_BUS() { }
        public TacGia_BUS(string ma)
        {
            this.matacgia = ma;
        }
        public TacGia_BUS(string ma, string ten, string thongtin)
        {
            this.MATACGIA = ma;
            this.TENTACGIA = ten;
            this.THONGTINTACGIA = thongtin;
        }
        public string MATACGIA
        {
            get { return matacgia; }
            set
            {
                try
                {
                    if (value.Trim().Equals(""))
                    {
                        MessageBox.Show("Ma tac gia khong duoc de trong", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        matacgia = value;
                    }
                }
                catch (Exception ex)
                {
                    if (ex.Message.Contains("Trung ma"))
                    {
                        MessageBox.Show("Ma tac gia bi trung. Vui long nhap lai!", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                        MessageBox.Show(ex.Message);
                }
            }
        }
        public string TENTACGIA
        {
            get { return tentacgia; }
            set
            {
                try
                {
                    if (value.Trim().Equals(""))
                    {
                        MessageBox.Show("Ten tac gia khong duoc bo trong", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message); 
                }
            }
        }
        public string THONGTINTACGIA
        {
            get { return thongtintacgia; }
            set
            {
                try
                {
                    if (value.Trim().Equals(""))
                    {
                        MessageBox.Show("Thong tin tac gia khong duoc de trong", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        thongtintacgia = value;
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }
        #endregion

        #region Lay du lieu tu DATA
        public int Insert_TacGia()
        {
            return tacgia.Insert_TacGia(matacgia, tentacgia, thongtintacgia);
        }
        public int Delete_TacGia()
        {
            return tacgia.Delete_TacGia(matacgia);
        }
        public int Update_TacGia()
        {
            return tacgia.Update_TacGia(matacgia, tentacgia, thongtintacgia);
        }

        #endregion
    }
}
