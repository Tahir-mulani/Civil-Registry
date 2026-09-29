<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="DeathReport.aspx.cs" Inherits="Customer_DeathReport" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card" style="max-width: 900px; margin: 30px auto; text-align: center;">
        <div class="form-header">
            <h2>Death Certificate Status &amp; Report</h2>
            <p style="color: #64748b; margin-top: 4px;">Track application status and download official digital Death certificate</p>
        </div>

        <div style="margin-bottom: 20px;">
            <asp:Label ID="lblnoapp" runat="server" style="font-size: 1rem; font-weight: 600; color: #ef4444; display: block; margin-bottom: 6px;" Text="Not Applied"></asp:Label>
            <asp:Label ID="lblstatus" runat="server" style="font-size: 1.1rem; font-weight: 700; color: #d97706; display: block;" Text="Approval Pending"></asp:Label>
        </div>

        <div style="margin-bottom: 24px;">
            <asp:Button ID="btngenerate" runat="server" onclick="btngenerate_Click" Text="Generate Certificate" CssClass="btn btn-primary" style="min-width: 200px;" />
        </div>

        <div class="table-responsive" style="margin-top: 24px; text-align: center;">
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
        </div>
    </div>
</asp:Content>
