using QuickAsBlink.App_Code;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickAsBlink
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

            }

        protected void Joinbtn_Click(object sender, EventArgs e)
        {
         
                if (email.Text.ToString() == "")
                {
                    lblMessage.Text = "Pleas Enter Your Email";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
                
            else
                {
                
                    try
                    {
                        string strEmail = email.Text.ToString();
                        CRUD myCrud = new CRUD();
                        string mySql = @"insert into UserEmail (email) 
                                    values (@email)";
                        Dictionary<string, object> myPara = new Dictionary<string, object>();
                        myPara.Add("@email", strEmail);
                        int rtn = myCrud.InsertUpdateDelete(mySql, myPara);
                        confirmCrudOutput(rtn);

                        MailMessage mail = new MailMessage();
                        mail.To.Add(email.Text.ToString().Trim());
                        mail.From = new MailAddress("quickasblink@gmail.com");
                        mail.Subject = "Quick As Blink";
                        mail.Body = "Welcom to Quick As Blink Newsletter!";
                        mail.IsBodyHtml = true;


                        SmtpClient smtp = new SmtpClient();
                        smtp.Port = 587;
                        smtp.EnableSsl = true;
                        smtp.UseDefaultCredentials = false;
                        smtp.Host = "smtp.gmail.com";
                        smtp.Credentials = new System.Net.NetworkCredential("quickasblink@gmail.com", "yenghfqdisysshzj");
                        smtp.Send(mail);
                        email.Text = "";
                        Response.Redirect("~/home.aspx");
                    }
                    catch (Exception ex)
                    {
                        lblMessage.Text = "Please enter a valid email";
                        lblMessage.ForeColor = System.Drawing.Color.Red;
                    }
                }

            
           
        }
        protected void confirmCrudOutput(int rtn)
        {
            if (rtn >= 1)
            {
              

                lblMessage.Text = "You have joined successfully :)";
                lblMessage.ForeColor = System.Drawing.Color.Green;

                

            }
            else
            {
                lblMessage.Text = "Failed Please Try Again";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }

          
        }
    }
}