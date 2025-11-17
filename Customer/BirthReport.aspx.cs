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
        CrystalReportViewer1.Visible = false;
        btngenerate.Visible = false;
        lblnoapp.Visible = false;
        lblstatus.Visible = false;
        string name = Session["user"].ToString();
        //lblstatus.Text =name;
        cn.Close();
        cn.Open();
        cmd.CommandText="Select status from birthcertificate where name ='"+name+"'";
        cmd.Connection =cn;
        s1 = cmd.ExecuteScalar().ToString();
        cn.Close();
        //ClientScript.RegisterStartupScript(Page.GetType(), "save", "<Script language='javascript'>alert('" + s1 + "')</Script>");
        cn.Close();
        string type ="Birth Certificate";
        cn.Open();
        cmd.CommandText="Select applid from ApproveCertificate where applname ='"+name+"' and type ='"+type+"'";
        cmd.Connection=cn;
        AID=Convert.ToInt32(cmd.ExecuteNonQuery());
        cn.Close();

        if(s1 =="Approve")
        {
            btngenerate.Visible=true;
        }
        else if(AID != 0)
        {
            lblstatus.Visible= true;
        }
        else
        {
            lblnoapp.Visible =true;
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