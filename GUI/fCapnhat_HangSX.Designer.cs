namespace GUI
{
    partial class fCapnhat_HangSX
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(fCapnhat_HangSX));
            this.btn_ok = new System.Windows.Forms.Button();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txt_mahangsanxuat = new System.Windows.Forms.TextBox();
            this.txt_thongtinhangsanxuat = new System.Windows.Forms.TextBox();
            this.txt_tenhangsanxuat = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.btn_nhaplai = new System.Windows.Forms.Button();
            this.btn_huy = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btn_ok
            // 
            this.btn_ok.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_ok.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btn_ok.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_ok.ImageIndex = 2;
            this.btn_ok.ImageList = this.imageList1;
            this.btn_ok.Location = new System.Drawing.Point(12, 363);
            this.btn_ok.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btn_ok.Name = "btn_ok";
            this.btn_ok.Size = new System.Drawing.Size(120, 40);
            this.btn_ok.TabIndex = 4;
            this.btn_ok.Text = "Đồng ý";
            this.btn_ok.UseVisualStyleBackColor = false;
            this.btn_ok.Click += new System.EventHandler(this.btn_ok_Click);
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
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(12, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(408, 24);
            this.label1.TabIndex = 1;
            this.label1.Text = "CẬP NHÂT THÔNG TIN HÃNG SẢN XUẤT";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(33, 70);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(112, 16);
            this.label2.TabIndex = 2;
            this.label2.Text = "Mã hãng sản xuất";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(30, 119);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(117, 16);
            this.label3.TabIndex = 2;
            this.label3.Text = "Tên hãng sản xuất";
            // 
            // txt_mahangsanxuat
            // 
            this.txt_mahangsanxuat.Enabled = false;
            this.txt_mahangsanxuat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_mahangsanxuat.Location = new System.Drawing.Point(188, 67);
            this.txt_mahangsanxuat.Multiline = true;
            this.txt_mahangsanxuat.Name = "txt_mahangsanxuat";
            this.txt_mahangsanxuat.Size = new System.Drawing.Size(206, 24);
            this.txt_mahangsanxuat.TabIndex = 1;
            // 
            // txt_thongtinhangsanxuat
            // 
            this.txt_thongtinhangsanxuat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_thongtinhangsanxuat.Location = new System.Drawing.Point(33, 199);
            this.txt_thongtinhangsanxuat.Multiline = true;
            this.txt_thongtinhangsanxuat.Name = "txt_thongtinhangsanxuat";
            this.txt_thongtinhangsanxuat.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txt_thongtinhangsanxuat.Size = new System.Drawing.Size(361, 142);
            this.txt_thongtinhangsanxuat.TabIndex = 3;
            // 
            // txt_tenhangsanxuat
            // 
            this.txt_tenhangsanxuat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_tenhangsanxuat.Location = new System.Drawing.Point(188, 111);
            this.txt_tenhangsanxuat.Multiline = true;
            this.txt_tenhangsanxuat.Name = "txt_tenhangsanxuat";
            this.txt_tenhangsanxuat.Size = new System.Drawing.Size(206, 24);
            this.txt_tenhangsanxuat.TabIndex = 2;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(30, 167);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(148, 16);
            this.label4.TabIndex = 2;
            this.label4.Text = "Thông tin hãng sản xuất";
            // 
            // btn_nhaplai
            // 
            this.btn_nhaplai.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_nhaplai.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btn_nhaplai.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_nhaplai.ImageIndex = 1;
            this.btn_nhaplai.ImageList = this.imageList1;
            this.btn_nhaplai.Location = new System.Drawing.Point(159, 363);
            this.btn_nhaplai.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btn_nhaplai.Name = "btn_nhaplai";
            this.btn_nhaplai.Size = new System.Drawing.Size(120, 40);
            this.btn_nhaplai.TabIndex = 5;
            this.btn_nhaplai.Text = "Nhập lại";
            this.btn_nhaplai.UseVisualStyleBackColor = false;
            this.btn_nhaplai.Click += new System.EventHandler(this.btn_nhaplai_Click);
            // 
            // btn_huy
            // 
            this.btn_huy.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_huy.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btn_huy.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_huy.ImageIndex = 0;
            this.btn_huy.ImageList = this.imageList1;
            this.btn_huy.Location = new System.Drawing.Point(299, 363);
            this.btn_huy.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.btn_huy.Name = "btn_huy";
            this.btn_huy.Size = new System.Drawing.Size(120, 40);
            this.btn_huy.TabIndex = 6;
            this.btn_huy.Text = "Đóng";
            this.btn_huy.UseVisualStyleBackColor = false;
            this.btn_huy.Click += new System.EventHandler(this.btn_huy_Click);
            // 
            // fCapnhat_HangSX
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.ClientSize = new System.Drawing.Size(431, 429);
            this.Controls.Add(this.txt_thongtinhangsanxuat);
            this.Controls.Add(this.txt_tenhangsanxuat);
            this.Controls.Add(this.txt_mahangsanxuat);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btn_huy);
            this.Controls.Add(this.btn_nhaplai);
            this.Controls.Add(this.btn_ok);
            this.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Font = new System.Drawing.Font("Arial", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 4, 3, 4);
            this.Name = "fCapnhat_HangSX";
            this.Text = "Cập nhật thông tin HSX";
            this.Load += new System.EventHandler(this.fCapnhat_HangSX_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btn_ok;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_mahangsanxuat;
        private System.Windows.Forms.TextBox txt_thongtinhangsanxuat;
        private System.Windows.Forms.TextBox txt_tenhangsanxuat;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btn_nhaplai;
        private System.Windows.Forms.Button btn_huy;
        private System.Windows.Forms.ImageList imageList1;
    }
}