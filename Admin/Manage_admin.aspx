<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Manage_admin.aspx.cs" Inherits="Admin_Manage_admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 80%;
        }
        .style15
        {
            font-size: x-large;
        }
        .style16
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: normal;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style14">
        <tr>
            <td class="style15" colspan="4" style="text-align: center">
                Manage Admin<hr />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style16">
                Admin Name:</td>
            <td colspan="2">
                <asp:TextBox ID="txtadnm" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style16">
                Password:</td>
            <td colspan="2">
                <asp:TextBox ID="txtpass" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="style16">
                Confirm Password:</td>
            <td colspan="2">
                <asp:TextBox ID="txtcnpass" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnsave" runat="server" Height="30px" onclick="btnsave_Click" 
                    style="color: #FFFFFF; background-color: #000066" Text="Save" Width="180px" />
            </td>
            <td>
                <asp:Button ID="btnup" runat="server" Height="30px" onclick="btnup_Click" 
                    style="color: #FFFFFF; background-color: #000066" Text="Update" Width="180px" />
            </td>
            <td>
                <asp:Button ID="btndel" runat="server" Height="30px" onclick="btndel_Click" 
                    style="color: #FFFFFF; background-color: #000066" Text="Delete" Width="180px" />
            </td>
            <td>
                <asp:Button ID="btncan" runat="server" Height="30px" onclick="btncan_Click" 
                    style="color: #FFFFFF; background-color: #000066" Text="Cancel" Width="180px" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Username" HeaderText="Username" 
                            SortExpression="Username" />
                        <asp:BoundField DataField="Password" HeaderText="Password" 
                            SortExpression="Password" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [admin]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

