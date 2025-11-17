<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Birthapprove.aspx.cs" Inherits="Admin_Birthapprove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 90%;
        }
        .style14
        {
            font-size: x-large;
            height: 42px;
        }
        .style15
        {
            height: 211px;
        }
        .style17
        {
            font-weight: normal;
            font-family: "Times New Roman", Times, serif;
        }
        .style18
        {
            font-weight: normal;
        }
        .style19
        {
            width: 90%;
            font-family: "Microsoft JhengHei UI";
            color: #000000;
        }
        .style20
        {
            font-weight: normal;
            font-family: "Times New Roman", Times, serif;
            height: 34px;
        }
        .style21
        {
            height: 34px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style19">
        <tr>
            <td class="style14" colspan="4">
                APPROVE BIRTH APPLICATION<hr />
            </td>
        </tr>
        <tr>
            <td class="style20">
                Applicant Id:</td>
            <td class="style21">
                <asp:TextBox ID="txtbrappid" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
            <td class="style20">
                Applicant Name:</td>
            <td class="style21">
                <asp:TextBox ID="txtbrappnm" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Change Status:</td>
            <td class="style18">
                <asp:RadioButton ID="rdbrapp" runat="server" Text="Approve" GroupName="@z" 
                    style="font-family: 'Times New Roman', Times, serif" 
                    oncheckedchanged="rdbrapp_CheckedChanged" AutoPostBack="True" />
                <asp:RadioButton ID="rdbrdec" runat="server" Text="Decline" GroupName="@z" 
                    style="font-family: 'Times New Roman', Times, serif" AutoPostBack="True" />
            </td>
            <td class="style17">
                Reason of Decline:</td>
            <td>
                <asp:TextBox ID="txtreaofdec" runat="server" Height="30px" Width="180px"></asp:TextBox>
                <asp:Button ID="btnup" runat="server" Height="30px" onclick="btnadup_Click" 
                    style="color: #FFFFFF; background-color: #000066" Text="Update" Width="180px" />
            </td>
        </tr>
        <tr>
            <td class="style15" colspan="4">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged1">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="birthregid" HeaderText="birthregid" 
                            SortExpression="birthregid" />
                        <asp:BoundField DataField="fathername" HeaderText="fathername" 
                            SortExpression="fathername" />
                        <asp:BoundField DataField="informername" HeaderText="informername" 
                            SortExpression="informername" />
                        <asp:BoundField DataField="birthdate" HeaderText="birthdate" 
                            SortExpression="birthdate" />
                        <asp:BoundField DataField="fatherqualification" 
                            HeaderText="fatherqualification" SortExpression="fatherqualification" />
                        <asp:BoundField DataField="informeraddress" HeaderText="informeraddress" 
                            SortExpression="informeraddress" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="mothername" HeaderText="mothername" 
                            SortExpression="mothername" />
                        <asp:BoundField DataField="dateofreg" HeaderText="dateofreg" 
                            SortExpression="dateofreg" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="motherqualification" 
                            HeaderText="motherqualification" SortExpression="motherqualification" />
                        <asp:BoundField DataField="permanentaddress" HeaderText="permanentaddress" 
                            SortExpression="permanentaddress" />
                        <asp:BoundField DataField="placeofbirth" HeaderText="placeofbirth" 
                            SortExpression="placeofbirth" />
                        <asp:BoundField DataField="deliverytype" HeaderText="deliverytype" 
                            SortExpression="deliverytype" />
                        <asp:BoundField DataField="religion" HeaderText="religion" 
                            SortExpression="religion" />
                        <asp:BoundField DataField="village" HeaderText="village" 
                            SortExpression="village" />
                        <asp:BoundField DataField="taluka" HeaderText="taluka" 
                            SortExpression="taluka" />
                        <asp:BoundField DataField="district" HeaderText="district" 
                            SortExpression="district" />
                        <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                        <asp:BoundField DataField="fatheroccupation" HeaderText="fatheroccupation" 
                            SortExpression="fatheroccupation" />
                        <asp:BoundField DataField="ageofmotherwhenbabyborn" 
                            HeaderText="ageofmotherwhenbabyborn" SortExpression="ageofmotherwhenbabyborn" />
                        <asp:BoundField DataField="pregnancyperiodweek" 
                            HeaderText="pregnancyperiodweek" SortExpression="pregnancyperiodweek" />
                        <asp:BoundField DataField="noofchildrensborninthe" 
                            HeaderText="noofchildrensborninthe" SortExpression="noofchildrensborninthe" />
                        <asp:BoundField DataField="babyweightatbirth" HeaderText="babyweightatbirth" 
                            SortExpression="babyweightatbirth" />
                        <asp:BoundField DataField="document" HeaderText="document" 
                            SortExpression="document" />
                        <asp:BoundField DataField="birthcard" HeaderText="birthcard" 
                            SortExpression="birthcard" />
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
                    SelectCommand="SELECT * FROM [birthcertificate] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

