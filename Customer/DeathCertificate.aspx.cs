using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Customer_DeathCertificate : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        string nm = Session["user"].ToString();
        cn.Open();
        cmd.CommandText = "select name from registrationform where username='" + nm + "'";
        cmd.Connection = cn;
        txtname.Text = Convert.ToString(cmd.ExecuteScalar());
        cn.Close();
        cn.Open();
        cmd.CommandText = "select count(deathregid) from DeathCertificate";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            txtdeathregid.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select Max(deathregid) from DeathCertificate";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtdeathregid.Text = y.ToString();
        }
        cn.Close();
    }
    protected void btnsavenxt_Click(object sender, EventArgs e)
    {
        string status = "Pending";
        cn.Open();
        cmd.CommandText = "insert into Deathcertificate values(" + txtdeathregid.Text + ",'" + txtdateofreg.Text + "','" + txtname.Text + "','@m1','" + txtdateofbirth.Text + "','" + drbdeathplace.Text + "','" + txtfathername.Text + "','" + txtmothernm.Text + "','" + txtperadd.Text + "','" + txtinfoname.Text + "','" + txtinfoadd.Text + "'," + txtage.Text + ",'" + txtdeathdate.Text + "','" + drbmedservice.Text + "','" + drbdeathperocc.Text + "','" + txtdeathreason.Text + "','" + drbisthisperadicted.Text + "','" + drbdocument.Text + "','" + lblupadharpro.Text + "','" + lblupdeath.Text + "','"+status+"')";
        if (rdmale.Checked == true)
        {
            cmd.Parameters.Add("@m1", rdmale.Text);
        }
        else
        {
            cmd.Parameters.Add("@m1", rdfemale.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        Session["type"]="Death Certificate";
        Session["aid"] = txtdeathregid.Text;
        Session["fees"] = "100";
        Response.Redirect("~/Customer/Payment.aspx");
    }

protected void  btnupaddprof_Click(object sender, EventArgs e)
{
    if(FileUpload2.HasFile==true)
    {
        FileUpload2.SaveAs(Server.MapPath("~\\Files\\" + FileUpload2.FileName));
        lblupadharpro.Text = "~\\Files\\" + FileUpload2.FileName;
    }

}
protected void  btnuplddeathprof_Click(object sender, EventArgs e)
{
    if(FileUpload1.HasFile==true)
    {
        FileUpload1.SaveAs(Server.MapPath("~\\Files\\" + FileUpload1.FileName));
        lblupdeath.Text = "~\\Files\\" + FileUpload1.FileName;
    }
}
}

