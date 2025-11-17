<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="User_aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-size: x-large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" cellpadding="2" class="style2" width="80%">
    <tr>
        <td class="style5">
            <strong>
            <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Image/indian-flag.jpg" 
                style="text-align: left; color: #FFFFFF">
            About Us    </asp:Panel>
            &nbsp;<hr />
            </strong></td>
    </tr>
    <tr>
        <td>
            <asp:Image ID="Image5" runat="server" Height="300px" 
                ImageUrl="~/Image/civilregistory.jpg" Width="100%" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Civil Registry is a consultancy agency who are 
            providing the assistant to apply and enquire about the legal activities and 
            different application such as a Birth Registration, Death Registration, Marriage 
            Registration, Voterid Registration, Pancard Registration, AdharCard 
            Registration.</td>
    </tr>
    <tr>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Civil Registry has to its own support team for 
            giving assistance to collect supporting documents and signature for each of 
            every application. it has its own legal helpdesk for assisting the legal quiries 
            online.</td>
    </tr>
</table>
</asp:Content>

