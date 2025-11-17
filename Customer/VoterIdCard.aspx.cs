using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Customer_VoterIdCard : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        string nm = Session["user"].ToString();
        cn.Open();
        cmd.CommandText = "select name from Registrationform where username='" + nm + "'";
        cmd.Connection = cn;
        txtnmparliment.Text = Convert.ToString(cmd.ExecuteScalar());
        cn.Close();

        cn.Open();
        cmd.CommandText = "select count(voterregid)from VoterId";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            txtvoterregid.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select Max(voterregid)from VoterId";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtvoterregid.Text = y.ToString();
        }
        cn.Close();
    
    }
    protected void btnsavenxt_Click(object sender, EventArgs e)
    {
        string status = "Pending";
        cn.Open();
        cmd.CommandText = "insert into VoterId values(" + txtvoterregid.Text + ",'" + txtregdate.Text + "','" + txtnmparliment.Text + "'," + txtnoparliment.Text + ",'" + txtname.Text + "','" + txtfathernm.Text + "'," + txtmobnum.Text + ",'" + txtemailid.Text + "'," + txtadharno.Text + ",'" + drbreligion.Text + "',@V1,'" + txtdtbirth.Text + "'," + txtage.Text + ",'" + drbdisability.Text + "','" + txtdisabilitytyp.Text + "','" + drbstate.Text + "','" + drbdistrict.Text + "','"+drbtaluka.Text+"','" + txtvillage.Text + "'," + txtpin.Text + ",'" + Image2.ImageUrl + "','" + drbdoc1.Text + "','" + drbdoc2.Text + "','"+lblupidpro.Text+"','" + lblupaddpro.Text + "','"+status+"')";
        if (rdmale.Checked == true)
        {
            cmd.Parameters.Add("@V1", rdmale.Text);
        }
        else
        {
            cmd.Parameters.Add("@V1", rdfemale.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        Session["type"] = "VoterId Card";
        Session["aid"] = txtvoterregid.Text;
        Session["fees"] = "100";
        Response.Redirect("~/Customer/VoterIdCard.aspx");
    }
    protected void btnupimg_Click(object sender, EventArgs e)
    {
        if (FileUpload3.HasFile == true)
        {
            FileUpload3.SaveAs(Server.MapPath("~\\Image\\" + FileUpload3.FileName));
            Image2.ImageUrl = "~\\Image\\" + FileUpload3.FileName;
        }
    }
    protected void btnupidprof_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Image\\" + FileUpload1.FileName));
            lblupidpro.Text = "~\\Files\\" + FileUpload1.FileName;
        }
    }
    protected void btnupaddprof_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile == true)
        {
            FileUpload2.SaveAs(Server.MapPath("~\\image\\" + FileUpload2.FileName));
            lblupaddpro.Text = "~\\Files\\" + FileUpload2.FileName;
        }
    }
}