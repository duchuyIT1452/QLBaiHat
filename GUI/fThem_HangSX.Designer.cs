namespace GUI
{
    partial class fThem_HangSX
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(fThem_HangSX));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txt_mahangsx = new System.Windows.Forms.TextBox();
            this.txt_tenhangsx = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txt_thongtin = new System.Windows.Forms.RichTextBox();
            this.btn_them = new System.Windows.Forms.Button();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.btn_nhaplai = new System.Windows.Forms.Button();
            this.btn_thoat = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(138, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(245, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "THÊM HÃNG SẢN XUẤT MỚI";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(29, 55);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(103, 15);
            this.label2.TabIndex = 1;
            this.label2.Text = "Mã hãng sản xuất";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Arial", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(29, 105);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(108, 15);
            this.label3.TabIndex = 1;
            this.label3.Text = "Tên hãng sản xuất";
            // 
            // txt_mahangsx
            // 
            this.txt_mahangsx.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_mahangsx.Location = new System.Drawing.Point(184, 55);
            this.txt_mahangsx.Multiline = true;
            this.txt_mahangsx.Name = "txt_mahangsx";
            this.txt_mahangsx.Size = new System.Drawing.Size(250, 27);
            this.txt_mahangsx.TabIndex = 1;
            // 
            // txt_tenhangsx
            // 
            this.txt_tenhangsx.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_tenhangsx.Location = new System.Drawing.Point(184, 98);
            this.txt_tenhangsx.Multiline = true;
            this.txt_tenhangsx.Name = "txt_tenhangsx";
            this.txt_tenhangsx.Size = new System.Drawing.Size(250, 27);
            this.txt_tenhangsx.TabIndex = 2;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(29, 174);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(155, 16);
            this.label4.TabIndex = 1;
            this.label4.Text = "Thông tin Hãng Sản Xuất";
            // 
            // txt_thongtin
            // 
            this.txt_thongtin.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_thongtin.Location = new System.Drawing.Point(32, 195);
            this.txt_thongtin.Name = "txt_thongtin";
            this.txt_thongtin.ScrollBars = System.Windows.Forms.RichTextBoxScrollBars.ForcedVertical;
            this.txt_thongtin.Size = new System.Drawing.Size(402, 189);
            this.txt_thongtin.TabIndex = 3;
            this.txt_thongtin.Text = "";
            // 
            // btn_them
            // 
            this.btn_them.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_them.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_them.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_them.ImageIndex = 4;
            this.btn_them.ImageList = this.imageList1;
            this.btn_them.Location = new System.Drawing.Point(18, 405);
            this.btn_them.Name = "btn_them";
            this.btn_them.Size = new System.Drawing.Size(120, 40);
            this.btn_them.TabIndex = 4;
            this.btn_them.Text = "Thêm mới";
            this.btn_them.UseVisualStyleBackColor = false;
            this.btn_them.Click += new System.EventHandler(this.btn_them_Click);
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
            // btn_nhaplai
            // 
            this.btn_nhaplai.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_nhaplai.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_nhaplai.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_nhaplai.ImageIndex = 1;
            this.btn_nhaplai.ImageList = this.imageList1;
            this.btn_nhaplai.Location = new System.Drawing.Point(170, 405);
            this.btn_nhaplai.Name = "btn_nhaplai";
            this.btn_nhaplai.Size = new System.Drawing.Size(120, 40);
            this.btn_nhaplai.TabIndex = 5;
            this.btn_nhaplai.Text = "Nhập lại";
            this.btn_nhaplai.UseVisualStyleBackColor = false;
            this.btn_nhaplai.Click += new System.EventHandler(this.btn_nhaplai_Click);
            // 
            // btn_thoat
            // 
            this.btn_thoat.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_thoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_thoat.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_thoat.ImageIndex = 0;
            this.btn_thoat.ImageList = this.imageList1;
            this.btn_thoat.Location = new System.Drawing.Point(326, 405);
            this.btn_thoat.Name = "btn_thoat";
            this.btn_thoat.Size = new System.Drawing.Size(120, 40);
            this.btn_thoat.TabIndex = 6;
            this.btn_thoat.Text = "Đóng";
            this.btn_thoat.UseVisualStyleBackColor = false;
            this.btn_thoat.Click += new System.EventHandler(this.btn_thoat_Click);
            // 
            // fThem_HangSX
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(468, 468);
            this.Controls.Add(this.btn_thoat);
            this.Controls.Add(this.btn_nhaplai);
            this.Controls.Add(this.btn_them);
            this.Controls.Add(this.txt_thongtin);
            this.Controls.Add(this.txt_tenhangsx);
            this.Controls.Add(this.txt_mahangsx);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "fThem_HangSX";
            this.Text = "Thêm hãng sản xuất";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_mahangsx;
        private System.Windows.Forms.TextBox txt_tenhangsx;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.RichTextBox txt_thongtin;
        private System.Windows.Forms.Button btn_them;
        private System.Windows.Forms.Button btn_nhaplai;
        private System.Windows.Forms.Button btn_thoat;
        private System.Windows.Forms.ImageList imageList1;
    }
}