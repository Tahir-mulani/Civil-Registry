using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class User_Customerlogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select*from registrationform where username='" + txtusername.Text + "'and password='" + txtpassword.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        if(dt.Rows.Count>0)
        {
            Session["username"] =txtusername.Text;
            Response.Redirect("~/Customer/Home.aspx");
  
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(),"Login","<script language='javascript'>alert('Invalid Login...!!!')</script");
        }
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtpassword.Text = "";
    }
}