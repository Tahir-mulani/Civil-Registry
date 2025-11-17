<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="VoterIdapprove.aspx.cs" Inherits="Admin_VoterIdapprove" %>

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
            font-family: "Times New Roman", Times, serif;
        }
        .style16
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: normal;
        }
        .style17
        {
            font-weight: normal;
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
            <td colspan="4" class="style14">
                APPROVE VOTER APPLICATION<hr />
            </td>
        </tr>
        <tr>
            <td class="style16">
                Applicant Id:</td>
            <td>
                <asp:TextBox ID="txtvtappid" runat="server" Height="30px" Width="180px" 
                    CssClass="style15"></asp:TextBox>
            </td>
            <td class="style16">
                Applicant Name:</td>
            <td>
                <asp:TextBox ID="txtvtappnm" runat="server" Height="30px" Width="180px"></asp:TextBox>
            &nbsp;&nbsp;
                <asp:Label ID="lblvoteridno" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <span class="style15"><span class="style17">Change Status:</span></td>
            <td class="style16">
                <asp:RadioButton ID="rdvtapprove" runat="server" Text="Approve" 
                    oncheckedchanged="rdvtapprove_CheckedChanged" AutoPostBack="True" 
                    GroupName="@v" />
                <asp:RadioButton ID="rdvtdecline" runat="server" Text="Decline" 
                    AutoPostBack="True" GroupName="@v" />
            </td>
            <td class="style15">
                <span class="style17">Reason of Decline:</span></span></td>
            <td>
                <asp:TextBox ID="txtvtreaofdec" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Button ID="btnvtup" runat="server" Height="30px" 
                    style="color: #FFFFFF; background-color: #000066" Text="Update" 
                    Width="180px" onclick="btnvtup_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="voterregid" HeaderText="voterregid" 
                            SortExpression="voterregid" />
                        <asp:BoundField DataField="regdate" HeaderText="regdate" 
                            SortExpression="regdate" />
                        <asp:BoundField DataField="nmofparliment" HeaderText="nmofparliment" 
                            SortExpression="nmofparliment" />
                        <asp:BoundField DataField="noofparliment" HeaderText="noofparliment" 
                            SortExpression="noofparliment" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                        <asp:BoundField DataField="mobno" HeaderText="mobno" SortExpression="mobno" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="adharno" HeaderText="adharno" 
                            SortExpression="adharno" />
                        <asp:BoundField DataField="religion" HeaderText="religion" 
                            SortExpression="religion" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="dateofbirth" HeaderText="dateofbirth" 
                            SortExpression="dateofbirth" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                        <asp:BoundField DataField="disability" HeaderText="disability" 
                            SortExpression="disability" />
                        <asp:BoundField DataField="disabilitytyper" HeaderText="disabilitytyper" 
                            SortExpression="disabilitytyper" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="district" HeaderText="district" 
                            SortExpression="district" />
                        <asp:BoundField DataField="taluka" HeaderText="taluka" 
                            SortExpression="taluka" />
                        <asp:BoundField DataField="village" HeaderText="village" 
                            SortExpression="village" />
                        <asp:BoundField DataField="pincode" HeaderText="pincode" 
                            SortExpression="pincode" />
                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
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
                    SelectCommand="SELECT * FROM [VoterId] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

