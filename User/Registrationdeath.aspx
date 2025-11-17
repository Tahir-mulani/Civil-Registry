<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Registrationdeath.aspx.cs" Inherits="User_Registrationdeath" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            font-size: x-large;
        }
        .style6
        {
            text-align: center;
        }
        .style7
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style2">
        <tr>
            <td class="style6" colspan="2">
                <span class="style5"><strong>REGISTRATION DEATH</strong></span>&nbsp;<hr />
            </td>
        </tr>
        <tr>
            <td rowspan="5">
                <asp:Image ID="Image5" runat="server" 
                    ImageUrl="~/Image/death certificate.png" Width="300px" />
            </td>
            <td>
                Every death in Maharashtra needs to be registered in the concern Register Office 
                in order to obtain death certificate persons responsible for registering a death 
                is listed below. 
            </td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>In case death in a house of the family is responsible for registering death.
                    </li>
                    <li>The medical in-charge need to register, if the death in a hospital or medical 
                        institution. </li>
                    <li>Jailer in-charge is responsible for registration, if a death occurs in a jail.
                    </li>
                    <li>If a new-born child or baby is founded deserted in an area, header man of that 
                        area or local ploice station in-charge can register the death. </li>
                    <li>In case of death occurs in a plantation the superintendent of the plantation can 
                        register. </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td class="style7">
                <strong>DOCUMENT REQUIRED</strong></td>
        </tr>
        <tr>
            <td>
                Following document need to be submitted at the time of completing death 
                registration in Maharashtra</td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>Declaration by close relative or family member in prescribe format. </li>
                    <li>Application form Address proof of decreased(Voter ID 
                        card,electrically,gas,water,telephone bill passport,valid ration card,Aadhar 
                        card,Name of the decreased)</li>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>

