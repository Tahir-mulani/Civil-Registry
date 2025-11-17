using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data;

public partial class Report_PanCard : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    DataSet ds = new DataSet();
    DataTable dt = new DataTable();
    ReportDocument crpt = new ReportDocument();

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        string st = "Approve";
        string type = "Pan Card";
        SqlDataAdapter da = new SqlDataAdapter("select * from PanCardoutput where status= '"+st+"' and  type='"+type+"'", cn);
        da.Fill(ds, "PanCardoutput");
        da.Fill(ds);
        crpt.Load(Server.MapPath(@"~\Report\PanCard.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "PanCardoutput");
       
    }
}