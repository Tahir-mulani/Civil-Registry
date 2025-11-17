using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Customer_birthcertificate : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        string nm = Session["user"].ToString();
        cn.Open();
        cmd.CommandText = "select name from Registrationform where username = '" + nm + "'";
        cmd.Connection = cn;
        txtname.Text = Convert.ToString(cmd.ExecuteScalar());
        cn.Close();
        cn.Open();
        cmd.CommandText = "select count(birthregid)from birthcertificate";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            txtbirthregid.Text= n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select Max(birthregid)from birthcertificate";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtbirthregid.Text = y.ToString();
        }
        cn.Close();

    }
    protected void btnsavenext_Click(object sender, EventArgs e)
    {
        string status = "Pending";
        cn.Open();
        cmd.CommandText = "insert into birthcertificate values(" + txtbirthregid.Text + ",'" + txtfathernme.Text + "','" + txtinfname.Text + "','" + txtbirthdte.Text + "','" + txtfqualification.Text + "','" + txtinfadd.Text + "','" + txtname.Text + "','"+txtmname.Text+"','" + txtdteofreg.Text + "',@q1,'" + txtmqualification.Text + "','" + txtprmadd.Text + "','" + txtplaceofbirth.Text + "','" + drbdeliverytype.Text + "','" + drbreligion.Text + "','" + txtvillage.Text + "','" + txttaluka.Text + "','" + drbdistrict.Text + "','" + drbstate.Text + "','" + txtfoccupation.Text + "'," + txtageofmatbborn.Text + "," + txtpregperinweek.Text + "," + txtnoofchbrmwo.Text + ",'" + txtbwonbirth.Text + "','" + lblupadharcard.Text + "','" + lblupbirthcard.Text + "','"+status+"')";
        if (rdmale.Checked == true)
        {
            cmd.Parameters.Add("@q1", rdmale.Text);
        }
        else
        {
            cmd.Parameters.Add("@q1", rdfemale.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        Session["type"] = "Birth Certificate";
        Session["aid"] = txtbirthregid.Text;
        Session["fees"] = "100";
        Response.Redirect("~/Customer/Payement.aspx");
    
    }

    protected void btnupadharcard_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile == true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Files\\" + FileUpload1.FileName));
            lblupadharcard.Text = "~\\Files\\" + FileUpload1.FileName;
        }

    }
    protected void btnuploadbicard_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile == true)
        {
            FileUpload2.SaveAs(Server.MapPath("~\\Files\\" + FileUpload2.FileName));
            lblupbirthcard.Text = "~\\Files\\" + FileUpload2.FileName;
        }
    }
}