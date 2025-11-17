<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Customer_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 60%;
        }
        .style3
        {
            font-family: "Microsoft YaHei UI";
            font-size: x-large;
            text-align: center;
        }
        .style4
        {
            font-family: "Microsoft JhengHei UI";
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" class="style2">
        <tr>
            <td class="style3" colspan="2">
                <span class="style4"><strong>Feedback</strong></span><hr />
            </td>
        </tr>
        <tr>
            <td>
                Name</td>
            <td>
                Emali</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtnm" runat="server" Enabled="False" Height="30px" 
                    Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Phone Number</td>
            <td>
                Application Name</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtphno" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
            <td>
                <asp:TextBox ID="txtappnm" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                Your Service Rating</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/Star.gif" 
                    onclick="ImageButton1_Click" />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/Star.gif" 
                    onclick="ImageButton2_Click" />
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Image/Star.gif" 
                    onclick="ImageButton3_Click" />
                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Image/Star.gif" 
                    onclick="ImageButton4_Click" />
                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Image/Star.gif" 
                    onclick="ImageButton5_Click" />
                <asp:Label ID="lblstar" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                Additional feedback</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtaddfeed" runat="server" Height="84px" TextMode="MultiLine" 
                    Width="254px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:CheckBox ID="chkpp" runat="server" 
                    Text="I have read and accept the Privacy Policy" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnsub" runat="server" Height="30px" onclick="btnsub_Click" 
                    style="color: #FFFFFF; background-color: #000066" Text="Submit Feedback" 
                    Width="200px" />
            </td>
        </tr>
    </table>
</asp:Content>


