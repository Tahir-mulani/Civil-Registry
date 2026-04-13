<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true"
    CodeFile="EditProfile.aspx.cs" Inherits="Customer_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
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
        .editTitle
        {
            font-size: 22px;
            font-weight: bold;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <table align="center" class="style2">
        <tr>
            <td class="editTitle">
                Edit Profile<hr />
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="regid"
                    DataSourceID="SqlDataSource1" DefaultMode="Edit" Width="600px" Font-Size="Medium">
                    <Fields>
                        <asp:BoundField DataField="regid" HeaderText="ID" ReadOnly="True" />
                        <asp:BoundField DataField="name" HeaderText="Name" />
                        <asp:BoundField DataField="email" HeaderText="Email" />
                        <asp:BoundField DataField="address" HeaderText="Address" />
                        <asp:BoundField DataField="contactno" HeaderText="Contact No" />
                        <asp:BoundField DataField="gender" HeaderText="Gender" />
                        <asp:BoundField DataField="age" HeaderText="Age" />
                        <asp:BoundField DataField="username" HeaderText="Username" ReadOnly="True" />
                        <asp:CommandField ShowEditButton="True"/>
                    </Fields>
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT * FROM registrationform WHERE username=@username" UpdateCommand="UPDATE registrationform 
                   SET name=@name, email=@email, address=@address, 
                       contactno=@contactno, age=@age, password=@password 
                   WHERE regid=@regid">
                    <SelectParameters>
                        <asp:SessionParameter Name="username" SessionField="user" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="address" Type="String" />
                        <asp:Parameter Name="contactno" Type="String" />
                        <asp:Parameter Name="age" Type="Int32" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="regid" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
