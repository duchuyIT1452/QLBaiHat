﻿
namespace GUI
{
    partial class fThem_Album
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.bt_dongY = new System.Windows.Forms.Button();
            this.bt_nhapLai = new System.Windows.Forms.Button();
            this.bt_dong = new System.Windows.Forms.Button();
            this.txt_maAlbum = new System.Windows.Forms.TextBox();
            this.txt_tenAlbum = new System.Windows.Forms.TextBox();
            this.dtp_namphathanh = new System.Windows.Forms.DateTimePicker();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(124, 23);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(184, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Thêm album mới";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(58, 68);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(67, 16);
            this.label2.TabIndex = 0;
            this.label2.Text = "Mã album";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(58, 125);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(72, 16);
            this.label3.TabIndex = 0;
            this.label3.Text = "Tên album";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(58, 178);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(98, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Năm phát hành";
            // 
            // bt_dongY
            // 
            this.bt_dongY.Location = new System.Drawing.Point(35, 243);
            this.bt_dongY.Margin = new System.Windows.Forms.Padding(2);
            this.bt_dongY.Name = "bt_dongY";
            this.bt_dongY.Size = new System.Drawing.Size(95, 36);
            this.bt_dongY.TabIndex = 1;
            this.bt_dongY.Text = "Đồng ý";
            this.bt_dongY.UseVisualStyleBackColor = true;
            this.bt_dongY.Click += new System.EventHandler(this.bt_dongY_Click);
            // 
            // bt_nhapLai
            // 
            this.bt_nhapLai.Location = new System.Drawing.Point(177, 243);
            this.bt_nhapLai.Margin = new System.Windows.Forms.Padding(2);
            this.bt_nhapLai.Name = "bt_nhapLai";
            this.bt_nhapLai.Size = new System.Drawing.Size(95, 36);
            this.bt_nhapLai.TabIndex = 1;
            this.bt_nhapLai.Text = "Nhập lại";
            this.bt_nhapLai.UseVisualStyleBackColor = true;
            this.bt_nhapLai.Click += new System.EventHandler(this.bt_nhapLai_Click);
            // 
            // bt_dong
            // 
            this.bt_dong.Location = new System.Drawing.Point(309, 243);
            this.bt_dong.Margin = new System.Windows.Forms.Padding(2);
            this.bt_dong.Name = "bt_dong";
            this.bt_dong.Size = new System.Drawing.Size(95, 36);
            this.bt_dong.TabIndex = 1;
            this.bt_dong.Text = "Đóng";
            this.bt_dong.UseVisualStyleBackColor = true;
            this.bt_dong.Click += new System.EventHandler(this.bt_dong_Click);
            // 
            // txt_maAlbum
            // 
            this.txt_maAlbum.Location = new System.Drawing.Point(177, 68);
            this.txt_maAlbum.Margin = new System.Windows.Forms.Padding(2);
            this.txt_maAlbum.Multiline = true;
            this.txt_maAlbum.Name = "txt_maAlbum";
            this.txt_maAlbum.Size = new System.Drawing.Size(200, 27);
            this.txt_maAlbum.TabIndex = 2;
            // 
            // txt_tenAlbum
            // 
            this.txt_tenAlbum.Location = new System.Drawing.Point(177, 121);
            this.txt_tenAlbum.Margin = new System.Windows.Forms.Padding(2);
            this.txt_tenAlbum.Multiline = true;
            this.txt_tenAlbum.Name = "txt_tenAlbum";
            this.txt_tenAlbum.Size = new System.Drawing.Size(200, 27);
            this.txt_tenAlbum.TabIndex = 2;
            // 
            // dtp_namphathanh
            // 
            this.dtp_namphathanh.CustomFormat = "yyyy";
            this.dtp_namphathanh.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtp_namphathanh.Location = new System.Drawing.Point(177, 178);
            this.dtp_namphathanh.Margin = new System.Windows.Forms.Padding(2);
            this.dtp_namphathanh.Name = "dtp_namphathanh";
            this.dtp_namphathanh.Size = new System.Drawing.Size(200, 20);
            this.dtp_namphathanh.TabIndex = 3;
            // 
            // fThem_Album
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(433, 316);
            this.Controls.Add(this.dtp_namphathanh);
            this.Controls.Add(this.txt_tenAlbum);
            this.Controls.Add(this.txt_maAlbum);
            this.Controls.Add(this.bt_dong);
            this.Controls.Add(this.bt_nhapLai);
            this.Controls.Add(this.bt_dongY);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "fThem_Album";
            this.Text = "Thêm album";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button bt_dongY;
        private System.Windows.Forms.Button bt_nhapLai;
        private System.Windows.Forms.Button bt_dong;
        private System.Windows.Forms.TextBox txt_maAlbum;
        private System.Windows.Forms.TextBox txt_tenAlbum;
        private System.Windows.Forms.DateTimePicker dtp_namphathanh;
    }
}