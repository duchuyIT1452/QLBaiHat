
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
            this.label1.Location = new System.Drawing.Point(358, 29);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(112, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Thêm album mới";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(119, 84);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(69, 17);
            this.label2.TabIndex = 0;
            this.label2.Text = "Mã album";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(119, 154);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(75, 17);
            this.label3.TabIndex = 0;
            this.label3.Text = "Tên album";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(119, 219);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(105, 17);
            this.label4.TabIndex = 0;
            this.label4.Text = "Năm phát hành";
            // 
            // bt_dongY
            // 
            this.bt_dongY.Location = new System.Drawing.Point(196, 351);
            this.bt_dongY.Name = "bt_dongY";
            this.bt_dongY.Size = new System.Drawing.Size(75, 23);
            this.bt_dongY.TabIndex = 1;
            this.bt_dongY.Text = "Đồng ý";
            this.bt_dongY.UseVisualStyleBackColor = true;
            this.bt_dongY.Click += new System.EventHandler(this.bt_dongY_Click);
            // 
            // bt_nhapLai
            // 
            this.bt_nhapLai.Location = new System.Drawing.Point(385, 351);
            this.bt_nhapLai.Name = "bt_nhapLai";
            this.bt_nhapLai.Size = new System.Drawing.Size(75, 23);
            this.bt_nhapLai.TabIndex = 1;
            this.bt_nhapLai.Text = "Nhập lại";
            this.bt_nhapLai.UseVisualStyleBackColor = true;
            this.bt_nhapLai.Click += new System.EventHandler(this.bt_nhapLai_Click);
            // 
            // bt_dong
            // 
            this.bt_dong.Location = new System.Drawing.Point(561, 351);
            this.bt_dong.Name = "bt_dong";
            this.bt_dong.Size = new System.Drawing.Size(75, 23);
            this.bt_dong.TabIndex = 1;
            this.bt_dong.Text = "Đóng";
            this.bt_dong.UseVisualStyleBackColor = true;
            this.bt_dong.Click += new System.EventHandler(this.bt_dong_Click);
            // 
            // txt_maAlbum
            // 
            this.txt_maAlbum.Location = new System.Drawing.Point(277, 84);
            this.txt_maAlbum.Name = "txt_maAlbum";
            this.txt_maAlbum.Size = new System.Drawing.Size(200, 22);
            this.txt_maAlbum.TabIndex = 2;
            // 
            // txt_tenAlbum
            // 
            this.txt_tenAlbum.Location = new System.Drawing.Point(277, 149);
            this.txt_tenAlbum.Name = "txt_tenAlbum";
            this.txt_tenAlbum.Size = new System.Drawing.Size(200, 22);
            this.txt_tenAlbum.TabIndex = 2;
            // 
            // dtp_namphathanh
            // 
            this.dtp_namphathanh.CustomFormat = "yyyy";
            this.dtp_namphathanh.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtp_namphathanh.Location = new System.Drawing.Point(277, 219);
            this.dtp_namphathanh.Name = "dtp_namphathanh";
            this.dtp_namphathanh.Size = new System.Drawing.Size(200, 22);
            this.dtp_namphathanh.TabIndex = 3;
            // 
            // fThem_Album
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
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
            this.Name = "fThem_Album";
            this.Text = "fThem_Album";
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