<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="enquiry.aspx.cs" Inherits="User_enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            font-size: x-large;
            text-align: center;
        }
        .style7
        {
            height: 34px;
        }
        .style2
        {
            width: 701px;
        }
        .style8
        {
            width: 412px;
        }
        .style9
        {
            height: 34px;
            width: 412px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style2" width="100%">
        <tr>
            <td class="style6" colspan="2">
                <strong>Enquiry Form</strong></td>
        </tr>
        <tr>
            <td class="style8">
                Name:</td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Email:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                Subject:</td>
            <td class="style7">
                <asp:TextBox ID="txtsubject" runat="server" Height="30px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                Message:</td>
            <td>
                <asp:TextBox ID="txtmsg" runat="server" Height="30px" TextMode="MultiLine" 
                    Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style8">
                <asp:Button ID="btnsubmit" runat="server" Height="30px" 
                    onclick="btnsubmit_Click" style="color: #FFFFFF; background-color: #000066" 
                    Text="Submit" Width="180px" />
            </td>
            <td>
                <asp:Button ID="btnreset" runat="server" Height="30px" Text="Reset" 
                    Width="150px" style="color: #FFFFFF; background-color: #000066" 
                    onclick="btnreset_Click1" />
            </td>
        </tr>
    </table>
</asp:Content>

