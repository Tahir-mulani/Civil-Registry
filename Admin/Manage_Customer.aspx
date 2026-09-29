<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Manage_Customer.aspx.cs" Inherits="Admin_Manage_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card">
        <div class="form-header">
            <h2>Manage Registered Customers</h2>
            <p style="color: #64748b; margin-top: 4px;">View, search, and manage registered citizen user accounts</p>
        </div>

        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="10" 
                DataKeyNames="regid" CssClass="gridview">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" DeleteText="Delete" />
                    <asp:BoundField DataField="regid" HeaderText="Reg ID" SortExpression="regid" />
                    <asp:BoundField DataField="name" HeaderText="Full Name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="Email Address" SortExpression="email" />
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                    <asp:BoundField DataField="contactno" HeaderText="Contact No" SortExpression="contactno" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                    <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                    <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [registrationform]" Deletecommand="DELETE FROM [registrationfrom] where regid=@regid"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
