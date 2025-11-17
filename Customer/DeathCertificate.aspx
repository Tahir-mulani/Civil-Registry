<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="DeathCertificate.aspx.cs" Inherits="Customer_DeathCertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 84%;
        }
        .style3
        {
            width: 154px;
        }
        .style4
        {
            width: 270px;
        }
        .style5
        {
            width: 270px;
            height: 46px;
        }
        .style6
        {
            width: 154px;
            height: 46px;
        }
        .style7
        {
            height: 46px;
        }
        .style8
        {
            width: 270px;
            height: 26px;
        }
        .style9
        {
            width: 154px;
            height: 26px;
        }
        .style10
        {
            height: 26px;
        }
    .style11
    {
        width: 270px;
        height: 34px;
    }
    .style12
    {
        width: 154px;
        height: 34px;
    }
    .style13
    {
        height: 34px;
    }
        .style14
        {
            width: 270px;
            height: 39px;
        }
        .style15
        {
            width: 154px;
            height: 39px;
        }
        .style16
        {
            height: 39px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" class="style2">
        <tr>
            <td colspan="6" 
                style="text-align: center; font-size: x-large; font-family: 'Microsoft JhengHei'">
                <strong>Application Form for Death certificate</strong><hr />
            </td>
        </tr>
        <tr>
            <td class="style4">
                Death Registration id:</td>
            <td class="style3">
                <asp:TextBox ID="txtdeathregid" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                Date of Rgistration:</td>
            <td>
                <asp:TextBox ID="txtdateofreg" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                Permanent Address:</td>
            <td>
                <asp:TextBox ID="txtperadd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Death Date:</td>
            <td class="style3">
                <asp:TextBox ID="txtdeathdate" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                Date of Birth:</td>
            <td>
                <asp:TextBox ID="txtdateofbirth" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
            </td>
            <td>
                Informer Name:</td>
            <td>
                <asp:TextBox ID="txtinfoname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Name:</td>
            <td class="style3">
                <asp:TextBox ID="txtname" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                Age:</td>
            <td>
                <asp:TextBox ID="txtage" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                Informer Address:</td>
            <td>
                <asp:TextBox ID="txtinfoadd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Gender:</td>
            <td class="style3">
                <asp:RadioButton ID="rdmale" runat="server" Text="Male" />
                <asp:RadioButton ID="rdfemale" runat="server" Text="Female" />
                <asp:RadioButton ID="rdother" runat="server" Text="Other" />
            </td>
            <td>
                Mother Name:</td>
            <td>
                <asp:TextBox ID="txtmothernm" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                Place of Death:</td>
            <td>
                <asp:DropDownList ID="drbdeathplace" runat="server">
                    <asp:ListItem>Sangli</asp:ListItem>
                    <asp:ListItem>Miraj</asp:ListItem>
                    <asp:ListItem>Kolhapur</asp:ListItem>
                    <asp:ListItem>Jaysingpur</asp:ListItem>
                    <asp:ListItem>Islampur</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style5">
                Religion:</td>
            <td class="style6">
                <asp:DropDownList ID="drbreligion" runat="server">
                    <asp:ListItem>Islam</asp:ListItem>
                    <asp:ListItem>Hindu</asp:ListItem>
                    <asp:ListItem>Christian</asp:ListItem>
                    <asp:ListItem>Sikh</asp:ListItem>
                    <asp:ListItem>Buddhis</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                Father/Husband Name:</td>
            <td class="style7">
                <asp:TextBox ID="txtfathername" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                Medical Service taken before</td>
            <td>
                <asp:DropDownList ID="drbmedservice" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
                </td>
        </tr>
        <tr>
            <td class="style4">
                Death Person Occupation:</td>
            <td class="style3">
                <asp:DropDownList ID="drbdeathperocc" runat="server">
                    <asp:ListItem>House wife</asp:ListItem>
                    <asp:ListItem>Worker</asp:ListItem>
                    <asp:ListItem>Bussinessman</asp:ListItem>
                    <asp:ListItem>Driver</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                Death Reson:</td>
            <td>
                <asp:TextBox ID="txtdeathreason" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td>
                Is this person is Addicated?<br />
                [Tobacoo/Cigaret/Alcoho]</td>
            <td>
                <asp:DropDownList ID="drbisthisperadicted" runat="server">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Documents:</td>
            <td class="style9">
                </td>
            <td class="style10">
                </td>
            <td class="style10">
                </td>
            <td class="style10">
                </td>
            <td class="style10">
                </td>
        </tr>
        <tr>
            <td class="style11">
                <asp:Label ID="lblupdeath" runat="server" BorderStyle="Ridge"></asp:Label>
            </td>
            <td class="style12">
                </td>
            <td class="style13">
                <asp:DropDownList ID="drbdocument" runat="server">
                    <asp:ListItem>Voter Id card</asp:ListItem>
                    <asp:ListItem>Aadhar Card</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style13">
                <asp:Label ID="lblupadharpro" runat="server" BorderStyle="Ridge"></asp:Label>
            </td>
            <td class="style13">
                </td>
            <td class="style13">
                </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:FileUpload ID="FileUpload2" runat="server" />
            </td>
            <td>
                <asp:Button ID="btnupaddprof" runat="server" Height="35px" 
                    onclick="btnupaddprof_Click" Text="Upload Address Proof" Width="200px" 
                    style="color: #FFFFFF; background-color: #000066" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Button ID="btnuplddeathprof" runat="server" Text="Upoad Death Proof" 
                    Height="35px" onclick="btnuplddeathprof_Click" Width="200px" 
                    style="color: #FFFFFF; background-color: #000066" />
            </td>
            <td class="style15">
                </td>
            <td class="style16">
                &nbsp;</td>
            <td class="style16">
                </td>
            <td class="style16">
                </td>
            <td class="style16">
                </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Button ID="btnsavenxt" runat="server" Text="Save &amp; Next" Height="35px" 
                    Width="200px" onclick="btnsavenxt_Click" 
                    style="color: #FFFFFF; background-color: #000066" />
            </td>
            <td>
                <asp:Button ID="btncancel" runat="server" Text="Cancel" Height="35px" 
                    Width="200px" style="color: #FFFFFF; background-color: #000066" />
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>


