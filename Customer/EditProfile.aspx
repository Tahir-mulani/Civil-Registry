<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Customer_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 80%;
        }
        .style3
        {
            font-size: x-large;
            font-family: "Microsoft JhengHei UI";
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" class="style2">
        <tr>
            <td class="style3" style="text-align: center">
                <strong>Edit Profile<hr />
                </strong>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                    DataSourceID="SqlDataSource1" Height="16px" 
                    style="text-align: left; font-size: x-large" Width="941px">
                    <Fields>
                        <asp:DynamicField DataField="regid" HeaderText="regid" SortExpression="regid" 
                            ValidationGroup="Inherit" />
                        <asp:DynamicField DataField="password" HeaderText="password" 
                            SortExpression="password" />
                        <asp:DynamicField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:DynamicField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:DynamicField DataField="address" HeaderText="address" 
                            SortExpression="address" />
                        <asp:DynamicField DataField="contactno" HeaderText="contactno" 
                            SortExpression="contactno" />
                        <asp:DynamicField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:DynamicField DataField="age" HeaderText="age" SortExpression="age" />
                        <asp:DynamicField DataField="username" HeaderText="username" 
                            SortExpression="username" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                   
                    SelectCommand="SELECT * FROM [registrationform] WHERE ([username] = @username" UpdateCommand="update[registrationfor] set name=@name,email=@email,address=@address,contactno=@contactno,age=@age,password=@pawwsord WHERE regid=@regid">
                    <SelectParameters>
                    <asp:SessionParameter Name="username" SessionField="user" Type="String" />
                    </SelectParameters>
                    </asp:SqlDataSource>
                
            </td>
        </tr>
    </table>
</asp:Content>


