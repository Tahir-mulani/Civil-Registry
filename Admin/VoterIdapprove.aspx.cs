using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Admin_VoterIdapprove : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=D:\Civil Registry\App_Data\civilRegistry.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnvtup_Click(object sender, EventArgs e)
    {
        string type = "Voter Id Card";
        //cn.Open();
        //cmd.CommandText = "update ApproveCertificate set applname='" + txtappnm.Text + "'where applid=" + txtappid.Text + "";
        //cmd.Connection = cn;
        //cmd.ExecuteNonQuery();
        //cn.Close();
        //GridView1.DataBind();       
        cn.Open();
        cmd.CommandText = "insert into ApproveCertificate values(" + txtvtappid.Text + ",'" + txtvtappnm.Text + "',@v,'" + txtvtreaofdec.Text + "','" + type + "','"+lblvoteridno.Text+"')";
        if (rdvtapprove.Checked == true)
        {
            cmd.Parameters.Add("@v", rdvtapprove.Text);
        }
        else
        {
            cmd.Parameters.Add("@v", rdvtdecline.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();

        cn.Open();
        cmd.CommandText = "update VoterId set status=@v1 where voterregid =" + txtvtappid.Text + "";
        if (rdvtapprove.Checked == true)
        {
            cmd.Parameters.Add("@v1", rdvtapprove.Text);
        }
        else
        {
            cmd.Parameters.Add("@v1", rdvtdecline.Text);
        }
        cmd.Connection = cn;
        cmd.ExecuteNonQuery();
        cn.Close();
        GridView1.DataBind();
        Clear();
        ClientScript.RegisterStartupScript(Page.GetType(), "save", "<Script language ='javascript'>alert('Data submitted Successfully..!!!')</Script>");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        txtvtappid.Text= GridView1.SelectedRow.Cells[1].Text;
        txtvtappnm.Text = GridView1.SelectedRow.Cells[3].Text;
    }
    protected void rdvtapprove_CheckedChanged(object sender, EventArgs e)
    {
        if (rdvtapprove.Checked == true)
        {
            txtvtreaofdec.Enabled = false;
            Random rand = new Random();
            string voterNo = "";
            int randVlaue;
            string str = "";
            char letter;
            for (int i = 0; i < 3; i++)
            {
                randVlaue = rand.Next(0, 26);
                letter = Convert.ToChar(randVlaue + 65);

                str = str + letter;
            }

            int _min = 1111111;
            int _max = 9999999;
            Random _ran = new Random();
            int id = _ran.Next(_min, _max);

            voterNo = str + id;

            lblvoteridno.Text = voterNo;
        }
    }
    protected void Clear()
    {
        txtvtappid.Text = "";
        txtvtappnm.Text = "";
        lblvoteridno.Text = "";
    }
}