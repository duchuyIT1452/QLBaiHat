﻿
namespace GUI
{
    partial class fThem_TheLoai
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
            this.txt_maTheLoai = new System.Windows.Forms.TextBox();
            this.txt_tenTheLoai = new System.Windows.Forms.TextBox();
            this.bt_dongY = new System.Windows.Forms.Button();
            this.bt_nhapLai = new System.Windows.Forms.Button();
            this.bt_huyBo = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(135, 21);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(199, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Thêm thể loại mới";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(58, 74);
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
            this.label3.Location = new System.Drawing.Point(58, 148);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(78, 16);
            this.label3.TabIndex = 0;
            this.label3.Text = "Tên thể loại";
            // 
            // txt_maTheLoai
            // 
            this.txt_maTheLoai.Location = new System.Drawing.Point(140, 74);
            this.txt_maTheLoai.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txt_maTheLoai.Multiline = true;
            this.txt_maTheLoai.Name = "txt_maTheLoai";
            this.txt_maTheLoai.Size = new System.Drawing.Size(251, 27);
            this.txt_maTheLoai.TabIndex = 1;
            // 
            // txt_tenTheLoai
            // 
            this.txt_tenTheLoai.Location = new System.Drawing.Point(140, 144);
            this.txt_tenTheLoai.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.txt_tenTheLoai.Multiline = true;
            this.txt_tenTheLoai.Name = "txt_tenTheLoai";
            this.txt_tenTheLoai.Size = new System.Drawing.Size(251, 27);
            this.txt_tenTheLoai.TabIndex = 1;
            // 
            // bt_dongY
            // 
            this.bt_dongY.Location = new System.Drawing.Point(63, 227);
            this.bt_dongY.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.bt_dongY.Name = "bt_dongY";
            this.bt_dongY.Size = new System.Drawing.Size(87, 44);
            this.bt_dongY.TabIndex = 2;
            this.bt_dongY.Text = "Đồng ý";
            this.bt_dongY.UseVisualStyleBackColor = true;
            this.bt_dongY.Click += new System.EventHandler(this.bt_dongY_Click);
            // 
            // bt_nhapLai
            // 
            this.bt_nhapLai.Location = new System.Drawing.Point(186, 227);
            this.bt_nhapLai.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.bt_nhapLai.Name = "bt_nhapLai";
            this.bt_nhapLai.Size = new System.Drawing.Size(87, 44);
            this.bt_nhapLai.TabIndex = 2;
            this.bt_nhapLai.Text = "Nhập lại";
            this.bt_nhapLai.UseVisualStyleBackColor = true;
            this.bt_nhapLai.Click += new System.EventHandler(this.bt_nhapLai_Click);
            // 
            // bt_huyBo
            // 
            this.bt_huyBo.Location = new System.Drawing.Point(306, 227);
            this.bt_huyBo.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.bt_huyBo.Name = "bt_huyBo";
            this.bt_huyBo.Size = new System.Drawing.Size(87, 44);
            this.bt_huyBo.TabIndex = 2;
            this.bt_huyBo.Text = "Hủy bỏ";
            this.bt_huyBo.UseVisualStyleBackColor = true;
            this.bt_huyBo.Click += new System.EventHandler(this.bt_huyBo_Click);
            // 
            // fThem_TheLoai
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(445, 304);
            this.Controls.Add(this.bt_huyBo);
            this.Controls.Add(this.bt_nhapLai);
            this.Controls.Add(this.bt_dongY);
            this.Controls.Add(this.txt_tenTheLoai);
            this.Controls.Add(this.txt_maTheLoai);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "fThem_TheLoai";
            this.Text = "Thêm thể loại";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_maTheLoai;
        private System.Windows.Forms.TextBox txt_tenTheLoai;
        private System.Windows.Forms.Button bt_dongY;
        private System.Windows.Forms.Button bt_nhapLai;
        private System.Windows.Forms.Button bt_huyBo;
    }
}