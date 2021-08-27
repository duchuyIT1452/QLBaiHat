
namespace GUI
{
    partial class fCapNhat_Album
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
            this.btn_dongY = new System.Windows.Forms.Button();
            this.btn_nhapLai = new System.Windows.Forms.Button();
            this.btn_dong = new System.Windows.Forms.Button();
            this.txt_maAlbum = new System.Windows.Forms.TextBox();
            this.txt_tenAlbum = new System.Windows.Forms.TextBox();
            this.dtp_namPhatHanh = new System.Windows.Forms.DateTimePicker();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(338, 34);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(113, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Chỉnh sửa album";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(115, 99);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(69, 17);
            this.label2.TabIndex = 0;
            this.label2.Text = "Mã album";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(115, 171);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(75, 17);
            this.label3.TabIndex = 0;
            this.label3.Text = "Tên album";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(115, 254);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(105, 17);
            this.label4.TabIndex = 0;
            this.label4.Text = "Năm phát hành";
            // 
            // btn_dongY
            // 
            this.btn_dongY.Location = new System.Drawing.Point(179, 346);
            this.btn_dongY.Name = "btn_dongY";
            this.btn_dongY.Size = new System.Drawing.Size(75, 23);
            this.btn_dongY.TabIndex = 1;
            this.btn_dongY.Text = "Đồng ý";
            this.btn_dongY.UseVisualStyleBackColor = true;
            this.btn_dongY.Click += new System.EventHandler(this.btn_dongY_Click);
            // 
            // btn_nhapLai
            // 
            this.btn_nhapLai.Location = new System.Drawing.Point(388, 346);
            this.btn_nhapLai.Name = "btn_nhapLai";
            this.btn_nhapLai.Size = new System.Drawing.Size(75, 23);
            this.btn_nhapLai.TabIndex = 1;
            this.btn_nhapLai.Text = "Nhập lại";
            this.btn_nhapLai.UseVisualStyleBackColor = true;
            this.btn_nhapLai.Click += new System.EventHandler(this.btn_nhapLai_Click);
            // 
            // btn_dong
            // 
            this.btn_dong.Location = new System.Drawing.Point(581, 346);
            this.btn_dong.Name = "btn_dong";
            this.btn_dong.Size = new System.Drawing.Size(75, 23);
            this.btn_dong.TabIndex = 1;
            this.btn_dong.Text = "Đóng";
            this.btn_dong.UseVisualStyleBackColor = true;
            this.btn_dong.Click += new System.EventHandler(this.btn_dong_Click);
            // 
            // txt_maAlbum
            // 
            this.txt_maAlbum.Location = new System.Drawing.Point(297, 99);
            this.txt_maAlbum.Name = "txt_maAlbum";
            this.txt_maAlbum.Size = new System.Drawing.Size(100, 22);
            this.txt_maAlbum.TabIndex = 2;
            // 
            // txt_tenAlbum
            // 
            this.txt_tenAlbum.Location = new System.Drawing.Point(297, 171);
            this.txt_tenAlbum.Name = "txt_tenAlbum";
            this.txt_tenAlbum.Size = new System.Drawing.Size(200, 22);
            this.txt_tenAlbum.TabIndex = 2;
            // 
            // dtp_namPhatHanh
            // 
            this.dtp_namPhatHanh.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtp_namPhatHanh.Location = new System.Drawing.Point(297, 249);
            this.dtp_namPhatHanh.Name = "dtp_namPhatHanh";
            this.dtp_namPhatHanh.Size = new System.Drawing.Size(200, 22);
            this.dtp_namPhatHanh.TabIndex = 3;
            // 
            // fCapNhat_Album
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dtp_namPhatHanh);
            this.Controls.Add(this.txt_tenAlbum);
            this.Controls.Add(this.txt_maAlbum);
            this.Controls.Add(this.btn_dong);
            this.Controls.Add(this.btn_nhapLai);
            this.Controls.Add(this.btn_dongY);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "fCapNhat_Album";
            this.Text = "fCapNhat_Album";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btn_dongY;
        private System.Windows.Forms.Button btn_nhapLai;
        private System.Windows.Forms.Button btn_dong;
        private System.Windows.Forms.TextBox txt_maAlbum;
        private System.Windows.Forms.TextBox txt_tenAlbum;
        private System.Windows.Forms.DateTimePicker dtp_namPhatHanh;
    }
}