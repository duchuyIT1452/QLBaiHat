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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txt_mahangsx = new System.Windows.Forms.TextBox();
            this.txt_tenhangsx = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txt_thongtin = new System.Windows.Forms.RichTextBox();
            this.btn_them = new System.Windows.Forms.Button();
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
            this.txt_mahangsx.Location = new System.Drawing.Point(184, 55);
            this.txt_mahangsx.Multiline = true;
            this.txt_mahangsx.Name = "txt_mahangsx";
            this.txt_mahangsx.Size = new System.Drawing.Size(250, 27);
            this.txt_mahangsx.TabIndex = 1;
            // 
            // txt_tenhangsx
            // 
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
            this.txt_thongtin.Location = new System.Drawing.Point(32, 195);
            this.txt_thongtin.Name = "txt_thongtin";
            this.txt_thongtin.Size = new System.Drawing.Size(402, 189);
            this.txt_thongtin.TabIndex = 3;
            this.txt_thongtin.Text = "";
            // 
            // btn_them
            // 
            this.btn_them.Font = new System.Drawing.Font("MV Boli", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_them.Location = new System.Drawing.Point(32, 418);
            this.btn_them.Name = "btn_them";
            this.btn_them.Size = new System.Drawing.Size(105, 34);
            this.btn_them.TabIndex = 4;
            this.btn_them.Text = "Thêm mới";
            this.btn_them.UseVisualStyleBackColor = true;
            this.btn_them.Click += new System.EventHandler(this.btn_them_Click);
            // 
            // btn_nhaplai
            // 
            this.btn_nhaplai.Font = new System.Drawing.Font("MV Boli", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_nhaplai.Location = new System.Drawing.Point(184, 418);
            this.btn_nhaplai.Name = "btn_nhaplai";
            this.btn_nhaplai.Size = new System.Drawing.Size(95, 34);
            this.btn_nhaplai.TabIndex = 5;
            this.btn_nhaplai.Text = "Nhập lại";
            this.btn_nhaplai.UseVisualStyleBackColor = true;
            this.btn_nhaplai.Click += new System.EventHandler(this.btn_nhaplai_Click);
            // 
            // btn_thoat
            // 
            this.btn_thoat.Font = new System.Drawing.Font("MV Boli", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_thoat.Location = new System.Drawing.Point(340, 418);
            this.btn_thoat.Name = "btn_thoat";
            this.btn_thoat.Size = new System.Drawing.Size(94, 34);
            this.btn_thoat.TabIndex = 6;
            this.btn_thoat.Text = "Hủy thêm";
            this.btn_thoat.UseVisualStyleBackColor = true;
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
            this.Name = "fThem_HangSX";
            this.Text = "Thêm Hãng Sản Xuất";
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
    }
}