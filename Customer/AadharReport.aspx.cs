using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;


public partial class Customer_AadharReport : System.Web.UI.Page
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
        CrystalReportViewer1.Visible = false;
        btngenerate.Visible = false;
        lblnoapp.Visible=false;
        lblstatus.Visible = false;
        string name = Session["user"].ToString();
        // lblstatus.Text = name;
        cn.Close();
        cn.Open();
        cmd.CommandText = "Select status from AadharCard where name = '" + name + "'";
        cmd.Connection = cn;
        s1 = Convert.ToString(cmd.ExecuteScalar());
        cn.Close();

        cn.Close();
        string type = "Aadhaar Card";
        cn.Open();

        cmd.CommandText="Select applid from ApproveCertificate where applname ='"+name+"' and type='"+type+"'";
        cmd.Connection=cn;
        AID = Convert.ToInt32(cmd.ExecuteScalar());
        cn.Close();

        if(s1 == "Approve")
        {
            btngenerate.Visible=true;
        }
        else if(AID != 0)
        {
            lblstatus.Visible=true;
        }
        else
        {
            lblnoapp.Visible=true;
        }

    }

    protected void ate_Click(object sender, EventArgs e)
    {
        string name = Session["user"].ToString();

        CrystalReportViewer1.Visible = true;
        string type = "Aadhaar Card";
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter("select * from AadharCardoutput where type = '" + type + "' and name='" + name + "'", cn);
        da.Fill(ds, "AadharCardoutput");
        da.Fill(ds);
        crpt.Load(Server.MapPath(@"~\Report\AadharCardoutput.rpt"));
        crpt.SetDataSource(ds);
        CrystalReportViewer1.ReportSource = crpt;
        crpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "AadharCardoutput");
        crpt.Refresh();
        cn.Close();
    }
}