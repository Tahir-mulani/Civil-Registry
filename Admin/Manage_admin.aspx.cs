using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Manage_admin : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd= new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "insert into admin values('" + txtadnm.Text + "','" + txtpass.Text + "')";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<script language='Javascript'>alert('Data Saved Successfully..!!!')</Script>");
    }
    protected void btnup_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText="update admin set Password='"+txtpass.Text+"'where Username='"+txtadnm.Text+"'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        clear();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "update", "<script language='Javascript'>alert('Data Updated Successfully..!!!')</Script>");
    }
    protected void btndel_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd.CommandText = "delete from admin where Username'" + txtadnm.Text + "'";
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        clear();
        GridView1.DataBind();
        ClientScript.RegisterStartupScript(Page.GetType(), "delete", "<script language='Javascript'>alert('Data Deleted Successfully..!!!')</Script>");
    }
    protected void btncan_Click(object sender, EventArgs e)
    {
        clear();
    }
    protected void clear()
    {
        txtadnm.Text = "";
        txtpass.Text = "";
        txtcnpass.Text = "";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtadnm.Text = GridView1.SelectedRow.Cells[1].Text;
        txtpass.Text = GridView1.SelectedRow.Cells[2].Text;
    }
}