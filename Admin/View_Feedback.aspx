<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="View_Feedback.aspx.cs" Inherits="Admin_View_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Emailid" HeaderText="Emailid" 
            SortExpression="Emailid" />
        <asp:BoundField DataField="phoneno" HeaderText="phoneno" 
            SortExpression="phoneno" />
        <asp:BoundField DataField="Rating" HeaderText="Rating" 
            SortExpression="Rating" />
        <asp:BoundField DataField="addfeedback" HeaderText="addfeedback" 
            SortExpression="addfeedback" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [Customerfeedback]"></asp:SqlDataSource>
</asp:Content>

