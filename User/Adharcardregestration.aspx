<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Adharcardregestration.aspx.cs" Inherits="User_Adharcardregestration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        text-align: center;
    }
    .style6
    {
        text-decoration: underline;
    }
    .style7
    {
        text-align: center;
    }
    .style8
    {
        width: 24px;
    }
    .2
    {
        width: 366px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style 2" width="80%">
    <tr>
        <td class="style7" colspan="2" style="font-size: x-large">
            <strong>AADHAR CARD REGISTRATION<hr />
            </strong>
        </td>
    </tr>
    <tr>
        <td class="style8" rowspan="3">
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/adhar.png" 
                Width="200px" />
        </td>
        <td>
            Adhar Number is a 12-digit Random Number issued by the UDA(&#39;Authority&#39;)to the 
            residents of india after satisfying the verification process down by the 
            authority. Any individual,imprespective of age and gender, who is a resident of 
            india,may voluntary cancel to obtain aadhaar number.</td>
    </tr>
    <tr>
        <td class="style6">
            <strong>DOCUMENTS REQUIRED</strong></td>
    </tr>
    <tr>
        <td>
            <ul>
                <li>Ration card </li>
                <li>Leaving certificate </li>
                <li>Resident proof </li>
                <li>photograph</li>
            </ul>
        </td>
    </tr>
</table>
</asp:Content>

