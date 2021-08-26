﻿using System;
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
    public partial class fCapnhat_Tacgia : Form
    {
        public string ma, ten, thongtin;
        public fCapnhat_Tacgia()
        {
            InitializeComponent();
        }

        private void btn_ok_Click(object sender, EventArgs e)
        {
            TacGia_BUS tacgia = new TacGia_BUS();
           if(txt_tentacgia.Text == "" || txt_thongtintacgia.Text == "")
            {
                MessageBox.Show("Vui lòng nhập đầy đủ thông tin!", "XÁC NHẬN LỖI", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            ma = txt_matacgia.Text;
            ten = txt_tentacgia.Text;
            thongtin = txt_thongtintacgia.Text;

            tacgia.Update_TacGia(ma, ten, thongtin);
            MessageBox.Show("Cập nhật thành công", "THÀNH CÔNG", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void btn_nhaplai_Click(object sender, EventArgs e)
        {
            txt_matacgia.Text = txt_tentacgia.Text = txt_thongtintacgia.Text = "";
            txt_matacgia.Focus();
        }

        private void fCapnhat_Tacgia_FormClosing(object sender, FormClosingEventArgs e)
        {
            string msg = "Bạn có chắc chắn huỷ không?";
            DialogResult result = MessageBox.Show(msg, "Huỷ",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
                e.Cancel = false;
            else if (result == DialogResult.No)
                e.Cancel = true;
        }

        private void btn_huy_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }

        private void fCapnhat_Tacgia_Load(object sender, EventArgs e)
        {
            txt_matacgia.Text = ma;
            txt_tentacgia.Text = ten;
            txt_thongtintacgia.Text = thongtin;
            this.Text = "Cập nhật Tác Giả [" + ten + "]";
            txt_tentacgia.SelectAll();
            txt_tentacgia.Focus();
        }
    }
}
