
namespace GUI
{
    partial class Form_ThemTheLoai
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
            this.txt_maTL = new System.Windows.Forms.TextBox();
            this.txt_tentL = new System.Windows.Forms.TextBox();
            this.bt_YES = new System.Windows.Forms.Button();
            this.bt_CLOSE = new System.Windows.Forms.Button();
            this.bt_CLEAR = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(305, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(155, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Thêm thể loại nhạc mới";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(34, 73);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(138, 17);
            this.label2.TabIndex = 0;
            this.label2.Text = "Mã thể loại nhạc mới";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(34, 161);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(144, 17);
            this.label3.TabIndex = 0;
            this.label3.Text = "Tên thể loại nhạc mới";
            // 
            // txt_maTL
            // 
            this.txt_maTL.Location = new System.Drawing.Point(308, 73);
            this.txt_maTL.Name = "txt_maTL";
            this.txt_maTL.Size = new System.Drawing.Size(100, 22);
            this.txt_maTL.TabIndex = 1;
            // 
            // txt_tentL
            // 
            this.txt_tentL.Location = new System.Drawing.Point(308, 158);
            this.txt_tentL.Name = "txt_tentL";
            this.txt_tentL.Size = new System.Drawing.Size(100, 22);
            this.txt_tentL.TabIndex = 1;
            // 
            // bt_YES
            // 
            this.bt_YES.Location = new System.Drawing.Point(88, 238);
            this.bt_YES.Name = "bt_YES";
            this.bt_YES.Size = new System.Drawing.Size(75, 23);
            this.bt_YES.TabIndex = 2;
            this.bt_YES.Text = "Đồng ý";
            this.bt_YES.UseVisualStyleBackColor = true;
            this.bt_YES.Click += new System.EventHandler(this.bt_YES_Click);
            // 
            // bt_CLOSE
            // 
            this.bt_CLOSE.Location = new System.Drawing.Point(260, 238);
            this.bt_CLOSE.Name = "bt_CLOSE";
            this.bt_CLOSE.Size = new System.Drawing.Size(75, 23);
            this.bt_CLOSE.TabIndex = 2;
            this.bt_CLOSE.Text = "Đóng";
            this.bt_CLOSE.UseVisualStyleBackColor = true;
            this.bt_CLOSE.Click += new System.EventHandler(this.bt_CLOSE_Click);
            // 
            // bt_CLEAR
            // 
            this.bt_CLEAR.Location = new System.Drawing.Point(472, 238);
            this.bt_CLEAR.Name = "bt_CLEAR";
            this.bt_CLEAR.Size = new System.Drawing.Size(75, 23);
            this.bt_CLEAR.TabIndex = 2;
            this.bt_CLEAR.Text = "Nhập lại";
            this.bt_CLEAR.UseVisualStyleBackColor = true;
            this.bt_CLEAR.Click += new System.EventHandler(this.bt_CLEAR_Click);
            // 
            // Form_ThemTheLoai
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.bt_CLEAR);
            this.Controls.Add(this.bt_CLOSE);
            this.Controls.Add(this.bt_YES);
            this.Controls.Add(this.txt_tentL);
            this.Controls.Add(this.txt_maTL);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Form_ThemTheLoai";
            this.Text = "Form_ThemTheLoai";
            this.Load += new System.EventHandler(this.Form_ThemTheLoai_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_maTL;
        private System.Windows.Forms.TextBox txt_tentL;
        private System.Windows.Forms.Button bt_YES;
        private System.Windows.Forms.Button bt_CLOSE;
        private System.Windows.Forms.Button bt_CLEAR;
    }
}