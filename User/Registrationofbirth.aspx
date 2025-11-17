<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Registrationofbirth.aspx.cs" Inherits="User_Registrationofbirth" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style2" width="80%">
        <tr>
            <td colspan="2" style="font-size: x-large; text-align: center">
                <strong>REGISTERING A BIRTH
                <hr />
                </strong>
            </td>
        </tr>
        <tr>
            <td rowspan="6">
                <asp:Image ID="Image5" runat="server" Height="200px" 
                    ImageUrl="~/Image/Birth_Certificate.png" Width="300px" />
            </td>
            <td>
                <ul>
                    <li>To obtain a birth certificate. The birth must be registered with the concerned 
                        proof authorities within 21 days from date of occurrence. </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>In case of birth has taken place in hospital or nursing homes or medical 
                        institution. such has to be reported by the institutions. </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td style="font-weight: 700; text-decoration: underline">
                DOCUMENTS REQUIRED</td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>Following documents needs to be for getting Maharashtra birth certificate.
                    </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>Identify proof of the parents for verification[Aadhar Card] </li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>
                <ul>
                    <li>Letter from hospital-proof of birth of child issued by the hospital where child 
                        is born. </li>
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>

