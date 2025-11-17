<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="PanCard.aspx.cs" Inherits="Customer_PanCard" %>

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
        }
        .style4
        {
            width: 220px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" class="style2">
        <tr>
            <td class="style3" colspan="5" style="text-align: center">
                Application Form For PanCard</td>
        </tr>
        <tr>
            <td>
                Pan Registration id:</td>
            <td class="style4">
                <asp:TextBox ID="txtpanregid" runat="server"></asp:TextBox>
            </td>
            <td>
                Registration Date:</td>
            <td>
                <asp:TextBox ID="txtregdt" runat="server" TextMode="Date"></asp:TextBox>
            </td>
            <td rowspan="3">
                <asp:Image ID="Image2" runat="server" Height="150px" Width="150px" />
            </td>
        </tr>
        <tr>
            <td>
                Name:</td>
            <td class="style4">
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
            <td>
                Mobile No.:</td>
            <td>
                <asp:TextBox ID="txtmobnum" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Date of Birth:</td>
            <td class="style4">
                <asp:TextBox ID="txtdateofbirth" runat="server"></asp:TextBox>
            </td>
            <td>
                Age:</td>
            <td>
                <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Gender:</td>
            <td class="style4">
                <asp:RadioButton ID="rdmale" runat="server" Text="Male" />
                <asp:RadioButton ID="rdfemale" runat="server" Text="Female" />
                <asp:RadioButton ID="rdother" runat="server" Text="Other" />
            </td>
            <td>
                Email id:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload3" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                Place:</td>
            <td class="style4">
                <asp:TextBox ID="txtplace" runat="server"></asp:TextBox>
            </td>
            <td>
                Father Name:</td>
            <td>
                <asp:TextBox ID="txtfathernm" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="btnupimage" runat="server" Text="Upload Image" Width="200px" 
                    onclick="btnupimage_Click" 
                    style="color: #FFFFFF; background-color: #000066" />
            </td>
        </tr>
        <tr>
            <td>
                Village/City:</td>
            <td class="style4">
                <asp:TextBox ID="txtvillcity" runat="server"></asp:TextBox>
            </td>
            <td>
                Taluka:</td>
            <td>
                <asp:TextBox ID="txttaluka" runat="server"></asp:TextBox>
            </td>
            <td rowspan="3">
                <asp:Image ID="Image3" runat="server" Height="150px" Width="150px" />
            </td>
        </tr>
        <tr>
            <td>
                District:</td>
            <td class="style4">
                <asp:DropDownList ID="drbdistrict" runat="server">
                    <asp:ListItem>Sangli</asp:ListItem>
                    <asp:ListItem>Kolhapur</asp:ListItem>
                    <asp:ListItem>Satara</asp:ListItem>
                    <asp:ListItem>Pune</asp:ListItem>
                </asp:DropDownList>
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
            <td>
                Pincode:</td>
            <td class="style4">
                <asp:TextBox ID="txtpincode" runat="server"></asp:TextBox>
            </td>
            <td>
                Country:</td>
            <td>
                <asp:TextBox ID="txtcountry" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="drbdoc1" runat="server">
                    <asp:ListItem>VoterId</asp:ListItem>
                    <asp:ListItem>Aadhar Card</asp:ListItem>
                    <asp:ListItem>Birth Certificate</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style4">
                <asp:Label ID="lblupmaturity" runat="server" BorderStyle="Ridge"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:Button ID="btnupmaturity" runat="server" Text="Upload Maturity Proof" 
                    onclick="btnupmaturity_Click" 
                    style="color: #FFFFFF; background-color: #000066" />
            </td>
            <td>
                <asp:FileUpload ID="FileUpload4" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="drbdoc2" runat="server">
                    <asp:ListItem>Electricity Bill</asp:ListItem>
                    <asp:ListItem>Aadhar Card</asp:ListItem>
                    <asp:ListItem>Post Office passbook</asp:ListItem>
                    <asp:ListItem>Ration Card</asp:ListItem>
                    <asp:ListItem>Goverment issued documents</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style4">
                <asp:Label ID="lblupaddpro" runat="server" BorderStyle="Ridge"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
            <td>
                <asp:Button ID="btnupaddproof" runat="server" Text="Upload Address Proof" 
                    onclick="btnupaddproof_Click" 
                    style="color: #FFFFFF; background-color: #000066" />
            </td>
            <td>
                <asp:Button ID="btnupsign" runat="server" Text="Upload Sign" Width="200px" 
                    onclick="upsign_Click" style="color: #FFFFFF; background-color: #000066" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnsavenxt" runat="server" Height="30px" Text="Save &amp; Next" 
                    Width="200px" onclick="btnsavenxt_Click" 
                    style="color: #FFFFFF; background-color: #000066" />
            </td>
            <td colspan="3">
                <asp:Button ID="btncancel" runat="server" Height="30px" Text="Cancel" 
                    Width="200px" onclick="btncancel_Click" 
                    style="color: #FFFFFF; background-color: #000066" />
            </td>
        </tr>
    </table>
</asp:Content>


