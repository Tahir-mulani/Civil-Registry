using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Birthapprove : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadup_Click(object sender, EventArgs e)
    {
        string type = "Birth Certificate";
        cn.Open();
        cmd.CommandText = "update ApproveCertificate set applname='" + txtbrappnm.Text + "' where applid=" + txtbrappid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        string a = "0";
        cn.Close();
        GridView1.DataBind();
        cn.Open();
        cmd.CommandText = "insert into ApproveCertificate values(" + txtbrappid.Text + ",'" + txtbrappnm.Text + "',@z,'" + txtreaofdec.Text + "','" + type + "','"+a+"')";
        if (rdbrapp.Checked == true)
        {
            cmd.Parameters.Add("@z", rdbrapp.Text);
        }
        else
        {
            cmd.Parameters.Add("@z", rdbrdec.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        
        cn.Open();
        cmd.CommandText = "update birthcertificate set status=@z1 where birthregid=" + txtbrappid.Text + "";
        if (rdbrapp.Checked == true)
        {
            cmd.Parameters.Add("@z1", rdbrapp.Text);
        }
        else
        {
            cmd.Parameters.Add("@z1", rdbrdec.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();

        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<Script language='javascript'>alert('Data subitted Successfully..!!!')</Script>");
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        txtbrappid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtbrappnm.Text = GridView1.SelectedRow.Cells[7].Text;
    }
    protected void rdbrapp_CheckedChanged(object sender, EventArgs e)
    {

    }
}