<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Deathapprove.aspx.cs" Inherits="Admin_Deathapprove" %>

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
            font-weight: normal;
        }
        .style16
        {
            width: 90%;
            font-family: "Microsoft JhengHei UI";
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style16">
        <tr>
            <td class="style14" colspan="4">
                APPROVE DEATH APPLICATION<hr />
            </td>
        </tr>
        <tr>
            <td class="style15">
                Applicant Id:</td>
            <td>
                <asp:TextBox ID="txtdtappid" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
            <td class="style15">
                Applicant Name:</td>
            <td>
                <asp:TextBox ID="txtdtappnm" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style15">
                change Status:</td>
            <td class="style15">
                <asp:RadioButton ID="rddtapprove" runat="server" Text="Approve" 
                    GroupName="ed" oncheckedchanged="rddtapprove_CheckedChanged" 
                    AutoPostBack="True" />
                <asp:RadioButton ID="rddtdecline" runat="server" Text="Decline" 
                    GroupName="ed" AutoPostBack="True" />
            </td>
            <td class="style15">
                Reason of Decline:</td>
            <td>
                <asp:TextBox ID="txtdtreaofdec" runat="server" Height="30px" Width="180px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndtup" runat="server" Height="30px" onclick="btndtup_Click" 
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
                        <asp:BoundField DataField="deathregid" HeaderText="deathregid" 
                            SortExpression="deathregid" />
                        <asp:BoundField DataField="dateofreg" HeaderText="dateofreg" 
                            SortExpression="dateofreg" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="dateofbirth" HeaderText="dateofbirth" 
                            SortExpression="dateofbirth" />
                        <asp:BoundField DataField="placeofdeath" HeaderText="placeofdeath" 
                            SortExpression="placeofdeath" />
                        <asp:BoundField DataField="fathername" HeaderText="fathername" 
                            SortExpression="fathername" />
                        <asp:BoundField DataField="mothername" HeaderText="mothername" 
                            SortExpression="mothername" />
                        <asp:BoundField DataField="permanentaddressofdea" 
                            HeaderText="permanentaddressofdea" SortExpression="permanentaddressofdea" />
                        <asp:BoundField DataField="informername" HeaderText="informername" 
                            SortExpression="informername" />
                        <asp:BoundField DataField="informeraddress" HeaderText="informeraddress" 
                            SortExpression="informeraddress" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                        <asp:BoundField DataField="deathdate" HeaderText="deathdate" 
                            SortExpression="deathdate" />
                        <asp:BoundField DataField="medicalservicetakenbefore" 
                            HeaderText="medicalservicetakenbefore" 
                            SortExpression="medicalservicetakenbefore" />
                        <asp:BoundField DataField="deathpersonoccupation" 
                            HeaderText="deathpersonoccupation" SortExpression="deathpersonoccupation" />
                        <asp:BoundField DataField="deathreason" HeaderText="deathreason" 
                            SortExpression="deathreason" />
                        <asp:BoundField DataField="personaddiction" HeaderText="personaddiction" 
                            SortExpression="personaddiction" />
                        <asp:BoundField DataField="document" HeaderText="document" 
                            SortExpression="document" />
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
                    SelectCommand="SELECT * FROM [Deathcertificate]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

