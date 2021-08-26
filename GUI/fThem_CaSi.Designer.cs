
namespace GUI
{
    partial class fThem_CaSi
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(fThem_CaSi));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txt_thongtincasi = new System.Windows.Forms.TextBox();
            this.btn_them = new System.Windows.Forms.Button();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.txt_macasi = new System.Windows.Forms.TextBox();
            this.txt_tencasi = new System.Windows.Forms.TextBox();
            this.btn_nhaplai = new System.Windows.Forms.Button();
            this.btn_huythaotac = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(156, 27);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(171, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Thêm ca sĩ mới";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(30, 67);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(78, 16);
            this.label2.TabIndex = 0;
            this.label2.Text = "Mã số ca sĩ";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(30, 188);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(96, 16);
            this.label3.TabIndex = 0;
            this.label3.Text = "Thông tin ca sĩ";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(30, 125);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(65, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Tên ca sĩ";
            // 
            // txt_thongtincasi
            // 
            this.txt_thongtincasi.Location = new System.Drawing.Point(33, 220);
            this.txt_thongtincasi.Multiline = true;
            this.txt_thongtincasi.Name = "txt_thongtincasi";
            this.txt_thongtincasi.Size = new System.Drawing.Size(407, 165);
            this.txt_thongtincasi.TabIndex = 1;
            // 
            // btn_them
            // 
            this.btn_them.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_them.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_them.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_them.ImageIndex = 4;
            this.btn_them.ImageList = this.imageList1;
            this.btn_them.Location = new System.Drawing.Point(33, 391);
            this.btn_them.Name = "btn_them";
            this.btn_them.Size = new System.Drawing.Size(124, 44);
            this.btn_them.TabIndex = 2;
            this.btn_them.Text = "Thêm";
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
            // txt_macasi
            // 
            this.txt_macasi.Location = new System.Drawing.Point(134, 67);
            this.txt_macasi.Multiline = true;
            this.txt_macasi.Name = "txt_macasi";
            this.txt_macasi.Size = new System.Drawing.Size(306, 27);
            this.txt_macasi.TabIndex = 3;
            // 
            // txt_tencasi
            // 
            this.txt_tencasi.Location = new System.Drawing.Point(134, 125);
            this.txt_tencasi.Multiline = true;
            this.txt_tencasi.Name = "txt_tencasi";
            this.txt_tencasi.Size = new System.Drawing.Size(306, 27);
            this.txt_tencasi.TabIndex = 3;
            // 
            // btn_nhaplai
            // 
            this.btn_nhaplai.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_nhaplai.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_nhaplai.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_nhaplai.ImageIndex = 1;
            this.btn_nhaplai.ImageList = this.imageList1;
            this.btn_nhaplai.Location = new System.Drawing.Point(172, 391);
            this.btn_nhaplai.Name = "btn_nhaplai";
            this.btn_nhaplai.Size = new System.Drawing.Size(124, 44);
            this.btn_nhaplai.TabIndex = 2;
            this.btn_nhaplai.Text = "Nhập lại";
            this.btn_nhaplai.UseVisualStyleBackColor = false;
            this.btn_nhaplai.Click += new System.EventHandler(this.btn_nhaplai_Click);
            // 
            // btn_huythaotac
            // 
            this.btn_huythaotac.BackColor = System.Drawing.Color.CadetBlue;
            this.btn_huythaotac.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_huythaotac.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btn_huythaotac.ImageIndex = 0;
            this.btn_huythaotac.ImageList = this.imageList1;
            this.btn_huythaotac.Location = new System.Drawing.Point(316, 394);
            this.btn_huythaotac.Name = "btn_huythaotac";
            this.btn_huythaotac.Size = new System.Drawing.Size(124, 44);
            this.btn_huythaotac.TabIndex = 2;
            this.btn_huythaotac.Text = "Huỷ thao tác";
            this.btn_huythaotac.UseVisualStyleBackColor = false;
            this.btn_huythaotac.Click += new System.EventHandler(this.btn_huythaotac_Click);
            // 
            // fThem_CaSi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.ClientSize = new System.Drawing.Size(480, 450);
            this.Controls.Add(this.txt_tencasi);
            this.Controls.Add(this.txt_macasi);
            this.Controls.Add(this.btn_huythaotac);
            this.Controls.Add(this.btn_nhaplai);
            this.Controls.Add(this.btn_them);
            this.Controls.Add(this.txt_thongtincasi);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "fThem_CaSi";
            this.Text = "Thêm ca sĩ";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.fThem_CaSi_FormClosing);
            this.Load += new System.EventHandler(this.fThem_CaSi_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txt_thongtincasi;
        private System.Windows.Forms.Button btn_them;
        private System.Windows.Forms.TextBox txt_macasi;
        private System.Windows.Forms.TextBox txt_tencasi;
        private System.Windows.Forms.Button btn_nhaplai;
        private System.Windows.Forms.Button btn_huythaotac;
        private System.Windows.Forms.ImageList imageList1;
    }
}