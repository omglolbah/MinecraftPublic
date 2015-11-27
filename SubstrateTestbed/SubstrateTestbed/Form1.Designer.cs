namespace SubstrateTestbed
{
    partial class Form1
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
            this.pbChunks = new System.Windows.Forms.ProgressBar();
            this.txtDebug = new System.Windows.Forms.TextBox();
            this.btnGenerate = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // pbChunks
            // 
            this.pbChunks.Location = new System.Drawing.Point(93, 12);
            this.pbChunks.Name = "pbChunks";
            this.pbChunks.Size = new System.Drawing.Size(842, 23);
            this.pbChunks.TabIndex = 0;
            // 
            // txtDebug
            // 
            this.txtDebug.Location = new System.Drawing.Point(12, 41);
            this.txtDebug.Multiline = true;
            this.txtDebug.Name = "txtDebug";
            this.txtDebug.Size = new System.Drawing.Size(923, 347);
            this.txtDebug.TabIndex = 1;
            // 
            // btnGenerate
            // 
            this.btnGenerate.Location = new System.Drawing.Point(12, 12);
            this.btnGenerate.Name = "btnGenerate";
            this.btnGenerate.Size = new System.Drawing.Size(75, 23);
            this.btnGenerate.TabIndex = 2;
            this.btnGenerate.Text = "Generate";
            this.btnGenerate.UseVisualStyleBackColor = true;
            this.btnGenerate.Click += new System.EventHandler(this.button1_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(947, 400);
            this.Controls.Add(this.btnGenerate);
            this.Controls.Add(this.txtDebug);
            this.Controls.Add(this.pbChunks);
            this.Name = "Form1";
            this.Text = "Hurr Durr generator thingymajigger";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ProgressBar pbChunks;
        private System.Windows.Forms.TextBox txtDebug;
        private System.Windows.Forms.Button btnGenerate;
    }
}

