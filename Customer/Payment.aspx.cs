using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Customer_Payement : System.Web.UI.Page
{
    SqlConnection cn= new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = false;
        lbldate.Text = System.DateTime.Now.ToShortDateString();
        lblcertitype.Text=Session["type"].ToString();
        lblappid.Text=Session["aid"].ToString();
        lblfees.Text=Session["fees"].ToString();
        cn.Open();
        cmd.CommandText="select count(payid)from Payment";
        cmd.Connection = cn;
        int n = Convert.ToInt32(cmd.ExecuteScalar());
        if (n == 0)
        {
            n++;
            lblpayid.Text = n.ToString();
            cn.Close();
        }
        else
        {
            cn.Close();
            cn.Open();
            cmd.CommandText = "select Max(payid)from Payment";
            cmd.Connection = cn;
            int y = Convert.ToInt32(cmd.ExecuteScalar());
            y++;
            lblpayid.Text = y.ToString();
        }
        cn.Close();
    }
    protected void btnmakepay_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into Payment values(" + lblpayid.Text + "," + lblappid.Text + ",'" + lbldate.Text + "','" + lblcertitype.Text + "','" + lblfees.Text + "',@d,'" + txtifsccode.Text + "','" + txtbanknm.Text + "'," + txtcardno.Text + "," + txtcvv.Text + ")";
        if (rdupi.Checked == true)
        {
            cmd.Parameters.Add("@d", rdupi.Text);
        }
        else
        {
            cmd.Parameters.Add("@d", rdonpay.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        ClientScript.RegisterStartupScript(Page.GetType(),"Save","<script language='javascript'>alert('Payment Successfully...!!')</script>");
    }

    
protected void  rdupi_CheckedChanged(object sender, EventArgs e)
{
    if(rdupi.Checked==true)
    {
        Panel1.Visible=true;
    }
    else
    {
        Panel1.Visible=false;
    }

}
protected void  rdonpay_CheckedChanged(object sender, EventArgs e)
{
    if(rdonpay.Checked==true)
    {
        Panel2.Visible=true;
    }
    else
    {
        Panel2.Visible=false;
    }
}
}