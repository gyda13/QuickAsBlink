using System;
using System.Collections.Generic;
using System.IO;
using System.IO.IsolatedStorage;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Hosting;
using System.Web.Http;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickAsBlink
{
    public partial class Sql : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void downloadbtn_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AppendHeader("Content-Disposition", "attachment; filename=JoinSql.pdf");
            Response.TransmitFile(Server.MapPath("~/Files/JoinSql.pdf"));
            Response.End();

        }


        protected void SubmitJoin_Click(object sender, EventArgs e)
        {

            if (rbl1.SelectedItem == null || rbl2.SelectedItem == null
                || rbl3.SelectedItem == null|| rbl3.SelectedItem == null) {

                result.Text =  "All Field are required";
                result.ForeColor = System.Drawing.Color.Red;
            }
            else {
                int Count = 0;
                if (rbl1.SelectedItem.Value == "4")
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
                else {
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

                if (Count == 3)
                {
                    result.Text = Count + "/4 Well Done";
                    result.ForeColor = System.Drawing.Color.Green;
                }
                if (Count < 3)
                {
                    result.Text = Count + "/4 Try Again";
                    result.ForeColor = System.Drawing.Color.Red;
                }
            }
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "alert('');", true);

        }

    }
    
   
}