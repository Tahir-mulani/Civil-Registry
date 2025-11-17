using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Customer_PanCard : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        string nm = Session["user"].ToString();
        cn.Open();
        cmd.CommandText = "select name from Registrationform where username = '"+nm+"'";
        cmd.Connection = cn;
        txtname.Text=Convert.ToString(cmd.ExecuteScalar());
        cn.Close();
        cn.Open();
        cmd.CommandText = "select count(panregid)from PanCard";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            txtpanregid.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText="select Max(panregid)from PanCard";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtpanregid.Text=y.ToString();
        }
        cn.Close();

    }
    protected void btnsavenxt_Click(object sender, EventArgs e)
    {
        string status = "Pending";
        cn.Open();
        cmd.CommandText="insert into PanCard values("+txtpanregid.Text+",'"+txtregdt.Text+"','"+Image2.ImageUrl+"','"+Image3.ImageUrl+"','"+txtplace.Text+"','"+txtname.Text+"','"+txtfathernm.Text+"','"+txtdateofbirth.Text+"',"+txtage.Text+",@N1,'"+txtvillcity.Text+"','"+txttaluka.Text+"','"+drbdistrict.Text+"','"+drbstate.Text+"','"+txtpincode.Text+"','"+txtcountry.Text+"','"+txtmobnum.Text+"','"+txtemail.Text+"','"+drbdoc1.Text+"','"+lblupmaturity.Text+"','"+drbdoc2.Text+"','"+lblupaddpro.Text+"','"+status+"')";
        if (rdmale.Checked ==true)
        {
            cmd.Parameters.Add("@N1",rdmale.Text);
        }
        else
        {
            cmd.Parameters.Add("@N1",rdfemale.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        Session["type"]= "Pan Card";
        Session["aid"]=txtpanregid.Text;
        Session["fees"]="100";
        Response.Redirect("~/Customer/Payment.aspx");
    }
    protected void  btnupimage_Click(object sender, EventArgs e)
    {
        if(FileUpload3.HasFile==true)
        {
            FileUpload3.SaveAs(Server.MapPath("~\\Image\\"+FileUpload3.FileName));
            Image2.ImageUrl="~\\Image\\"+FileUpload3.FileName;
        }
    }
    protected void  upsign_Click(object sender, EventArgs e)
    {
        if(FileUpload4.HasFile==true)
        {
            FileUpload4.SaveAs(Server.MapPath("~\\Image\\"+FileUpload4.FileName));
            Image3.ImageUrl="~\\Image\\"+FileUpload4.FileName;
        }
    }
protected void  btnupmaturity_Click(object sender, EventArgs e)
{
    if(FileUpload1.HasFile==true)
    {
        FileUpload1.SaveAs(Server.MapPath("~\\Files\\"+FileUpload1.FileName));
        lblupmaturity.Text="~\\Files\\"+FileUpload1.FileName;
    }
}
protected void  btnupaddproof_Click(object sender, EventArgs e)
{
    if(FileUpload2.HasFile==true)
    {
        FileUpload2.SaveAs(Server.MapPath("~\\Files\\"+FileUpload2.FileName));
        lblupaddpro.Text="~\\Files\\"+FileUpload2.FileName;
    }
}
protected void  btncancel_Click(object sender, EventArgs e)
{
    txtpanregid.Text="";
    txtregdt.Text="";
    txtplace.Text="";
    txtfathernm.Text = "";
    txtdateofbirth.Text = "";
    txtage.Text = "";
    txtvillcity.Text = "";
    txttaluka.Text = "";
    txtpincode.Text = "";
    txtcountry.Text = "";
    txtmobnum.Text = "";
    txtemail.Text = "";
}


}