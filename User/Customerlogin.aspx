<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Customerlogin.aspx.cs" Inherits="User_Customerlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .style2
        {
            width: 60%;
            
        }
        .style3
        {
            height: 29px;
        }
        .style5
        {
            color: #000000;
            height: 29px;
            background-color: #FFFFFF;
        }
        .style6
        {
            height: 29px;
            width: 321px;
        }
        .style7
        {
            width: 321px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style2">
        <tr>
            <td colspan="2" 
                style="text-align: center; " class="style5">
                <strong style="font-size: x-large">Customer Login<hr />
                </strong></td>
        </tr>
        <tr>
            <td class="style6">
                Username:</td>
            <td class="style3">
                <asp:TextBox ID="txtusername" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Password:</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" Text="Login" 
                    Width="180px" style="color: #FFFFFF; background-color: #003366" 
                    Height="30px" />
                <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                    style="margin-left: 144px; color: #FFFFFF; background-color: #003366;" 
                    Text="Cancel" Width="180px" Height="30px" />
                <hr />
            </td>
        </tr>
    </table>
</asp:Content>

