<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Pancardapprove.aspx.cs" Inherits="Admin_Pancardapprove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 90%;
        }
        .style14
        {
            font-size: x-large;
        }
        .style15
        {
            height: 34px;
        }
        .style16
        {
            font-weight: normal;
            font-family: "Times New Roman", Times, serif;
        }
        .style17
        {
            height: 34px;
            font-weight: normal;
            font-family: "Times New Roman", Times, serif;
        }
        .style18
        {
            width: 90%;
            font-family: "Microsoft JhengHei UI";
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style18">
        <tr>
            <td class="style14" colspan="4">
                APPROVE PAN APPLICATION<hr />
            </td>
        </tr>
        <tr>
            <td class="style17">
                Applicant Id:</td>
            <td class="style15">
                <asp:TextBox ID="txtpnappid" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
            <td class="style17">
                Applicant Name:</td>
            <td class="style15">
                <asp:TextBox ID="txtpnappnm" runat="server" Height="30px" Width="180px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblpanno" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16">
                Change Status:</td>
            <td class="style16">
                <asp:RadioButton ID="rdpnapprove" runat="server" GroupName="@f" 
                    Text="Approve" oncheckedchanged="rdpnapprove_CheckedChanged" 
                    AutoPostBack="True" />
                <asp:RadioButton ID="rdpndecline" runat="server" GroupName="@f" 
                    Text="Decline" AutoPostBack="True" />
            </td>
            <td class="style16">
                Reason of Decline:</td>
            <td>
                <asp:TextBox ID="txtpnreaofdec" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Button ID="btnpnup" runat="server" Height="30px" onclick="btnpnup_Click" 
                    style="color: #FFFFFF; background-color: #000066" Text="Update" Width="180px" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="panregid" HeaderText="panregid" 
                            SortExpression="panregid" />
                        <asp:BoundField DataField="regdate" HeaderText="regdate" 
                            SortExpression="regdate" />
                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                        <asp:BoundField DataField="sign" HeaderText="sign" SortExpression="sign" />
                        <asp:BoundField DataField="place" HeaderText="place" SortExpression="place" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                        <asp:BoundField DataField="dateofbirth" HeaderText="dateofbirth" 
                            SortExpression="dateofbirth" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="village" HeaderText="village" 
                            SortExpression="village" />
                        <asp:BoundField DataField="taluka" HeaderText="taluka" 
                            SortExpression="taluka" />
                        <asp:BoundField DataField="district" HeaderText="district" 
                            SortExpression="district" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="pincode" HeaderText="pincode" 
                            SortExpression="pincode" />
                        <asp:BoundField DataField="countryname" HeaderText="countryname" 
                            SortExpression="countryname" />
                        <asp:BoundField DataField="mobileno" HeaderText="mobileno" 
                            SortExpression="mobileno" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="idprooflist" HeaderText="idprooflist" 
                            SortExpression="idprooflist" />
                        <asp:BoundField DataField="idproofdoc" HeaderText="idproofdoc" 
                            SortExpression="idproofdoc" />
                        <asp:BoundField DataField="addressprooflist" HeaderText="addressprooflist" 
                            SortExpression="addressprooflist" />
                        <asp:BoundField DataField="addressproofdoc" HeaderText="addressproofdoc" 
                            SortExpression="addressproofdoc" />
                        <asp:BoundField DataField="status" HeaderText="status" 
                            SortExpression="status" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [PanCard] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

