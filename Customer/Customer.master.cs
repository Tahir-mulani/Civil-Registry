using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Customer_Customer : System.Web.UI.MasterPage
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["username"].ToString();

        cn.Open();
        cmd.CommandText = "Select name from registrationform where username='" + Label1.Text + "'";
        cmd.Connection = cn;
        Session["user"] = cmd.ExecuteScalar().ToString();
        cn.Close();
    }
}
