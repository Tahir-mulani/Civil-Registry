<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Manage_admin.aspx.cs" Inherits="Admin_Manage_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card" style="max-width: 800px; margin: 0 auto;">
        <div class="form-header">
            <h2>Manage Admin Accounts</h2>
            <p style="color: #64748b; margin-top: 4px;">Create, update, and manage administrative credentials</p>
        </div>

        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 24px; margin-bottom: 24px;">
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label">Admin Username:</label>
                    <asp:TextBox ID="txtadnm" runat="server" CssClass="form-control" placeholder="Admin Username"></asp:TextBox>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label">Password:</label>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Confirm Password:</label>
                    <asp:TextBox ID="txtcnpass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Confirm Password"></asp:TextBox>
                </div>
            </div>

            <div class="form-actions" style="margin-top: 20px;">
                <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save" CssClass="btn btn-primary" style="min-width: 110px;" />
                <asp:Button ID="btnup" runat="server" onclick="btnup_Click" Text="Update" CssClass="btn btn-secondary" style="min-width: 110px;" />
                <asp:Button ID="btndel" runat="server" onclick="btndel_Click" Text="Delete" CssClass="btn btn-danger" style="min-width: 110px;" />
                <asp:Button ID="btncan" runat="server" onclick="btncan_Click" Text="Cancel" CssClass="btn btn-secondary" style="min-width: 110px;" CausesValidation="false" />
            </div>
        </div>

        <h3 style="color: #0f2942; margin-bottom: 12px;">Admin Users List</h3>
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged"
                CssClass="gridview">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="Select" />
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [admin]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
