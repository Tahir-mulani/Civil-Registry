using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Customer_AadharCard : System.Web.UI.Page
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
        cmd.CommandText = "select count(adharregid)from AadharCard";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            txtadharregid.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select Max(adharregid)from AadharCard";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtadharregid.Text = y.ToString();
        }
        cn.Close();
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {

        string status = "Pending";
        cn.Open();
        cmd.CommandText = "insert into AadharCard values(" + txtadharregid.Text + ",'" + txtname.Text + "','" + Image2.ImageUrl + "','" + txtmobileno.Text+ "','" + txtdtebirth.Text + "','@A1','" + txtemail.Text + "','" + txtage.Text + "','" + txthouseno.Text + "','" + txtstreet.Text + "','" + txtlandmark.Text + "','" + txtarea.Text + "','" + txtvillcity.Text + "','" + txtpostoff.Text + "','" + drbdistrict.Text + "','" + drbstate.Text + "','" + txtganame.Text + "','" + txtgadharno.Text + "','" + Image3.ImageUrl + "','" + lbldoc.Text + "','" + drbdocument.Text + "','"+status+"')";
        if (rdfemale.Checked == true)
        {
            cmd.Parameters.Add("@A1", rdmale.Text);
        }
        else
        {
            cmd.Parameters.Add("@A1", rdmale.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        Session["type"] = "Aadhar Card";
        Session["aid"] = txtadharregid.Text;
        Session["fees"] = "50";
        Response.Redirect("~/Customer/Payment.aspx");
    }
    protected void btnupimg_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile == true)
        {
            FileUpload2.SaveAs(Server.MapPath("~\\Image\\" + FileUpload2.FileName));
            Image2.ImageUrl = "~\\Image\\" + FileUpload2.FileName;
        }

    }
    protected void btnupsign_Click(object sender, EventArgs e)
    {
        if (FileUpload3.HasFile == true)
        {
            FileUpload3.SaveAs(Server.MapPath("~\\image\\" + FileUpload3.FileName));
            Image3.ImageUrl = "~\\image\\" + FileUpload3.FileName;
        }
    }
    protected void btnuploaddoc_Click(object sender, EventArgs e)
    {
        if (FileUpload4.HasFile == true)
        {
            FileUpload4.SaveAs(Server.MapPath("~\\Files\\" + FileUpload4.FileName));
            lbldoc.Text = "~\\Files\\" + FileUpload4.FileName;
        }
    }
}
