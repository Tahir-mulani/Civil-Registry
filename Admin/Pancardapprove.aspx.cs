using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_Pancardapprove : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnpnup_Click(object sender, EventArgs e)
    {
        string type = "Pan Card";
        //cn.Open();
        //cmd.CommandText = "update ApproveCertificate set applname='" + txtpnappnm.Text + "' where applid = " + txtpnappid.Text + "";
        //cmd.Connection = cn;
        //cmd.ExecuteNonQuery();
        //cn.Close();
        //GridView1.DataBind();
        cn.Open();
        cmd.CommandText = "insert into ApproveCertificate values(" + txtpnappid.Text + ",'" + txtpnappnm.Text + "',@f,'" + txtpnreaofdec.Text + "','" + type + "','"+lblpanno.Text+"')";
        if (rdpnapprove.Checked == true)
        {
            cmd.Parameters.Add("@f", rdpnapprove.Text);
        }
        else
        {
            cmd.Parameters.Add("@f", rdpndecline.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        cn.Open();
        cmd.CommandText = "update PanCard set status=@f1 where panregid = " + txtpnappid.Text + "";
        if (rdpnapprove.Checked == true)
        {
            cmd.Parameters.Add("@f1", rdpnapprove.Text);
        }
        else
        {
            cmd.Parameters.Add("@f1", rdpndecline.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();

        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<Script language='javascript'>alert('Data submitted Successfully..!!!')</Script>");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtpnappid.Text = GridView1.SelectedRow.Cells[1].Text;
        txtpnappnm.Text = GridView1.SelectedRow.Cells[6].Text;
    }
    protected void rdpnapprove_CheckedChanged(object sender, EventArgs e)
    {
        if (rdpnapprove.Checked == true)
        {
            txtpnreaofdec.Enabled = false;
            Random rand = new Random();
            string panNo = "";
            int randValue;
            string str = "";
            char letter;
            for (int i = 0; i < 4; i++)
            {
                randValue = rand.Next(0, 26);
                letter = Convert.ToChar(randValue + 65);    

                str = str + letter;
            }
            string name = txtpnappnm.Text;
            char a = char.ToUpper(name[4]);

            int _min = 1000;
            int _max = 9999;
            Random _ran = new Random();
            int id = _ran.Next(_min, _max);
            char ch = (char)rand.Next('A', 'Z' + 1);

            panNo = str + a + id + ch;
            lblpanno.Text = panNo;
        }
    }
}