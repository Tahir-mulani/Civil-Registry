<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Panregestration.aspx.cs" Inherits="User_Panregestration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style2">
        <tr>
            <td colspan="2" style="font-size: x-large; text-align: center">
                <strong>PAN REGISTRATION</strong><hr />
            </td>
        </tr>
        <tr>
            <td rowspan="4" style="font-weight: 700; text-decoration: underline">
                <asp:Image ID="Image5" runat="server" 
                    
                    ImageUrl="~/Image/PAN-Card-for-a-Minor-Everything-You-Need-To-Know-thumbnail.png" 
                    Width="300px" />
            </td>
            <td style="font-weight: 700; text-decoration: underline">
                DOCUMENTS REQUIRED 
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700">
                1.Documents accepted as proof of identify[only one].
            </td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>Voter ID card </li>
                    <li>Password </li>
                    <li>Aadhaar Card Driving License, Domicile</li>
                    <li>&nbsp;A certificate issued by a bank that should be only. counting applicants 
                        photo and the bank a/c number.</li>
                    <li>&nbsp;Personal card copy with applicants photograph.</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700">
               2.Documents accepted as proof of Address-</td>
        </tr>
        <tr>
            <td rowspan="3" style="font-weight: 700; text-decoration: underline">
                <asp:Image ID="Image6" runat="server" Height="259px" 
                    ImageUrl="~/Image/pan2.png" Width="299px" />
            </td>
            <td>
                <ul>
                    <li>Electricity bills..</li>
                    <li>&nbsp;password. </li>
                    <li>Statements of Bank Account.</li>
                    <li>&nbsp;Latest order for property tax document. </li>
                    <li>property Registration Document. </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700">
                3.Documents accepted as proof of Date of Birth-
            </td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>Birth Certificate issued by Indian consultant.</li>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>

