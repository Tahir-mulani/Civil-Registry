<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Customerlogin.aspx.cs" Inherits="User_Customerlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="form-card">
        <div class="form-header">
            <h2>Customer Portal Sign In</h2>
            <p style="color: #64748b; margin-top: 4px;">Enter your username and password to access your account</p>
        </div>
        
        <div class="form-group" style="margin-bottom: 16px;">
            <label class="form-label">Username:</label>
            <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" placeholder="Enter Username"></asp:TextBox>
        </div>
        
        <div class="form-group" style="margin-bottom: 24px;">
            <label class="form-label">Password:</label>
            <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter Password"></asp:TextBox>
        </div>
        
        <div class="form-actions">
            <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" Text="Login" 
                CssClass="btn btn-primary" style="min-width: 140px;" />
            <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" 
                Text="Cancel" CssClass="btn btn-secondary" style="min-width: 140px;" />
        </div>
    </div>
</asp:Content>
