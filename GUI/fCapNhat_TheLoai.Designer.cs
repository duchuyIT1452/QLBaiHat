
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
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.btn_dongY = new System.Windows.Forms.Button();
            this.btn_nhapLai = new System.Windows.Forms.Button();
            this.btn_dong = new System.Windows.Forms.Button();
            this.txt_maTheLoai = new System.Windows.Forms.TextBox();
            this.txt_tenTheLoai = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(379, 33);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(121, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Chỉnh sửa thể loại";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(118, 93);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(77, 17);
            this.label2.TabIndex = 0;
            this.label2.Text = "Mã thể loại";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(118, 185);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(83, 17);
            this.label3.TabIndex = 0;
            this.label3.Text = "Tên thể loại";
            // 
            // btn_dongY
            // 
            this.btn_dongY.Location = new System.Drawing.Point(198, 300);
            this.btn_dongY.Name = "btn_dongY";
            this.btn_dongY.Size = new System.Drawing.Size(75, 23);
            this.btn_dongY.TabIndex = 1;
            this.btn_dongY.Text = "Đồng ý";
            this.btn_dongY.UseVisualStyleBackColor = true;
            this.btn_dongY.Click += new System.EventHandler(this.btn_dongY_Click);
            // 
            // btn_nhapLai
            // 
            this.btn_nhapLai.Location = new System.Drawing.Point(382, 300);
            this.btn_nhapLai.Name = "btn_nhapLai";
            this.btn_nhapLai.Size = new System.Drawing.Size(75, 23);
            this.btn_nhapLai.TabIndex = 1;
            this.btn_nhapLai.Text = "Nhập lại";
            this.btn_nhapLai.UseVisualStyleBackColor = true;
            this.btn_nhapLai.Click += new System.EventHandler(this.btn_nhapLai_Click);
            // 
            // btn_dong
            // 
            this.btn_dong.Location = new System.Drawing.Point(573, 300);
            this.btn_dong.Name = "btn_dong";
            this.btn_dong.Size = new System.Drawing.Size(75, 23);
            this.btn_dong.TabIndex = 1;
            this.btn_dong.Text = "Đóng";
            this.btn_dong.UseVisualStyleBackColor = true;
            this.btn_dong.Click += new System.EventHandler(this.btn_dong_Click);
            // 
            // txt_maTheLoai
            // 
            this.txt_maTheLoai.Location = new System.Drawing.Point(268, 93);
            this.txt_maTheLoai.Name = "txt_maTheLoai";
            this.txt_maTheLoai.Size = new System.Drawing.Size(100, 22);
            this.txt_maTheLoai.TabIndex = 2;
            // 
            // txt_tenTheLoai
            // 
            this.txt_tenTheLoai.Location = new System.Drawing.Point(268, 180);
            this.txt_tenTheLoai.Name = "txt_tenTheLoai";
            this.txt_tenTheLoai.Size = new System.Drawing.Size(100, 22);
            this.txt_tenTheLoai.TabIndex = 2;
            // 
            // fCapNhat_TheLoai
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.txt_tenTheLoai);
            this.Controls.Add(this.txt_maTheLoai);
            this.Controls.Add(this.btn_dong);
            this.Controls.Add(this.btn_nhapLai);
            this.Controls.Add(this.btn_dongY);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "fCapNhat_TheLoai";
            this.Text = "fCapNhat_TheLoai";
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
    }
}