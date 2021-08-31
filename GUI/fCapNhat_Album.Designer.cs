
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(fCapNhat_Album));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.btn_dongY = new System.Windows.Forms.Button();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
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
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(218, 28);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(188, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Chỉnh sửa album";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(86, 80);
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
            this.label3.Location = new System.Drawing.Point(86, 139);
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
            this.label4.Location = new System.Drawing.Point(86, 206);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(98, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Năm phát hành";
            // 
            // btn_dongY
            // 
            this.btn_dongY.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_dongY.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_dongY.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_dongY.ImageIndex = 2;
            this.btn_dongY.ImageList = this.imageList1;
            this.btn_dongY.Location = new System.Drawing.Point(90, 265);
            this.btn_dongY.Margin = new System.Windows.Forms.Padding(2);
            this.btn_dongY.Name = "btn_dongY";
            this.btn_dongY.Size = new System.Drawing.Size(120, 40);
            this.btn_dongY.TabIndex = 1;
            this.btn_dongY.Text = "Đồng ý";
            this.btn_dongY.UseVisualStyleBackColor = false;
            this.btn_dongY.Click += new System.EventHandler(this.btn_dongY_Click);
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "icons8-back-64.png");
            this.imageList1.Images.SetKeyName(1, "icons8-reset-48.png");
            this.imageList1.Images.SetKeyName(2, "icons8-edit-48.png");
            this.imageList1.Images.SetKeyName(3, "icons8-delete-64.png");
            this.imageList1.Images.SetKeyName(4, "icons8-add-40.png");
            // 
            // btn_nhapLai
            // 
            this.btn_nhapLai.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_nhapLai.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_nhapLai.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_nhapLai.ImageIndex = 1;
            this.btn_nhapLai.ImageList = this.imageList1;
            this.btn_nhapLai.Location = new System.Drawing.Point(247, 265);
            this.btn_nhapLai.Margin = new System.Windows.Forms.Padding(2);
            this.btn_nhapLai.Name = "btn_nhapLai";
            this.btn_nhapLai.Size = new System.Drawing.Size(120, 40);
            this.btn_nhapLai.TabIndex = 1;
            this.btn_nhapLai.Text = "Nhập lại";
            this.btn_nhapLai.UseVisualStyleBackColor = false;
            this.btn_nhapLai.Click += new System.EventHandler(this.btn_nhapLai_Click);
            // 
            // btn_dong
            // 
            this.btn_dong.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_dong.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_dong.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_dong.ImageIndex = 0;
            this.btn_dong.ImageList = this.imageList1;
            this.btn_dong.Location = new System.Drawing.Point(392, 265);
            this.btn_dong.Margin = new System.Windows.Forms.Padding(2);
            this.btn_dong.Name = "btn_dong";
            this.btn_dong.Size = new System.Drawing.Size(120, 40);
            this.btn_dong.TabIndex = 1;
            this.btn_dong.Text = "Đóng";
            this.btn_dong.UseVisualStyleBackColor = false;
            this.btn_dong.Click += new System.EventHandler(this.btn_dong_Click);
            // 
            // txt_maAlbum
            // 
            this.txt_maAlbum.Location = new System.Drawing.Point(223, 80);
            this.txt_maAlbum.Margin = new System.Windows.Forms.Padding(2);
            this.txt_maAlbum.Multiline = true;
            this.txt_maAlbum.Name = "txt_maAlbum";
            this.txt_maAlbum.Size = new System.Drawing.Size(289, 27);
            this.txt_maAlbum.TabIndex = 2;
            // 
            // txt_tenAlbum
            // 
            this.txt_tenAlbum.Location = new System.Drawing.Point(223, 139);
            this.txt_tenAlbum.Margin = new System.Windows.Forms.Padding(2);
            this.txt_tenAlbum.Multiline = true;
            this.txt_tenAlbum.Name = "txt_tenAlbum";
            this.txt_tenAlbum.Size = new System.Drawing.Size(289, 27);
            this.txt_tenAlbum.TabIndex = 2;
            // 
            // dtp_namPhatHanh
            // 
            this.dtp_namPhatHanh.CalendarFont = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dtp_namPhatHanh.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtp_namPhatHanh.Location = new System.Drawing.Point(223, 206);
            this.dtp_namPhatHanh.Margin = new System.Windows.Forms.Padding(2);
            this.dtp_namPhatHanh.Name = "dtp_namPhatHanh";
            this.dtp_namPhatHanh.Size = new System.Drawing.Size(289, 20);
            this.dtp_namPhatHanh.TabIndex = 3;
            // 
            // fCapNhat_Album
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(600, 366);
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
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "fCapNhat_Album";
            this.Text = "Cập nhật album";
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
        private System.Windows.Forms.ImageList imageList1;
    }
}