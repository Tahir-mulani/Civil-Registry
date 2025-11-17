using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Marriage_approve : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnmarrup_Click(object sender, EventArgs e)
    {
        string type = "Marriage Certificate";
        cn.Open();
        cmd.CommandText = "update ApproveCertificate set applname='" + txtmrappnm.Text + "' where applid =" + txtmarappid.Text + "";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        string a = "0";
        cn.Close();
        GridView1.DataBind();
        cn.Open();
        cmd.CommandText = "insert into ApproveCertificate values(" + txtmarappid.Text + ",'" + txtmrappnm.Text + "',@d,'" + txtmrreadec.Text + "','" + type + "','"+a+"')";
        if (rdmrapprove.Checked == true)
        {
            cmd.Parameters.Add("@d", rdmrapprove.Text);
        }
        else
        {
            cmd.Parameters.Add("@d", rdmrdecline.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        
        cn.Open();
        cmd.CommandText = "update Marriagecertificate set status=@d1 where marriageregid =" + txtmarappid.Text + "";
        if (rdmrapprove.Checked == true)
        {
            cmd.Parameters.Add("@d1", rdmrapprove.Text);
        }
        else
        {
            cmd.Parameters.Add("@d1", rdmrdecline.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<Script language='javascript'>alert('Data submitted Successfully..!!!')</Script>");

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        txtmarappid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtmrappnm.Text = GridView1.SelectedRow.Cells[5].Text;
    }
    protected void rdmrapprove_CheckedChanged(object sender, EventArgs e)
    {

    }
}