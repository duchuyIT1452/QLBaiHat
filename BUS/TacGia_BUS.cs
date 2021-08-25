using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATA;
using System.Data.Sql;
using System.Windows.Forms;
using System.Data;

namespace BUS
{
    public class TacGia_BUS
    {
        GetData_TacGia tacgia = new GetData_TacGia();

        #region khai bao va truy xuat du lieu
        private string matacgia;
        private string tentacgia = null;
        private string thongtintacgia;

        public TacGia_BUS() { }
        
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
                        return;
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
                        return;
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
                        return;
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
        public void Insert_TacGia()
        {
            tacgia.Insert_TacGia(matacgia, tentacgia, thongtintacgia);
        }
        public void Delete_TacGia(string matacgia)
        {
            tacgia.Delete_TacGia(matacgia);
        }
        public int Update_TacGia()
        {
            return tacgia.Update_TacGia(matacgia, tentacgia, thongtintacgia);
        }
        public DataTable getAllTacGia()
        {
            return tacgia.getAllTacGia();
        }
        #endregion
    }
}

