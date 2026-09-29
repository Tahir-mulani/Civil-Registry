<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Birthapprove.aspx.cs" Inherits="Admin_Birthapprove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card">
        <div class="form-header">
            <h2>Approve Birth Certificate Applications</h2>
            <p style="color: #64748b; margin-top: 4px;">Review pending birth registration records and issue approvals</p>
        </div>

        <div class="form-card" style="margin-bottom: 24px; background: #f8fafc; border: 1px solid #e2e8f0; padding: 20px;">
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label">Applicant ID:</label>
                    <asp:TextBox ID="txtbrappid" runat="server" CssClass="form-control" placeholder="Applicant ID"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Applicant Name:</label>
                    <asp:TextBox ID="txtbrappnm" runat="server" CssClass="form-control" placeholder="Applicant Name"></asp:TextBox>
                </div>
            </div>

            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Change Status:</label>
                    <div style="display: flex; gap: 20px; padding: 8px 0;">
                        <asp:RadioButton ID="rdbrapp" runat="server" Text=" Approve" GroupName="@z" 
                            oncheckedchanged="rdbrapp_CheckedChanged" AutoPostBack="True" />
                        <asp:RadioButton ID="rdbrdec" runat="server" Text=" Decline" GroupName="@z" 
                            AutoPostBack="True" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="form-label">Reason for Decline:</label>
                    <asp:TextBox ID="txtreaofdec" runat="server" CssClass="form-control" placeholder="Specify decline reason"></asp:TextBox>
                </div>
                <div class="form-group" style="flex: 0 0 auto; margin-top: 24px;">
                    <asp:Button ID="btnup" runat="server" onclick="btnadup_Click" 
                        Text="Update Status" CssClass="btn btn-primary" style="min-width: 140px;" />
                </div>
            </div>
        </div>

        <h3 style="color: #0f2942; margin-bottom: 12px;">Pending Birth Applications</h3>
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged1"
                CssClass="gridview">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="Select" />
                    <asp:BoundField DataField="birthregid" HeaderText="ID" SortExpression="birthregid" />
                    <asp:BoundField DataField="name" HeaderText="Child Name" SortExpression="name" />
                    <asp:BoundField DataField="fathername" HeaderText="Father Name" SortExpression="fathername" />
                    <asp:BoundField DataField="mothername" HeaderText="Mother Name" SortExpression="mothername" />
                    <asp:BoundField DataField="birthdate" HeaderText="Birth Date" SortExpression="birthdate" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                    <asp:BoundField DataField="placeofbirth" HeaderText="Place of Birth" SortExpression="placeofbirth" />
                    <asp:BoundField DataField="informername" HeaderText="Informer Name" SortExpression="informername" />
                    <asp:BoundField DataField="informeraddress" HeaderText="Informer Address" SortExpression="informeraddress" />
                    <asp:BoundField DataField="permanentaddress" HeaderText="Permanent Address" SortExpression="permanentaddress" />
                    <asp:BoundField DataField="dateofreg" HeaderText="Date of Reg" SortExpression="dateofreg" />
                    <asp:BoundField DataField="religion" HeaderText="Religion" SortExpression="religion" />
                    <asp:BoundField DataField="district" HeaderText="District" SortExpression="district" />
                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [birthcertificate] WHERE ([status] = @status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
