using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickAsBlink.Admin
{
    public partial class SendAds : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void sbtBtn_Click(object sender, EventArgs e)
        {
            SendMail();

            }

       
        protected void SendMail()
        {

            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("quickasblink@gmail.com");
            mail.Subject = title.Text.ToString();
            mail.Body = msg.Text.ToString();
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com";
          
            smtp.Credentials = new System.Net.NetworkCredential("quickasblink@gmail.com", "yenghfqdisysshzj");

        SqlCommand cmd = null;
            string connectionString = ConfigurationManager.ConnectionStrings["myclientsConStr"].ConnectionString;
            string queryString = @"SELECT email FROM UserEmail";

            using (SqlConnection connection =
                       new SqlConnection(connectionString))
            {
                SqlCommand command =
                    new SqlCommand(queryString, connection);
                connection.Open();
                cmd = new SqlCommand(queryString);
                cmd.Connection = connection;

                SqlDataReader reader = cmd.ExecuteReader();

                // Call Read before accessing data.
                while (reader.Read())
                {
                    try
                    {

                        var to = new MailAddress(reader["email"].ToString());
                        mail.Bcc.Add(to);
                    }
                    catch
                    {

                    }
                   

                }

                // Passing values to smtp object        
                smtp.Send(mail);
                title.Text = "";
                msg.Text = "";
                Label1.Text = "Ad Send Successfully";
                // Call Close when done reading.
                reader.Close();

            }


        }
    }
}