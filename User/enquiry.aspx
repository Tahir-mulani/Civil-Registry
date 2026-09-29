<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="enquiry.aspx.cs" Inherits="User_enquiry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-card" style="max-width: 680px;">
        <div class="form-header">
            <h2>Contact &amp; Enquiry Helpdesk</h2>
            <p style="color: #64748b; margin-top: 4px;">Have questions regarding document applications? Send us a message.</p>
        </div>

        <div class="form-group" style="margin-bottom: 16px;">
            <label class="form-label">Full Name:</label>
            <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Enter Full Name"></asp:TextBox>
        </div>

        <div class="form-group" style="margin-bottom: 16px;">
            <label class="form-label">Email Address:</label>
            <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="name@example.com"></asp:TextBox>
        </div>

        <div class="form-group" style="margin-bottom: 16px;">
            <label class="form-label">Subject:</label>
            <asp:TextBox ID="txtsubject" runat="server" CssClass="form-control" placeholder="Enquiry Subject"></asp:TextBox>
        </div>

        <div class="form-group" style="margin-bottom: 24px;">
            <label class="form-label">Message / Details:</label>
            <asp:TextBox ID="txtmsg" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Type your query or enquiry details here..."></asp:TextBox>
        </div>

        <div class="form-actions">
            <asp:Button ID="btnsubmit" runat="server" onclick="btnsubmit_Click" Text="Submit Enquiry" CssClass="btn btn-primary" style="min-width: 160px;" />
            <asp:Button ID="btnreset" runat="server" Text="Reset Form" CssClass="btn btn-secondary" style="min-width: 140px;" onclick="btnreset_Click1" CausesValidation="false" />
        </div>
    </div>
</asp:Content>
