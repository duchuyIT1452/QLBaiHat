
namespace GUI
{
    partial class fCapNhat_TheLoai
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(fCapNhat_TheLoai));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.btn_dongY = new System.Windows.Forms.Button();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.btn_nhapLai = new System.Windows.Forms.Button();
            this.btn_dong = new System.Windows.Forms.Button();
            this.txt_maTheLoai = new System.Windows.Forms.TextBox();
            this.txt_tenTheLoai = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(201, 26);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(203, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Chỉnh sửa thể loại";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(102, 76);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(73, 16);
            this.label2.TabIndex = 0;
            this.label2.Text = "Mã thể loại";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(102, 150);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(78, 16);
            this.label3.TabIndex = 0;
            this.label3.Text = "Tên thể loại";
            // 
            // btn_dongY
            // 
            this.btn_dongY.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_dongY.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btn_dongY.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_dongY.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_dongY.ImageIndex = 2;
            this.btn_dongY.ImageList = this.imageList1;
            this.btn_dongY.Location = new System.Drawing.Point(98, 226);
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
            this.btn_nhapLai.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btn_nhapLai.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_nhapLai.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_nhapLai.ImageIndex = 1;
            this.btn_nhapLai.ImageList = this.imageList1;
            this.btn_nhapLai.Location = new System.Drawing.Point(236, 226);
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
            this.btn_dong.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btn_dong.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_dong.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_dong.ImageIndex = 0;
            this.btn_dong.ImageList = this.imageList1;
            this.btn_dong.Location = new System.Drawing.Point(380, 226);
            this.btn_dong.Margin = new System.Windows.Forms.Padding(2);
            this.btn_dong.Name = "btn_dong";
            this.btn_dong.Size = new System.Drawing.Size(120, 40);
            this.btn_dong.TabIndex = 1;
            this.btn_dong.Text = "Đóng";
            this.btn_dong.UseVisualStyleBackColor = false;
            this.btn_dong.Click += new System.EventHandler(this.btn_dong_Click);
            // 
            // txt_maTheLoai
            // 
            this.txt_maTheLoai.Enabled = false;
            this.txt_maTheLoai.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_maTheLoai.Location = new System.Drawing.Point(215, 76);
            this.txt_maTheLoai.Margin = new System.Windows.Forms.Padding(2);
            this.txt_maTheLoai.Multiline = true;
            this.txt_maTheLoai.Name = "txt_maTheLoai";
            this.txt_maTheLoai.Size = new System.Drawing.Size(285, 27);
            this.txt_maTheLoai.TabIndex = 2;
            // 
            // txt_tenTheLoai
            // 
            this.txt_tenTheLoai.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_tenTheLoai.Location = new System.Drawing.Point(215, 146);
            this.txt_tenTheLoai.Margin = new System.Windows.Forms.Padding(2);
            this.txt_tenTheLoai.Multiline = true;
            this.txt_tenTheLoai.Name = "txt_tenTheLoai";
            this.txt_tenTheLoai.Size = new System.Drawing.Size(285, 27);
            this.txt_tenTheLoai.TabIndex = 2;
            // 
            // fCapNhat_TheLoai
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(600, 296);
            this.Controls.Add(this.txt_tenTheLoai);
            this.Controls.Add(this.txt_maTheLoai);
            this.Controls.Add(this.btn_dong);
            this.Controls.Add(this.btn_nhapLai);
            this.Controls.Add(this.btn_dongY);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "fCapNhat_TheLoai";
            this.Text = "Cập nhật thể loại";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button btn_dongY;
        private System.Windows.Forms.Button btn_nhapLai;
        private System.Windows.Forms.Button btn_dong;
        private System.Windows.Forms.TextBox txt_maTheLoai;
        private System.Windows.Forms.TextBox txt_tenTheLoai;
        private System.Windows.Forms.ImageList imageList1;
    }
}