<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Customer_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="form-card" style="max-width: 680px; margin: 30px auto;">
        <div class="form-header">
            <h2>Citizen Portal Feedback</h2>
            <p style="color: #64748b; margin-top: 4px;">Share your experience and rate our service performance</p>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Full Name:</label>
                <asp:TextBox ID="txtnm" runat="server" Enabled="False" CssClass="form-control" placeholder="Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Email Address:</label>
                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Phone Number:</label>
                <asp:TextBox ID="txtphno" runat="server" CssClass="form-control" placeholder="Phone Number"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Application Type / Service Name:</label>
                <asp:TextBox ID="txtappnm" runat="server" CssClass="form-control" placeholder="e.g. Birth Certificate"></asp:TextBox>
            </div>
        </div>

        <div class="form-group" style="margin-bottom: 20px;">
            <label class="form-label">Your Service Rating:</label>
            <div style="display: flex; align-items: center; gap: 8px; padding: 10px; background: #f8fafc; border-radius: 8px; border: 1px solid #e2e8f0;">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Image/Star.gif" onclick="ImageButton1_Click" />
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Image/Star.gif" onclick="ImageButton2_Click" />
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Image/Star.gif" onclick="ImageButton3_Click" />
                <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/Image/Star.gif" onclick="ImageButton4_Click" />
                <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/Image/Star.gif" onclick="ImageButton5_Click" />
                <asp:Label ID="lblstar" runat="server" style="font-weight: 700; color: #d97706; margin-left: 8px;"></asp:Label>
            </div>
        </div>

        <div class="form-group" style="margin-bottom: 20px;">
            <label class="form-label">Additional Feedback &amp; Review:</label>
            <asp:TextBox ID="txtaddfeed" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Tell us how we can improve..."></asp:TextBox>
        </div>

        <div class="form-group" style="margin-bottom: 24px;">
            <asp:CheckBox ID="chkpp" runat="server" Text=" I have read and accept the Privacy Policy" style="font-weight: 500;" />
        </div>

        <div class="form-actions">
            <asp:Button ID="btnsub" runat="server" onclick="btnsub_Click" Text="Submit Feedback" CssClass="btn btn-primary" style="min-width: 180px;" />
        </div>
    </div>
</asp:Content>
