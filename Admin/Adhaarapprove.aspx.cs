using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Adhaarapprove : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadup_Click(object sender, EventArgs e)
    {
        string type = "Aadhaar Card";
        //cn.Open();
        //cmd.CommandText = "update ApproveCertificate set applname='" + txtappnm.Text + "'where applid=" + txtappid.Text + "";
        //cmd.Connection = cn;
        //cmd.ExecuteNonQuery();
        //cn.Close();
        //GridView1.DataBind();
        cn.Open();
        cmd.CommandText = "insert into ApproveCertificate values(" + txtappid.Text+ ",'" + txtappnm.Text + "',@b,'" + txtadreaofdec.Text + "','" + type + "','"+lblaadhar.Text+"')";
        if (rdadapp.Checked == true)
        {
            cmd.Parameters.Add("@b", rdadapp.Text);
        }
        else
        {
            cmd.Parameters.Add("@b", rdaddec.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        cn.Open();
        cmd.CommandText= "update AadharCard set status=@b1 where adharregid ="+txtappid.Text+"";
        if (rdadapp.Checked == true)
        {
            cmd.Parameters.Add("@b1", rdadapp.Text);
        }
        else
        {
            cmd.Parameters.Add("@b1", rdaddec.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();

        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<Script language='javascript'>alert('Data submitted Successfully..!!!')</Script>");

    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        txtappid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtappnm.Text = GridView1.SelectedRow.Cells[2].Text;
    }
    protected void rdadapp_CheckedChanged(object sender, EventArgs e)
    {
        if (rdadapp.Checked == true)
        {
            Random rand = new Random();

            // Generate a 11-digit random number
            string aadhaar = "";
            for (int i = 0; i < 11; i++)
            {
                aadhaar += rand.Next(0, 10).ToString();  // Random digit from 0 to 9
            }

            // Generate a random checksum digit (12th digit)
            int checksumDigit = rand.Next(0, 10);  // Random digit from 0 to 9
            aadhaar += checksumDigit.ToString();

            ;
            lblaadhar.Text = aadhaar;
        }
        else
        {
            lblaadhar.Text = "";
        }
        
    }

    protected void  rdaddec_CheckedChanged(object sender, EventArgs e)
    {
        if (rdaddec.Checked != true)
        {

            Random rand = new Random();

            // Generate a 11-digit random number
            string aadhaar = "";
            for (int i = 0; i < 11; i++)
            {
                aadhaar += rand.Next(0, 10).ToString();  // Random digit from 0 to 9
            }

            // Generate a random checksum digit (12th digit)
            int checksumDigit = rand.Next(0, 10);  // Random digit from 0 to 9
            aadhaar += checksumDigit.ToString();

            ;
            lblaadhar.Text = aadhaar;
        }
        else
        {
            lblaadhar.Text = "";
        }
   
    }
}
