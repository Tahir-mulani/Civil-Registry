<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true"
    CodeFile="Registrationform.aspx.cs" Inherits="User_Registrationform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="form-card" style="max-width: 760px;">
        <asp:Panel ID="Panel1" runat="server" CssClass="form-header" style="background: linear-gradient(135deg, #0f2942 0%, #1b365d 100%); color: #ffffff; padding: 20px; border-radius: 8px; margin-bottom: 24px;">
            <h2 style="color: #ffffff; margin: 0;">Citizen Registration Form</h2>
            <p style="color: #cbd5e1; margin: 4px 0 0 0; font-size: 0.9rem;">Create your portal account to access civil registry services</p>
        </asp:Panel>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Registration ID:</label>
                <asp:TextBox ID="txtregid" runat="server" CssClass="form-control" placeholder="Registration ID"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtregid"
                    ErrorMessage="ID must be entered" ForeColor="#ef4444" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="form-group">
                <label class="form-label">Full Name:</label>
                <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtregid"
                    ErrorMessage="Name should not be empty" ForeColor="#ef4444" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Email Address:</label>
                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="name@example.com"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail"
                    ErrorMessage="Invalid email address format" ForeColor="#ef4444" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            <div class="form-group">
                <label class="form-label">Contact Number:</label>
                <asp:TextBox ID="txtcontact" runat="server" CssClass="form-control" placeholder="10-digit Mobile Number"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtcontact"
                    ErrorMessage="Enter 10 digit Mobile number" ForeColor="#ef4444" Display="Dynamic" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group" style="flex: 2;">
                <label class="form-label">Address:</label>
                <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Full Postal Address"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtadd"
                    ErrorMessage="Address is required" ForeColor="#ef4444" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Gender:</label>
                <div style="display: flex; gap: 20px; padding: 8px 0;">
                    <asp:RadioButton ID="rdmale" runat="server" Text=" Male" GroupName="@p1" />
                    <asp:RadioButton ID="rdfemale" runat="server" Text=" Female" GroupName="@p1" />
                </div>
            </div>
            <div class="form-group">
                <label class="form-label">Age:</label>
                <asp:TextBox ID="txtage" runat="server" CssClass="form-control" placeholder="Age in years"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtage"
                    ErrorMessage="Age must be entered" ForeColor="#ef4444" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Username:</label>
                <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" placeholder="Choose Username"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtusername"
                    ErrorMessage="Username is required" ForeColor="#ef4444" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Password:</label>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Retype Password:</label>
                <asp:TextBox ID="txtretypepass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Retype Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword"
                    ControlToValidate="txtretypepass" ErrorMessage="Passwords do not match"
                    ForeColor="#ef4444" Display="Dynamic"></asp:CompareValidator>
            </div>
        </div>

        <div class="form-actions">
            <asp:Button ID="btnsubmit" runat="server" Text="Submit Registration" OnClick="btnsubmit_Click" CssClass="btn btn-primary" style="min-width: 180px;" />
            <asp:Button ID="btncancel" runat="server" Text="Cancel" OnClick="btncancel_Click" CssClass="btn btn-secondary" style="min-width: 140px;" CausesValidation="false" />
        </div>
    </div>
</asp:Content>
