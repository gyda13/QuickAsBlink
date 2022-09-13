using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickAsBlink
{
    public partial class network : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        //card one
        protected void LayerQuiz_Click(object sender, EventArgs e)
        {

            if (r1.SelectedItem == null || r2.SelectedItem == null
              || r3.SelectedItem == null || r3.SelectedItem == null)
            {

                result1.Text = "All Field are required";
                result1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                int Count = 0;
                if (r1.SelectedItem.Value == "2")
                {

                    Count++;
                    L1.Text = "Correct";
                    L1.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    L1.Text = "incorrect";
                    L1.ForeColor = System.Drawing.Color.Red;
                }
                if (r2.SelectedItem.Value == "1")
                {
                    Count++;
                    L2.Text = "Correct";
                    L2.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    L2.Text = "incorrect";
                    L2.ForeColor = System.Drawing.Color.Red;
                }
                if (r3.SelectedItem.Value == "3")
                {
                    Count++;
                    L3.Text = "Correct";
                    L3.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    L3.Text = "incorrect";
                    L3.ForeColor = System.Drawing.Color.Red;
                }
                if (r4.SelectedItem.Value == "2")
                {
                    Count++;
                    L4.Text = "Correct";
                    L4.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    L4.Text = "incorrect";
                    L4.ForeColor = System.Drawing.Color.Red;
                }
                if (r5.SelectedItem.Value == "2")
                {
                    Count++;
                    L5.Text = "Correct";
                    L5.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    L5.Text = "incorrect";
                    L5.ForeColor = System.Drawing.Color.Red;
                }

                if (Count >=3)
                {
                    result1.Text = Count + "/5 Well Done";
                    result1.ForeColor = System.Drawing.Color.Green;
                }
                if (Count < 3)
                {
                    result1.Text = Count + "/5 Try Again";
                    result1.ForeColor = System.Drawing.Color.Red;
                }
            }


        }

        protected void LayerPdf_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=osiVStcpip.pdf");
            Response.TransmitFile(Server.MapPath("~/Files/osiVStcpip.pdf"));
            Response.End();

        }

        //card two
        protected void LanWanQuiz_Click(object sender, EventArgs e)
        {

            if (rbl1.SelectedItem == null || rbl2.SelectedItem == null
                          || rbl3.SelectedItem == null || rbl3.SelectedItem == null)
            {

                result2.Text = "All Field are required";
                result2.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                int Count = 0;
                if (rbl1.SelectedItem.Value == "1")
                {

                    Count++;
                    Lq1.Text = "Correct";
                    Lq1.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    Lq1.Text = "incorrect";
                    Lq1.ForeColor = System.Drawing.Color.Red;
                }
                if (rbl2.SelectedItem.Value == "3")
                {
                    Count++;
                    Lq2.Text = "Correct";
                    Lq2.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    Lq2.Text = "incorrect";
                    Lq2.ForeColor = System.Drawing.Color.Red;
                }
                if (rbl3.SelectedItem.Value == "1")
                {
                    Count++;
                    Lq3.Text = "Correct";
                    Lq3.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    Lq3.Text = "incorrect";
                    Lq3.ForeColor = System.Drawing.Color.Red;
                }
                if (rbl4.SelectedItem.Value == "2")
                {
                    Count++;
                    Lq4.Text = "Correct";
                    Lq4.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    Lq4.Text = "incorrect";
                    Lq4.ForeColor = System.Drawing.Color.Red;
                }
                if (rbl5.SelectedItem.Value == "1")
                {
                    Count++;
                    Lq5.Text = "Correct";
                    Lq5.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    Lq5.Text = "incorrect";
                    Lq5.ForeColor = System.Drawing.Color.Red;
                }
                if (Count >=3)
                {
                    result2.Text = Count + "/5 Well Done";
                    result2.ForeColor = System.Drawing.Color.Green;
                }
                if (Count < 3)
                {
                    result2.Text = Count + "/5 Try Again";
                    result2.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void LanWanPdf_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=LanvsWan.pdf");
            Response.TransmitFile(Server.MapPath("~/Files/LanvsWan.pdf"));
            Response.End();

        }
    }
}