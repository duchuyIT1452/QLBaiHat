
namespace GUI
{
    partial class Form_ThemAlbum
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
            this.bt_CLEAR = new System.Windows.Forms.Button();
            this.bt_CLOSE = new System.Windows.Forms.Button();
            this.bt_YES = new System.Windows.Forms.Button();
            this.txt_tentL = new System.Windows.Forms.TextBox();
            this.txt_maTL = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.SuspendLayout();
            // 
            // bt_CLEAR
            // 
            this.bt_CLEAR.Location = new System.Drawing.Point(496, 276);
            this.bt_CLEAR.Name = "bt_CLEAR";
            this.bt_CLEAR.Size = new System.Drawing.Size(75, 23);
            this.bt_CLEAR.TabIndex = 8;
            this.bt_CLEAR.Text = "Nhập lại";
            this.bt_CLEAR.UseVisualStyleBackColor = true;
            // 
            // bt_CLOSE
            // 
            this.bt_CLOSE.Location = new System.Drawing.Point(293, 276);
            this.bt_CLOSE.Name = "bt_CLOSE";
            this.bt_CLOSE.Size = new System.Drawing.Size(75, 23);
            this.bt_CLOSE.TabIndex = 9;
            this.bt_CLOSE.Text = "Đóng";
            this.bt_CLOSE.UseVisualStyleBackColor = true;
            // 
            // bt_YES
            // 
            this.bt_YES.Location = new System.Drawing.Point(106, 276);
            this.bt_YES.Name = "bt_YES";
            this.bt_YES.Size = new System.Drawing.Size(75, 23);
            this.bt_YES.TabIndex = 10;
            this.bt_YES.Text = "Đồng ý";
            this.bt_YES.UseVisualStyleBackColor = true;
            // 
            // txt_tentL
            // 
            this.txt_tentL.Location = new System.Drawing.Point(332, 154);
            this.txt_tentL.Name = "txt_tentL";
            this.txt_tentL.Size = new System.Drawing.Size(100, 22);
            this.txt_tentL.TabIndex = 6;
            // 
            // txt_maTL
            // 
            this.txt_maTL.Location = new System.Drawing.Point(332, 69);
            this.txt_maTL.Name = "txt_maTL";
            this.txt_maTL.Size = new System.Drawing.Size(100, 22);
            this.txt_maTL.TabIndex = 7;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(58, 157);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(101, 17);
            this.label3.TabIndex = 3;
            this.label3.Text = "Tên album mới";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(58, 69);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(95, 17);
            this.label2.TabIndex = 4;
            this.label2.Text = "Mã album mới";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(329, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(112, 17);
            this.label1.TabIndex = 5;
            this.label1.Text = "Thêm album mới";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(52, 217);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(105, 17);
            this.label4.TabIndex = 3;
            this.label4.Text = "Năm phát hành";
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.CustomFormat = "yyyy";
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dateTimePicker1.Location = new System.Drawing.Point(332, 211);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(200, 22);
            this.dateTimePicker1.TabIndex = 11;
            // 
            // Form_ThemAlbum
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.bt_CLEAR);
            this.Controls.Add(this.bt_CLOSE);
            this.Controls.Add(this.bt_YES);
            this.Controls.Add(this.txt_tentL);
            this.Controls.Add(this.txt_maTL);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Name = "Form_ThemAlbum";
            this.Text = "Form_ThemAlbum";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button bt_CLEAR;
        private System.Windows.Forms.Button bt_CLOSE;
        private System.Windows.Forms.Button bt_YES;
        private System.Windows.Forms.TextBox txt_tentL;
        private System.Windows.Forms.TextBox txt_maTL;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
    }
}