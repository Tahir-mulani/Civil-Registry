<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="MarriageRepot.aspx.cs" Inherits="Customer_MarriageRepot" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td style="text-align: center">
            <asp:Label ID="lblstatus" runat="server" ForeColor="Red" 
                Text="Approval Pending"></asp:Label>
            <br />
            <asp:Label ID="lblnoapp" runat="server" ForeColor="Red" Text="Not Applied"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Button ID="btngenerate" runat="server" ForeColor="White" Height="35px" 
                style="background-color: #003366" Text="Generate Certificate" 
                Width="180px" onclick="btngenerate_Click" />
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" 
                AutoDataBind="true" />
        </td>
    </tr>
</table>
</asp:Content>

