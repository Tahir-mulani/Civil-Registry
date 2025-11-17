<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="PancardReport.aspx.cs" Inherits="Customer_PancardReport" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
    <tr>
        <td class="style2">
            <asp:Label ID="lblstatus" runat="server" ForeColor="Red">Approval Pending</asp:Label>
            <br />
            <asp:Label ID="lblanapp" runat="server" ForeColor="Red" Text="Not Applied"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Button ID="btngenerate" runat="server" Height="35px" 
                onclick="btngenerate_Click" Text="Generate Certificate" Width="180px" 
                style="color: #FFFFFF; background-color: #003366" />
        </td>
    </tr>
    <tr>
        <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<CR:CrystalReportViewer ID="CrystalReportViewer1" 
                runat="server" AutoDataBind="true" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
    </tr>
</table>
</asp:Content>

