
namespace GUI
{
    partial class fCapNhat_CaSi
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(fCapNhat_CaSi));
            this.label1 = new System.Windows.Forms.Label();
            this.txt_macasi = new System.Windows.Forms.TextBox();
            this.btn_sua = new System.Windows.Forms.Button();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.txt_tencasi = new System.Windows.Forms.TextBox();
            this.txt_thongtincasi = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.btn_nhaplai = new System.Windows.Forms.Button();
            this.btn_huy = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(151, 21);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(164, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Cập nhật ca sĩ";
            // 
            // txt_macasi
            // 
            this.txt_macasi.Enabled = false;
            this.txt_macasi.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_macasi.Location = new System.Drawing.Point(127, 59);
            this.txt_macasi.Multiline = true;
            this.txt_macasi.Name = "txt_macasi";
            this.txt_macasi.Size = new System.Drawing.Size(292, 27);
            this.txt_macasi.TabIndex = 1;
            // 
            // btn_sua
            // 
            this.btn_sua.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_sua.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_sua.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_sua.ImageIndex = 2;
            this.btn_sua.ImageList = this.imageList1;
            this.btn_sua.Location = new System.Drawing.Point(28, 398);
            this.btn_sua.Name = "btn_sua";
            this.btn_sua.Size = new System.Drawing.Size(120, 40);
            this.btn_sua.TabIndex = 2;
            this.btn_sua.Text = "Đồng ý";
            this.btn_sua.UseVisualStyleBackColor = false;
            this.btn_sua.Click += new System.EventHandler(this.btn_sua_Click);
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
            // txt_tencasi
            // 
            this.txt_tencasi.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_tencasi.Location = new System.Drawing.Point(127, 110);
            this.txt_tencasi.Multiline = true;
            this.txt_tencasi.Name = "txt_tencasi";
            this.txt_tencasi.Size = new System.Drawing.Size(292, 27);
            this.txt_tencasi.TabIndex = 1;
            // 
            // txt_thongtincasi
            // 
            this.txt_thongtincasi.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_thongtincasi.Location = new System.Drawing.Point(46, 204);
            this.txt_thongtincasi.Multiline = true;
            this.txt_thongtincasi.Name = "txt_thongtincasi";
            this.txt_thongtincasi.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.txt_thongtincasi.Size = new System.Drawing.Size(373, 175);
            this.txt_thongtincasi.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(43, 59);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(60, 16);
            this.label2.TabIndex = 0;
            this.label2.Text = "Mã ca sĩ";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(43, 117);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 16);
            this.label3.TabIndex = 0;
            this.label3.Text = "Tên ca sĩ";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(43, 178);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(96, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Thông tin ca sĩ";
            // 
            // btn_nhaplai
            // 
            this.btn_nhaplai.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_nhaplai.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_nhaplai.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_nhaplai.ImageIndex = 1;
            this.btn_nhaplai.ImageList = this.imageList1;
            this.btn_nhaplai.Location = new System.Drawing.Point(175, 398);
            this.btn_nhaplai.Name = "btn_nhaplai";
            this.btn_nhaplai.Size = new System.Drawing.Size(120, 40);
            this.btn_nhaplai.TabIndex = 2;
            this.btn_nhaplai.Text = "Nhập lại";
            this.btn_nhaplai.UseVisualStyleBackColor = false;
            this.btn_nhaplai.Click += new System.EventHandler(this.btn_nhaplai_Click);
            // 
            // btn_huy
            // 
            this.btn_huy.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_huy.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_huy.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_huy.ImageIndex = 0;
            this.btn_huy.ImageList = this.imageList1;
            this.btn_huy.Location = new System.Drawing.Point(314, 398);
            this.btn_huy.Name = "btn_huy";
            this.btn_huy.Size = new System.Drawing.Size(120, 40);
            this.btn_huy.TabIndex = 2;
            this.btn_huy.Text = "Đóng";
            this.btn_huy.UseVisualStyleBackColor = false;
            this.btn_huy.Click += new System.EventHandler(this.btn_huy_Click);
            // 
            // fCapNhat_CaSi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(463, 450);
            this.Controls.Add(this.btn_huy);
            this.Controls.Add(this.btn_nhaplai);
            this.Controls.Add(this.btn_sua);
            this.Controls.Add(this.txt_thongtincasi);
            this.Controls.Add(this.txt_tencasi);
            this.Controls.Add(this.txt_macasi);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "fCapNhat_CaSi";
            this.Text = "Cập nhật ca sĩ";
            this.Load += new System.EventHandler(this.fCapNhat_CaSi_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_macasi;
        private System.Windows.Forms.Button btn_sua;
        private System.Windows.Forms.TextBox txt_tencasi;
        private System.Windows.Forms.TextBox txt_thongtincasi;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btn_nhaplai;
        private System.Windows.Forms.Button btn_huy;
        private System.Windows.Forms.ImageList imageList1;
    }
}