<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Voteridcard.aspx.cs" Inherits="User_Voteridcard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 80%;
        }
        .style6
        {
            font-size: x-large;
            text-align: center;
        }
        .style7
        {
            text-decoration: underline;
        }
        .2
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style 2">
        <tr>
            <td class="style6" colspan="2">
                <strong>VOTER ID REGISTRATION<hr />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="style7" rowspan="5">
                <asp:Image ID="Image5" runat="server" Height="200px" 
                    ImageUrl="~/Image/voter id.png" Width="300px" />
            </td>
            <td class="style7">
                <strong>DOCUMENTS REQUIRED</strong></td>
        </tr>
        <tr>
            <td>
                <p>
                    Applying for a voters id requires you submit the following documents.
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>Proof of identify. </li>
                    <li>proof of address. </li>
                    <li>photograph. </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700">
                Voter ID Card Eligibility:</td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>In Order to be eligible for a voter id card, individual must meet the following 
                        criteria</li>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>

