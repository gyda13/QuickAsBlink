using QuickAsBlink.App_Code;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuickAsWink
{
    public partial class JoinUs : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string connectionString = ConfigurationManager.ConnectionStrings["myclientsConStr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            //FillGrid();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            try
            {
                String filePath = Server.MapPath("~/" + fileupload1.FileName);

                fileupload1.SaveAs(filePath);
               Path.GetFileName(fileupload1.FileName).ToString();

                con = new SqlConnection(connectionString);
                cmd = new SqlCommand();
                con.Open();
                cmd.Connection = con;
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.CommandText = "sp_AddFiles";
                cmd.Parameters.AddWithValue("@FileN", txtFileName.Text.ToString());
                cmd.Parameters.AddWithValue("@FilePath", fileupload1.FileName);
                cmd.ExecuteNonQuery();

                cmd.Dispose();
                con.Dispose();
                con.Close();

                lblInfo.Text = "Saved successfully.";
                lblInfo.ForeColor = System.Drawing.Color.Green;
                txtFileName.Text = "";

            }
            catch (Exception ex)
            {
                lblInfo.Text = ex.Message.ToString();
            }
        }

    }
}