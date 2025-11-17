<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="VoterIdCard.aspx.cs" Inherits="Customer_VoterIdCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 80%;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="2" class="style2">
    <tr>
        <td colspan="5" 
            style="text-align: center; font-family: 'Microsoft JhengHei'; font-size: x-large">
            Application Form For Voter ID</td>
    </tr>
    <tr>
        <td>
            Voter<br />
            Registration id:</td>
        <td>
            <asp:TextBox ID="txtvoterregid" runat="server"></asp:TextBox>
        </td>
        <td>
            Registration Date:</td>
        <td>
            <asp:TextBox ID="txtregdate" runat="server" TextMode="Date"></asp:TextBox>
        </td>
        <td rowspan="3">
            <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" />
        </td>
    </tr>
    <tr>
        <td>
            Name of
            <br />
            Parliment:</td>
        <td>
            <asp:TextBox ID="txtnmparliment" runat="server"></asp:TextBox>
        </td>
        <td>
            No.of Parliment:</td>
        <td>
            <asp:TextBox ID="txtnoparliment" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Name:</td>
        <td>
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
        </td>
        <td>
            Father Name:</td>
        <td>
            <asp:TextBox ID="txtfathernm" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Mobile No.:</td>
        <td>
            <asp:TextBox ID="txtmobnum" runat="server"></asp:TextBox>
        </td>
        <td>
            Email Id:</td>
        <td>
            <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload3" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            Gender:</td>
        <td>
            <asp:RadioButton ID="rdmale" runat="server" Text="Male" />
            <asp:RadioButton ID="rdfemale" runat="server" Text="Female" />
            <asp:RadioButton ID="rdotehr" runat="server" Text="Other" />
        </td>
        <td>
            Aadhaar No.</td>
        <td>
            <asp:TextBox ID="txtadharno" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:Button ID="btnupimg" runat="server" Height="30px" Text="Upload Images" 
                Width="200px" onclick="btnupimg_Click" 
                style="color: #FFFFFF; background-color: #000066" />
        </td>
    </tr>
    <tr>
        <td>
            Date of Birth:</td>
        <td>
            <asp:TextBox ID="txtdtbirth" runat="server"></asp:TextBox>
        </td>
        <td>
            Age:</td>
        <td>
            <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Disability:</td>
        <td>
            <asp:DropDownList ID="drbdisability" runat="server">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            Disability Type:</td>
        <td>
            <asp:TextBox ID="txtdisabilitytyp" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Religion:</td>
        <td>
            <asp:DropDownList ID="drbreligion" runat="server">
                <asp:ListItem>Islam</asp:ListItem>
                <asp:ListItem>Hindu</asp:ListItem>
                <asp:ListItem>Sikh</asp:ListItem>
                <asp:ListItem>Buddhis</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            State :</td>
        <td>
            <asp:DropDownList ID="drbstate" runat="server">
                <asp:ListItem>Maharashtra</asp:ListItem>
                <asp:ListItem>Karnataka</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            District:</td>
        <td>
            <asp:DropDownList ID="drbdistrict" runat="server">
                <asp:ListItem>Sangli</asp:ListItem>
                <asp:ListItem>Satara</asp:ListItem>
                <asp:ListItem>Kolhapur</asp:ListItem>
                <asp:ListItem>Pune</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            Taluka:</td>
        <td>
            <asp:DropDownList ID="drbtaluka" runat="server">
                <asp:ListItem>Miraj</asp:ListItem>
                <asp:ListItem>Shirol</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Village/City:</td>
        <td>
            <asp:TextBox ID="txtvillage" runat="server"></asp:TextBox>
        </td>
        <td>
            Pincode:</td>
        <td>
            <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:DropDownList ID="drbdoc1" runat="server">
                <asp:ListItem>Adhar Card</asp:ListItem>
                <asp:ListItem>Pancard</asp:ListItem>
                <asp:ListItem>Bank Passook</asp:ListItem>
                <asp:ListItem>Ration card</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:Label ID="lblupidpro" runat="server" BorderStyle="Ridge"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
        <td>
            <asp:Button ID="btnupidprof" runat="server" Height="30px" 
                Text="Upload ID Proof" Width="200px" onclick="btnupidprof_Click" 
                style="color: #FFFFFF; background-color: #000066" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:DropDownList ID="drbdoc2" runat="server">
                <asp:ListItem>Ration card</asp:ListItem>
                <asp:ListItem>Driving Licence</asp:ListItem>
                <asp:ListItem>Electricity Bill</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:Label ID="lblupaddpro" runat="server" BorderStyle="Ridge"></asp:Label>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload2" runat="server" />
        </td>
        <td>
            <asp:Button ID="btnupaddprof" runat="server" Height="30px" 
                Text="Upload Address Proof" Width="200px" onclick="btnupaddprof_Click" 
                style="color: #FFFFFF; background-color: #000066" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="btnsavenxt" runat="server" Height="30px" Text="Save &amp; Next" 
                Width="200px" onclick="btnsavenxt_Click" 
                style="color: #FFFFFF; background-color: #000066" />
        </td>
        <td colspan="3">
            <asp:Button ID="btncancel" runat="server" Height="30px" Text="Cancel" 
                Width="200px" style="color: #FFFFFF; background-color: #000066" />
        </td>
    </tr>
</table>
</asp:Content>


