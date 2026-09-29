<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="View_Feedback.aspx.cs" Inherits="Admin_View_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card">
        <div class="form-header">
            <h2>Citizen Feedback Submissions</h2>
            <p style="color: #64748b; margin-top: 4px;">View citizen satisfaction ratings, reviews, and service feedback</p>
        </div>

        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" CssClass="gridview">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Emailid" HeaderText="Email ID" SortExpression="Emailid" />
                    <asp:BoundField DataField="phoneno" HeaderText="Phone No" SortExpression="phoneno" />
                    <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
                    <asp:BoundField DataField="addfeedback" HeaderText="Feedback / Review" SortExpression="addfeedback" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Customerfeedback]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
