using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Admin_adminlogin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataAdapter da = new SqlDataAdapter();
    DataTable dt = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {
           
    }
    /*
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "Select* from admin where username ='" + txtusername.Text + "'and password='" + txtpassword.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        da.SelectCommand = cmd;
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "login", "<script language='javascript'>alert('login successful...!!!')</script>");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "login", "<script language='javascript'>alert('Invalid login...!!!')</script>");
        }

    }*/
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        cn.Open();

        string query = "select * from admin where username=@uname and password=@pass";
        SqlCommand cmd = new SqlCommand(query, cn);

        cmd.Parameters.AddWithValue("@uname", txtusername.Text);
        cmd.Parameters.AddWithValue("@pass", txtpassword.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

        if (dt.Rows.Count > 0)
        {
            // Store session
            Session["admin"] = txtusername.Text;

            // Redirect to Admin Home Page
            Response.Redirect("Home.aspx");   // your admin home page
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "login",
            "<script>alert('Invalid login...!!!')</script>");
        }

        cn.Close();
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtpassword.Text = "";

    }
}