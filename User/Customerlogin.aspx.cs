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

    cmd.CommandText = "SELECT name FROM registrationform WHERE username=@u";
    cmd.Parameters.Clear();
    cmd.Parameters.AddWithValue("@u", txtusername.Text); // ✅ FIXED

    cmd.Connection = cn;

    // ❌ removed extra cn.Open();

    object result = cmd.ExecuteScalar();

    if (result != null)
    {
        Session["username"] = txtusername.Text; // store login user
        Response.Redirect("~/Customer/Home.aspx"); // ✅ redirect
    }
    else
    {
        ClientScript.RegisterStartupScript(Page.GetType(), "Login",
            "<script>alert('Invalid Login...!!!')</script>");
    }

    cn.Close(); // ✅ only once
}
    protected void btncancel_Click(object sender, EventArgs e)
    {
        txtusername.Text = "";
        txtpassword.Text = "";
    }
}