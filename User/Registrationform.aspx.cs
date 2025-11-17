using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class User_Registrationform : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "select count(regid) from registrationform";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            txtregid.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select Max(regid) from registrationform";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            txtregid.Text = y.ToString();
            cn.Close();
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into registrationform values("+txtregid.Text+",'"+txtname.Text+"','"+txtemail.Text+"','"+txtadd.Text+"',"+txtcontact.Text+",@p1,'"+txtage.Text+"','"+txtusername.Text+"','"+txtpassword.Text+"')";
        if(rdmale.Checked == true)
        {
            cmd.Parameters.Add("@p1",rdfemale.Text);
        }
        else
        {
            cmd.Parameters.Add("@p1",rdfemale.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(),"Submit","<script language='javascript'>alert('Registered Successfully...!!!')</script>");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        Clear();
    }
    protected void Clear()
    {
        txtregid.Text = "";
        txtname.Text = "";
        txtemail.Text = "";
        txtadd.Text = "";
        txtage.Text = "";
        txtusername.Text = "";
        txtpassword.Text = "";
        txtretypepass.Text = "";
    }
}