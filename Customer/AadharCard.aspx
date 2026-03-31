<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="AadharCard.aspx.cs" Inherits="Customer_AadharCard" %>

<script runat="server">

    protected void btnsave_Click(object sender, EventArgs e)
    {

    }

    protected void btnupimg_Click(object sender, EventArgs e)
    {

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
        {
            width: 80%;
           
        }
        .style3
        {
            text-align: center;
        }
        .style4
        {
            width: 200px;
            height: 34px;
            text-align: left;
        }
        .style5
        {
            height: 34px;
            text-align:center;
        }
        
        .style6
        {
            font-family: "Microsoft JhengHei";
            color: #FFFFFF;
        }
        .style7
        {
            font-size: x-large;
        }
        
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" class="style2">
    <tr>
        <td class="style3" colspan="6">

            <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Image/indian-flag.jpg" 
                style="text-align: left" >
                <span class="style6"><strong><span class="style7">Application Form for Aadhaar 
                Card</span> </strong></span>
                           
            </asp:Panel>
            <hr />
        </td>
    </tr>
    <tr>
        <td>
            Aadhaar Registration<br />
            id:</td>
        <td>
            <asp:TextBox ID="txtadharregid" runat="server"></asp:TextBox>
        </td>
        <td>
            Date of Birth:</td>
        <td>
            <asp:TextBox ID="txtdtebirth" runat="server" TextMode="Date"></asp:TextBox>
        </td>
        <td rowspan="3">
            <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" />
        </td>
    </tr>
    <tr>
        <td>
            Name:</td>
        <td>
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td>
        <td>
            Mobile Number:</td>
        <td>
            <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Age:</td>
        <td>
            <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
        </td>
        <td>
            Email id:</td>
        <td>
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Gender:</td>
        <td>
            <asp:RadioButton ID="rdmale" runat="server" Text="Male" />
            <asp:RadioButton ID="rdfemale" runat="server" Text="Female" />
            <asp:RadioButton ID="rdother" runat="server" Text="Other" />
        </td>
        <td>
            Street/Lane:</td>
        <td>
            <asp:TextBox ID="txtstreet" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload2" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            House No./Building:</td>
        <td>
            <asp:TextBox ID="txthouseno" runat="server"></asp:TextBox>
        </td>
        <td>
            Area/Locality:</td>
        <td>
            <asp:TextBox ID="txtarea" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnupimg" runat="server" Height="30px" 
                style="color: #FFFFFF; background-color: #003366" Text="Upload Image" 
                Width="200px" onclick="btnupimg_Click" />
        </td>
    </tr>
    <tr>
        <td>
            Landmark:</td>
        <td>
            <asp:TextBox ID="txtlandmark" runat="server"></asp:TextBox>
        </td>
        <td>
            Pin Code:</td>
        <td>
            <asp:TextBox ID="txtpostoff" runat="server"></asp:TextBox>
        </td>
        <td rowspan="3">
            <asp:Image ID="Image3" runat="server" Height="150px" Width="150px" />
        </td>
    </tr>
    <tr>
        <td>
            Village/city:</td>
        <td>
            <asp:TextBox ID="txtvillcity" runat="server"></asp:TextBox>
        </td>
        <td>
            State:</td>
        <td>
            <asp:DropDownList ID="drbstate" runat="server">
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style4">
            District:</td>
        <td class="style4">
            <asp:DropDownList ID="drbdistrict" runat="server">
                <asp:ListItem>Sangli</asp:ListItem>
                <asp:ListItem>Kolhapur</asp:ListItem>
                <asp:ListItem>Satara</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="style4">
            Gardian Aadhaar<br />
            No.:</td>
        <td class="style4">
            <asp:TextBox ID="txtgadharno" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Gardian Name:</td>
        <td>
            <asp:TextBox ID="txtganame" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            <asp:FileUpload ID="FileUpload3" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:DropDownList ID="drbdocument" runat="server">
                <asp:ListItem>Ration Card</asp:ListItem>
                <asp:ListItem>Leaving Certificate</asp:ListItem>
                <asp:ListItem>Resident Proof</asp:ListItem>
                <asp:ListItem>Photograph</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:Label ID="lbldoc" runat="server" BorderStyle="Ridge" Height="30px" 
                Width="180px"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload4" runat="server" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnupsign" runat="server" Height="30px" 
                style="color: #FFFFFF; background-color: #003366" Text="Upload Sign" 
                Width="200px" onclick="btnupsign_Click" />
        </td>
    </tr>
    <tr>
        <td> </td>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnuploaddoc" runat="server" Height="30px" 
                style="color: #FFFFFF; background-color: #003366" Text="Upload document" 
                Width="200px" onclick="btnuploaddoc_Click" />
        </td>
        <td colspan="2"> 
        </td>
    </tr>
    <tr>
        <td class="style5" colspan="3"> 
        <asp:Button ID="btnsavenext" runat="server" ForeColor="White" Height="30px" 
                style="background-color: #003366" Text="Save &amp; Next" Width="200px" 
                onclick="btnsave_Click" />
        </td>
        <td class="style5" colspan="2">
            <asp:Button ID="btncancel" runat="server" Height="30px" 
                style="color: #FFFFFF; background-color: #003366" Text="Cancel" Width="200px" />
        </td>
    </tr>
</table>
</asp:Content>


