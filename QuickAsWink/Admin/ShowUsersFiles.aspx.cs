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

namespace QuickAsBlink.Admin
{
    public partial class ShowUsersFiles : System.Web.UI.Page
    {
        SqlConnection con;
        SqlDataAdapter adapter;
        SqlCommand cmd;
        string connectionString = ConfigurationManager.ConnectionStrings["myclientsConStr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.FillGrid();
            }
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //Allows for printing
        }

        public override bool EnableEventValidation
        {
            get { return false; }
            set { /*Do nothing*/ }
        }


        public void FillGrid()
        {
            try
            {
                con = new SqlConnection(connectionString);
                cmd = new SqlCommand();
                con.Open();
                cmd = new SqlCommand("Select * from tblFiles", con);
                adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);

                gridviewFiles.DataSource = dt;
                gridviewFiles.DataBind();

                cmd.Dispose();
                con.Dispose();
                con.Close();

            }
            catch (Exception ex)
            {

            }
        }

        protected void FileDownload_Clicked(object sender, EventArgs e)
        {
            try
            {
                var element = (LinkButton)sender;

                String filename = element.Text.ToString();
                String filepath = Server.MapPath("/" + filename);

                Response.Clear();
                Response.ClearHeaders();
                Response.ClearContent();
                Response.AddHeader("Content-Disposition", "attachment; filename=" + filename);
                Response.Flush();

                Response.TransmitFile(filepath);
                Response.End();
            }
            catch (Exception ex)
            {

            }
        }

        protected void Export_Click(object sender, EventArgs e)
        {
            ExportToExcel(gridviewFiles);
        }


        public void ExportToExcel(GridView grd)
        {
            Response.Clear();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment;filename=GridViewExport.xls");
            Response.Charset = "";
            Response.ContentType = "application/vnd.ms-excel";
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            grd.AllowPaging = false;
            FillGrid();
            grd.RenderControl(hw);
            string style = @"<style> .textmode { mso-number-format:\@; } </style>";
            Response.Write(style);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }
  
        protected void OnPageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewFiles.PageIndex = e.NewPageIndex;
            this.FillGrid();
        }


    }
}