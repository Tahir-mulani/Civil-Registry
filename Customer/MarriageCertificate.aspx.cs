using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Customer_MarriageCertificate : System.Web.UI.Page
{
    SqlConnection cn=new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(marriageregid)from MarriageCertificate";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n==0)
        {
            n++;
            txtmarregid.Text=n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select Max(marriageregid)from MarriageCertificate";
            cmd.Connection=cn;
            int y=Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtmarregid.Text=y.ToString();
        }
        cn.Close();
    }
    protected void btnsavenext_Click(object sender, EventArgs e)
    {
        string status = "Pending";
        cn.Open();
        cmd.CommandText = "insert into MarriageCertificate values(" + txtmarregid.Text + ",'" + txtregdate.Text + "','"+txtplacemarr.Text+"','" + txtmarrdate.Text + "','" + txthname.Text + "','" + txthadd.Text + "','" + txthreligion.Text + "'," + txthageatmarr.Text + ",'" + Image2.ImageUrl + "','" + txtwadd.Text + "','" + txtwreligion.Text + "','" + txthfname.Text + "','" + txtwfname.Text + "','" + Image3.ImageUrl + "','" + lblhupadhar.Text + "','" + lblwupadhar.Text + "','" + txtw1name.Text + "','" + txtw1add.Text + "','" + Image4.ImageUrl + "','" + txtw2name.Text + "','" + txtw2add.Text + "','" + Image5.ImageUrl + "','" + lblupw1adhar.Text + "','" + lblupw2adhar.Text + "','" + txtwageatmarr.Text + "','" + lblupid.Text + "','"+status+"')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        Session["type"] = "Marriage Certificate";
        Session["aid"] = txtmarregid.Text;
        Session["fees"] = "100";
        Response.Redirect("~/Customer/Payment.aspx");

    }
    protected void btnupimage_Click(object sender, EventArgs e)
    {
        if(FileUpload1.HasFile==true)
        {
            FileUpload1.SaveAs(Server.MapPath("~\\Image\\"+FileUpload1.FileName));
            Image2.ImageUrl="~\\Image\\"+FileUpload1.FileName;
        }

    }
    protected void btnupadhar_Click(object sender, EventArgs e)
    {
        if (FileUpload2.HasFile == true)
        {
            FileUpload2.SaveAs(Server.MapPath("~\\Image\\" + FileUpload2.FileName));
            lblhupadhar.Text = "~\\Files\\" + FileUpload2.FileName;
        }
    }
    protected void btnupwimage_Click(object sender, EventArgs e)
    {
        if (FileUpload4.HasFile == true)
        {
            FileUpload4.SaveAs(Server.MapPath("~\\Image\\" + FileUpload4.FileName));
            Image3.ImageUrl = "~\\Image\\" + FileUpload4.FileName;
        }
    }
    protected void btnupwadhar_Click(object sender, EventArgs e)
    {
        if (FileUpload3.HasFile == true)
        {
            FileUpload3.SaveAs(Server.MapPath("~\\Image\\" + FileUpload3.FileName));
            lblwupadhar.Text = "~\\Files\\" + FileUpload3.FileName;
        }
    }
    protected void btnupw1_Click(object sender, EventArgs e)
    {
        if (FileUpload5.HasFile == true)
        {
            FileUpload5.SaveAs(Server.MapPath("~\\Image\\" + FileUpload5.FileName));
            Image4.ImageUrl = "~\\Image\\" + FileUpload5.FileName;
        }
    }
    protected void btnupw1adhar_Click(object sender, EventArgs e)
    {
        if (FileUpload6.HasFile == true)
        {
            FileUpload6.SaveAs(Server.MapPath("~\\Files\\" + FileUpload6.FileName));
            lblupw1adhar.Text = "~\\Files\\" + FileUpload6.FileName;
        }
    }
    protected void btnupw2_Click(object sender, EventArgs e)
    {
        if (FileUpload7.HasFile == true)
        {
            FileUpload7.SaveAs(Server.MapPath("~\\Image\\" + FileUpload7.FileName));
            Image5.ImageUrl = "~\\Image\\" + FileUpload7.FileName;
        }
    }
    protected void btnupw2adhar_Click(object sender, EventArgs e)
    {
        if (FileUpload8.HasFile == true)
        {
            FileUpload8.SaveAs(Server.MapPath("~\\Files\\" + FileUpload8.FileName));
            lblupw2adhar.Text = "~\\Files\\" + FileUpload8.FileName;
        }
    }
    protected void btnupid_Click(object sender, EventArgs e)
    {
        if (FileUpload9.HasFile == true)
        {
            FileUpload9.SaveAs(Server.MapPath("~\\Files\\" + FileUpload9.FileName));
            lblupid.Text = "~\\Files\\" + FileUpload9.FileName;
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtmarregid.Text = "";
        txtregdate.Text = "";
        txtplacemarr.Text = "";
        txtmarrdate.Text = "";
        txthname.Text = "";
        txthadd.Text = "";
        txthreligion.Text = "";
        txthageatmarr.Text = "";
        Image2.ImageUrl = "";
        txtwname.Text = "";
        txtwadd.Text = "";
        txtwreligion.Text = "";
        txthfname.Text = "";
        txtwfname.Text = "";
        Image3.ImageUrl = "";
        lblhupadhar.Text = "";
        lblwupadhar.Text="";
        txtw1name.Text = "";
        txtw1add.Text="";
        Image4.ImageUrl="";
        txtw2name.Text="";
        txtw2add.Text="";
        Image5.ImageUrl = "";
        lblupw1adhar.Text = "";
        lblupw2adhar.Text = "";
        txtwageatmarr.Text = "";
    }
}