<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Manage_Customer.aspx.cs" Inherits="Admin_Manage_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5" 
        DataKeyNames="regid">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" />
        <asp:BoundField DataField="regid" HeaderText="regid" SortExpression="regid" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="address" HeaderText="address" 
            SortExpression="address" />
        <asp:BoundField DataField="contactno" HeaderText="contactno" 
            SortExpression="contactno" />
        <asp:BoundField DataField="gender" HeaderText="gender" 
            SortExpression="gender" />
        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
        <asp:BoundField DataField="username" HeaderText="username" 
            SortExpression="username" />
        <asp:BoundField DataField="password" HeaderText="password" 
            SortExpression="password" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [registrationform]" Deletecommand="DELETE FROM [registrationfrom] where regid=@regid"></asp:SqlDataSource>
</asp:Content>

