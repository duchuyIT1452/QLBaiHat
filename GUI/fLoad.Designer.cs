
namespace GUI
{
    partial class fLoad
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(fLoad));
            this.progressBar_loading = new System.Windows.Forms.ProgressBar();
            this.countTime = new System.Windows.Forms.Timer(this.components);
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // progressBar_loading
            // 
            this.progressBar_loading.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.progressBar_loading.BackColor = System.Drawing.SystemColors.ButtonFace;
            this.progressBar_loading.ForeColor = System.Drawing.Color.Gray;
            this.progressBar_loading.Location = new System.Drawing.Point(225, 450);
            this.progressBar_loading.Name = "progressBar_loading";
            this.progressBar_loading.Size = new System.Drawing.Size(356, 23);
            this.progressBar_loading.Style = System.Windows.Forms.ProgressBarStyle.Continuous;
            this.progressBar_loading.TabIndex = 0;
            // 
            // countTime
            // 
            this.countTime.Enabled = true;
            this.countTime.Tick += new System.EventHandler(this.countTime_Tick);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(370, 431);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(66, 16);
            this.label1.TabIndex = 1;
            this.label1.Text = "Loading...";
            // 
            // fLoad
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::GUI.Properties.Resources.alexander_shatov_qt7S2QuAhJI_unsplash1;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(802, 515);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.progressBar_loading);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "fLoad";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ProgressBar progressBar_loading;
        private System.Windows.Forms.Timer countTime;
        private System.Windows.Forms.Label label1;
    }
}