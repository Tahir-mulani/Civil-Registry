using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.Shared;
using CrystalDecisions.CrystalReports.Engine;

public partial class Customer_BirthReport : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    DataSet1 ds = new DataSet1();
    DataTable dt = new DataTable();

    ReportDocument crpt = new ReportDocument();
    string s1;
    int AID;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CrystalReportViewer1.Visible = false;
            btngenerate.Visible = false;
            lblnoapp.Visible = false;
            lblstatus.Visible = false;

            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            string name = Session["user"].ToString();
            string type = "Birth Certificate";

            cn.Open();

            // Get Status
            cmd.CommandText = "SELECT status FROM birthcertificate WHERE name = @name";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Connection = cn;

            object result = cmd.ExecuteScalar();
            s1 = result != null ? result.ToString() : "";

            cn.Close();

            // Get Application ID
            cn.Open();
            cmd.CommandText = "SELECT applid FROM ApproveCertificate WHERE applname = @name AND type = @type";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@type", type);

            object result2 = cmd.ExecuteScalar();
            AID = result2 != null ? Convert.ToInt32(result2) : 0;

            cn.Close();

            if (s1 == "Approve")
            {
                btngenerate.Visible = true;
            }
            else if (AID != 0)
            {
                lblstatus.Visible = true;
            }
            else
            {
                lblnoapp.Visible = true;
            }
        }
    }
    protected void btngenerate_Click(object sender, EventArgs e)
    {
        string name =Session["user"].ToString();
        string type = "Birth Certificate";
        CrystalReportViewer1.Visible=true;
        cn.Open();
        SqlDataAdapter da =new SqlDataAdapter("select * from birthcertificateoutput where type ='"+ type+"' and name ='"+name+"'",cn);
        da.Fill(ds,"birthcertificateoutput");
        da.Fill(ds);
        crpt.Load(Server.MapPath(@"~\Report\birthcertificateoutput.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource=crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat,Response,false,"birthcertificateoutput");
        crpt.Refresh();
        cn.Close();
    }
}