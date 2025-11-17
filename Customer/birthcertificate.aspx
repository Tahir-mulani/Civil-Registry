<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="birthcertificate.aspx.cs" Inherits="Customer_birthcertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 80%;
    }
        .style3
        {
            font-family: "Microsoft JhengHei";
            font-size: x-large;
            text-align: center;
        }
        .style4
        {
            height: 29px;
        }
        .style5
        {
            color: #FFFFFF;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" class="style2">
    <tr>
        <td colspan="6" class="style3">
            <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Image/indian-flag.jpg"
                style="text-align: left"><span class="style5"><strong>Application Form for Birth 
                Certificate</strong></span> </asp:Panel>
                <hr />
        </td>
    </tr>
    <tr>
        <td>
            Birth<br />
            Registration Id:</td>
        <td>
            <asp:TextBox ID="txtbirthregid" runat="server"></asp:TextBox>
        </td>
        <td>
            Date of Registration:</td>
        <td>
            <asp:TextBox ID="txtdteofreg" runat="server"></asp:TextBox>
        </td>
        <td>
            Informer Name:</td>
        <td>
            <asp:TextBox ID="txtinfname" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Name:</td>
        <td>
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td>
        <td>
            Place of birth:</td>
        <td>
            <asp:TextBox ID="txtplaceofbirth" runat="server"></asp:TextBox>
        </td>
        <td>
            Informer Address:</td>
        <td>
            <asp:TextBox ID="txtinfadd" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Birth Date:</td>
        <td>
            <asp:TextBox ID="txtbirthdte" runat="server"></asp:TextBox>
        </td>
        <td>
            Father Name:</td>
        <td>
            <asp:TextBox ID="txtfathernme" runat="server"></asp:TextBox>
        </td>
        <td>
            Age of Mother at<br />
            wedding:</td>
        <td>
            <asp:TextBox ID="txtageofmatwed" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style4">
            Gender:</td>
        <td class="style4">
            <asp:RadioButton ID="rdmale" runat="server" Text="Male" />
            <asp:RadioButton ID="rdfemale" runat="server" Text="Female" />
            <asp:RadioButton ID="rdother" runat="server" Text="Other" />
        </td>
        <td class="style4">
            Father Qualification:</td>
        <td class="style4">
            <asp:TextBox ID="txtfqualification" runat="server"></asp:TextBox>
        </td>
        <td class="style4">
            Delivery Type:</td>
        <td class="style4">
            <asp:DropDownList ID="drbdeliverytype" runat="server">
                <asp:ListItem>Normal</asp:ListItem>
                <asp:ListItem>Sizure</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            Permanent<br />
            Address:</td>
        <td>
            <asp:TextBox ID="txtprmadd" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            Father Occupation:</td>
        <td>
            <asp:TextBox ID="txtfoccupation" runat="server"></asp:TextBox>
        </td>
        <td>
            Age of mother when<br />
            baby born:</td>
        <td>
            <asp:TextBox ID="txtageofmatbborn" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Village/City:</td>
        <td>
            <asp:TextBox ID="txtvillage" runat="server"></asp:TextBox>
        </td>
        <td>
            Mother Name:</td>
        <td>
            <asp:TextBox ID="txtmname" runat="server"></asp:TextBox>
        </td>
        <td>
            Pregnancy period in<br />
            weeks:</td>
        <td>
            <asp:TextBox ID="txtpregperinweek" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Taluka:</td>
        <td>
            <asp:TextBox ID="txttaluka" runat="server"></asp:TextBox>
        </td>
        <td>
            Mother Qualification:</td>
        <td>
            <asp:TextBox ID="txtmqualification" runat="server"></asp:TextBox>
        </td>
        <td>
            No. of children born in the Mother womb:</td>
        <td>
            <asp:TextBox ID="txtnoofchbrmwo" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            District:</td>
        <td>
            <asp:DropDownList ID="drbdistrict" runat="server">
                <asp:ListItem>Sangli</asp:ListItem>
                <asp:ListItem>Kolhapur</asp:ListItem>
                <asp:ListItem>Satara</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            Religion:</td>
        <td>
            <asp:DropDownList ID="drbreligion" runat="server">
                <asp:ListItem>Hindu</asp:ListItem>
                <asp:ListItem>Critian</asp:ListItem>
                <asp:ListItem>Buddhis</asp:ListItem>
                <asp:ListItem>Muslim</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            Baby weight on Birth:</td>
        <td>
            <asp:TextBox ID="txtbwonbirth" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            State:</td>
        <td>
            <asp:DropDownList ID="drbstate" runat="server">
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <strong>Documents:</strong></td>
        <td>
            <asp:Label ID="lblupadharcard" runat="server" BorderStyle="Ridge"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
        <td>
            <asp:Button ID="btnupadharcard" runat="server" Height="35px" 
                onclick="btnupadharcard_Click" Text="Upload Adhar Card" Width="200px" 
                style="color: #FFFFFF; background-color: #000066" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            <asp:Label ID="lblupbirthcard" runat="server" BorderStyle="Ridge"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload2" runat="server" />
        </td>
        <td>
            <asp:Button ID="btnuploadbicard" runat="server" Height="35px" 
                onclick="btnuploadbicard_Click" Text="Upload Birth Card" Width="200px" 
                style="color: #FFFFFF; background-color: #000066" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="btnsavenext" runat="server" Height="35px" 
                onclick="btnsavenext_Click" Text="Save &amp; Next" Width="200px" 
                style="color: #FFFFFF; background-color: #000066" />
        </td>
        <td>
            &nbsp;<asp:Button ID="btncancel" runat="server" Height="35px" Text="Cancel" 
                Width="200px" style="color: #FFFFFF; background-color: #000066" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>


