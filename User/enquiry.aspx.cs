using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_enquiry : System.Web.UI.Page
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
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into enquiry values('" + txtname.Text + "','" + txtemail.Text + "','" + txtsubject.Text + "','" + txtmsg.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<script language='javascript'>alert('Enquiry Submitted....!!!')</script");

    }
    protected void btnreset_Click1(object sender, EventArgs e)
    {
        Clear();
    }
    protected void Clear()
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtsubject.Text = "";
        txtmsg.Text = "";
    }
}