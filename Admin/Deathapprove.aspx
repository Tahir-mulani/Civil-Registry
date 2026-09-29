<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Deathapprove.aspx.cs" Inherits="Admin_Deathapprove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card">
        <div class="form-header">
            <h2>Approve Death Certificate Applications</h2>
            <p style="color: #64748b; margin-top: 4px;">Review pending death registration applications and update certificate status</p>
        </div>

        <div class="form-card" style="margin-bottom: 24px; background: #f8fafc; border: 1px solid #e2e8f0; padding: 20px;">
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label">Applicant ID:</label>
                    <asp:TextBox ID="txtdtappid" runat="server" CssClass="form-control" placeholder="Applicant ID"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Applicant Name:</label>
                    <asp:TextBox ID="txtdtappnm" runat="server" CssClass="form-control" placeholder="Applicant Name"></asp:TextBox>
                </div>
            </div>

            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Change Status:</label>
                    <div style="display: flex; gap: 20px; padding: 8px 0;">
                        <asp:RadioButton ID="rddtapprove" runat="server" Text=" Approve" GroupName="ed" 
                            oncheckedchanged="rddtapprove_CheckedChanged" AutoPostBack="True" />
                        <asp:RadioButton ID="rddtdecline" runat="server" Text=" Decline" GroupName="ed" 
                            AutoPostBack="True" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="form-label">Reason for Decline:</label>
                    <asp:TextBox ID="txtdtreaofdec" runat="server" CssClass="form-control" placeholder="Specify decline reason"></asp:TextBox>
                </div>
                <div class="form-group" style="flex: 0 0 auto; margin-top: 24px;">
                    <asp:Button ID="btndtup" runat="server" onclick="btndtup_Click" 
                        Text="Update Status" CssClass="btn btn-primary" style="min-width: 140px;" />
                </div>
            </div>
        </div>

        <h3 style="color: #0f2942; margin-bottom: 12px;">Pending Death Applications List</h3>
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged"
                CssClass="gridview">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="Select" />
                    <asp:BoundField DataField="deathregid" HeaderText="ID" SortExpression="deathregid" />
                    <asp:BoundField DataField="name" HeaderText="Deceased Name" SortExpression="name" />
                    <asp:BoundField DataField="dateofbirth" HeaderText="Date of Birth" SortExpression="dateofbirth" />
                    <asp:BoundField DataField="deathdate" HeaderText="Death Date" SortExpression="deathdate" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                    <asp:BoundField DataField="placeofdeath" HeaderText="Place of Death" SortExpression="placeofdeath" />
                    <asp:BoundField DataField="fathername" HeaderText="Father Name" SortExpression="fathername" />
                    <asp:BoundField DataField="mothername" HeaderText="Mother Name" SortExpression="mothername" />
                    <asp:BoundField DataField="informername" HeaderText="Informer Name" SortExpression="informername" />
                    <asp:BoundField DataField="informeraddress" HeaderText="Informer Address" SortExpression="informeraddress" />
                    <asp:BoundField DataField="deathreason" HeaderText="Cause of Death" SortExpression="deathreason" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Deathcertificate]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
