using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Customer_Feedback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        string nm = Session["user"].ToString();
        cn.Open();
        cmd.CommandText = "select name from registrationform where username='" + nm + "'";
        cmd.Connection = cn;
        txtnm.Text = Convert.ToString(cmd.ExecuteScalar());
        cn.Close();
    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Customerfeedback values('" + txtnm.Text + "','" + txtemail.Text + "','" + txtphno.Text + "','" + lblstar.Text + "','" + txtappnm.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(), "Save", "<script language='javascript'>alert('Feedback submitted..!!!')</script>");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton2.ImageUrl = "~/Image/Star.gif";
        ImageButton3.ImageUrl = "~/Image/Star.gif";
        ImageButton4.ImageUrl = "~/Image/Star.gif";
        ImageButton5.ImageUrl = "~/Image/Star.gif";
        lblstar.Text = "1 Star";
      }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton2.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton3.ImageUrl = "~/Image/Star.gif";
        ImageButton4.ImageUrl = "~/Image/Star.gif";
        ImageButton5.ImageUrl = "~/Image/Star.gif";
        lblstar.Text = "2 Star";
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton2.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton3.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton4.ImageUrl = "~/Image/Star.gif";
        ImageButton5.ImageUrl = "~/Image/Star.gif";
        lblstar.Text = "3 Star";
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton2.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton3.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton4.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton5.ImageUrl = "~/Image/Star.gif";
        lblstar.Text = "4 Star";
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton1.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton2.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton3.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton4.ImageUrl = "~/Image/FilledStar.gif";
        ImageButton5.ImageUrl = "~/Image/FilledStar.gif";
        lblstar.Text = "5 Star";
    }
}