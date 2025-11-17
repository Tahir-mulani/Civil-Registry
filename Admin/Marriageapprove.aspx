<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Marriageapprove.aspx.cs" Inherits="Admin_Marriage_approve" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 90%;
        }
        .style15
        {
            font-size: x-large;
            height: 42px;
        }
        .style16
        {
            font-family: "Times New Roman", Times, serif;
        }
        .style18
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: normal;
        }
        .style19
        {
            font-weight: normal;
        }
        .style20
        {
            font-family: "Times New Roman", Times, serif;
            font-weight: normal;
            height: 34px;
        }
        .style21
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style14">
        <tr>
            <td class="style15" colspan="4">
                APPROVE MARRIAGE APPLICATION<hr />
            </td>
        </tr>
        <tr>
            <td class="style20">
                Applicant Id:</td>
            <td class="style21">
                <asp:TextBox ID="txtmarappid" runat="server" Height="30px" Width="180px" 
                    CssClass="style16"></asp:TextBox>
            </td>
            <td class="style20">
                Applicant Name:</td>
            <td class="style21">
                <asp:TextBox ID="txtmrappnm" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <span class="style16"><span class="style19">Change Status:</span></td>
            <td class="style18">
                <asp:RadioButton ID="rdmrapprove" runat="server" Text="Approve" 
                    oncheckedchanged="rdmrapprove_CheckedChanged" AutoPostBack="True" />
                <asp:RadioButton ID="rdmrdecline" runat="server" Text="Decline" 
                    AutoPostBack="True" />
            </td>
            <td class="style16">
                <span class="style19">Reason of Decline:</span></span></td>
            <td>
                <asp:TextBox ID="txtmrreadec" runat="server" Height="30px" Width="180px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnmarrup" runat="server" Height="30px" 
                    onclick="btnmarrup_Click" style="color: #FFFFFF; background-color: #000066" 
                    Text="Update" Width="180px" />
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged1">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="marriageregid" HeaderText="marriageregid" 
                            SortExpression="marriageregid" />
                        <asp:BoundField DataField="regdate" HeaderText="regdate" 
                            SortExpression="regdate" />
                        <asp:BoundField DataField="plcofmrg" HeaderText="plcofmrg" 
                            SortExpression="plcofmrg" />
                        <asp:BoundField DataField="mrgdate" HeaderText="mrgdate" 
                            SortExpression="mrgdate" />
                        <asp:BoundField DataField="hubname" HeaderText="hubname" 
                            SortExpression="hubname" />
                        <asp:BoundField DataField="wifename" HeaderText="wifename" 
                            SortExpression="wifename" />
                        <asp:BoundField DataField="hubaddress" HeaderText="hubaddress" 
                            SortExpression="hubaddress" />
                        <asp:BoundField DataField="hubreligion" HeaderText="hubreligion" 
                            SortExpression="hubreligion" />
                        <asp:BoundField DataField="hubage" HeaderText="hubage" 
                            SortExpression="hubage" />
                        <asp:BoundField DataField="hubimg" HeaderText="hubimg" 
                            SortExpression="hubimg" />
                        <asp:BoundField DataField="wifeaddress" HeaderText="wifeaddress" 
                            SortExpression="wifeaddress" />
                        <asp:BoundField DataField="wifereligion" HeaderText="wifereligion" 
                            SortExpression="wifereligion" />
                        <asp:BoundField DataField="hubfathername" HeaderText="hubfathername" 
                            SortExpression="hubfathername" />
                        <asp:BoundField DataField="wifefathername" HeaderText="wifefathername" 
                            SortExpression="wifefathername" />
                        <asp:BoundField DataField="wifeimg" HeaderText="wifeimg" 
                            SortExpression="wifeimg" />
                        <asp:BoundField DataField="hubadhar" HeaderText="hubadhar" 
                            SortExpression="hubadhar" />
                        <asp:BoundField DataField="wifeadhar" HeaderText="wifeadhar" 
                            SortExpression="wifeadhar" />
                        <asp:BoundField DataField="witnessname1" HeaderText="witnessname1" 
                            SortExpression="witnessname1" />
                        <asp:BoundField DataField="witness1address" HeaderText="witness1address" 
                            SortExpression="witness1address" />
                        <asp:BoundField DataField="witness1img" HeaderText="witness1img" 
                            SortExpression="witness1img" />
                        <asp:BoundField DataField="witness2name" HeaderText="witness2name" 
                            SortExpression="witness2name" />
                        <asp:BoundField DataField="witness2address" HeaderText="witness2address" 
                            SortExpression="witness2address" />
                        <asp:BoundField DataField="witness2img" HeaderText="witness2img" 
                            SortExpression="witness2img" />
                        <asp:BoundField DataField="witness1adhar" HeaderText="witness1adhar" 
                            SortExpression="witness1adhar" />
                        <asp:BoundField DataField="witness2adhar" HeaderText="witness2adhar" 
                            SortExpression="witness2adhar" />
                        <asp:BoundField DataField="wifeage" HeaderText="wifeage" 
                            SortExpression="wifeage" />
                        <asp:BoundField DataField="stamp" HeaderText="stamp" SortExpression="stamp" />
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
                    SelectCommand="SELECT * FROM [Marriagecertificate] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

