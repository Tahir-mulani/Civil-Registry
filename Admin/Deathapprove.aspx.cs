using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Deathapprove : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btndtup_Click(object sender, EventArgs e)
    {
        string type = "Death Certificate";
        
        cn.Open();
        cmd.CommandText = "insert into ApproveCertificate values(" + txtdtappid.Text + ",'" + txtdtappnm.Text + "',@z,'" + txtdtreaofdec.Text + "','" + type + "','"+0+"')";
        if (rddtapprove.Checked == true)
        {
            cmd.Parameters.Add("@z", rddtapprove.Text);
        }
        else
        {
            cmd.Parameters.Add("@z", rddtdecline.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        cn.Open();
        cmd.CommandText = "update Deathcertificate set status=@z1 where deathregid=" + txtdtappid.Text + "";
        if (rddtapprove.Checked ==true)
        {
            cmd.Parameters.Add("@z1", rddtapprove.Text);
        }
        else
        {
            cmd.Parameters.Add("@z1", rddtdecline.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();

        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<Script language='javascript'>alert('Data submitted Successfully...!!!')</Script>");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtdtappid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtdtappnm.Text = GridView1.SelectedRow.Cells[3].Text;
    }
    protected void rddtapprove_CheckedChanged(object sender, EventArgs e)
    {

    }
}