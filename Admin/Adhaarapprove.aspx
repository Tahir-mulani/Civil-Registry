<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Adhaarapprove.aspx.cs" Inherits="Admin_Adhaarapprove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 100%;
        }
        .style14
        {
            font-size: x-large;
            height: 55px;
        }
        .style15
        {
            height: 29px;
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
            height: 29px;
            font-weight: normal;
        }
        .style20
        {
            height: 29px;
            font-weight: normal;
            font-family: "Times New Roman", Times, serif;
        }
        .style21
        {
            width: 100%;
            font-family: "Microsoft JhengHei UI";
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style21">
        <tr>
            <td class="style14" colspan="4">
                APPROVE ADHAAR CARD APPLICATION<hr />
            </td>
        </tr>
        <tr>
            <td class="style18">
                Applicant Id:</td>
            <td>
                <asp:TextBox ID="txtappid" runat="server" Height="30px" Width="180px" 
                    CssClass="style16"></asp:TextBox>
            </td>
            <td class="style18">
                Applicant Name:</td>
            <td>
                <asp:TextBox ID="txtappnm" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblaadhar" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style19">
                <span class="style16">Change Status:</td>
            <td class="style20">
                <asp:RadioButton ID="rdadapp" runat="server" GroupName="@b" Text="Approve" 
                    oncheckedchanged="rdadapp_CheckedChanged" AutoPostBack="True" />
                <asp:RadioButton ID="rdaddec" runat="server" GroupName="@b" Text="Decline" 
                    oncheckedchanged="rdaddec_CheckedChanged" AutoPostBack="True" />
            </td>
            <td class="style20">
                Reason of Decline:</span></td>
            <td class="style15">
                <asp:TextBox ID="txtadreaofdec" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Button ID="btnadup" runat="server" Height="30px" onclick="btnadup_Click" 
                    style="color: #FFFFFF; background-color: #000066" Text="Update" Width="180px" />
            </td>
        </tr>
        <tr>
            <td class="style15" colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged1" 
                    BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                    CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="adharregid" HeaderText="adharregid" 
                            SortExpression="adharregid" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
                        <asp:BoundField DataField="mobileno" HeaderText="mobileno" 
                            SortExpression="mobileno" />
                        <asp:BoundField DataField="dateofbirth" HeaderText="dateofbirth" 
                            SortExpression="dateofbirth" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="emailid" HeaderText="emailid" 
                            SortExpression="emailid" />
                        <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                        <asp:BoundField DataField="house_buildingno" HeaderText="house_buildingno" 
                            SortExpression="house_buildingno" />
                        <asp:BoundField DataField="street_lane" HeaderText="street_lane" 
                            SortExpression="street_lane" />
                        <asp:BoundField DataField="landmark" HeaderText="landmark" 
                            SortExpression="landmark" />
                        <asp:BoundField DataField="arealocality" HeaderText="arealocality" 
                            SortExpression="arealocality" />
                        <asp:BoundField DataField="village_city" HeaderText="village_city" 
                            SortExpression="village_city" />
                        <asp:BoundField DataField="postoffice" HeaderText="postoffice" 
                            SortExpression="postoffice" />
                        <asp:BoundField DataField="district" HeaderText="district" 
                            SortExpression="district" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="gname" HeaderText="gname" SortExpression="gname" />
                        <asp:BoundField DataField="gaharno" HeaderText="gaharno" 
                            SortExpression="gaharno" />
                        <asp:BoundField DataField="sign" HeaderText="sign" SortExpression="sign" />
                        <asp:BoundField DataField="document" HeaderText="document" 
                            SortExpression="document" />
                        <asp:BoundField DataField="doclist" HeaderText="doclist" 
                            SortExpression="doclist" />
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
                    SelectCommand="SELECT * FROM [AadharCard] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

