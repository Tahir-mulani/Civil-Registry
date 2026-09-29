<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Pancardapprove.aspx.cs" Inherits="Admin_Pancardapprove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card">
        <div class="form-header">
            <h2>Approve PAN Card Applications</h2>
            <p style="color: #64748b; margin-top: 4px;">Review pending PAN card applications and update approval status</p>
        </div>

        <div class="form-card" style="margin-bottom: 24px; background: #f8fafc; border: 1px solid #e2e8f0; padding: 20px;">
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label">Applicant ID:</label>
                    <asp:TextBox ID="txtpnappid" runat="server" CssClass="form-control" placeholder="Applicant ID"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Applicant Name:</label>
                    <div style="display: flex; gap: 8px; align-items: center;">
                        <asp:TextBox ID="txtpnappnm" runat="server" CssClass="form-control" placeholder="Applicant Name"></asp:TextBox>
                        <asp:Label ID="lblpanno" runat="server" style="font-weight: bold; color: #1d4ed8;"></asp:Label>
                    </div>
                </div>
            </div>

            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Change Status:</label>
                    <div style="display: flex; gap: 20px; padding: 8px 0;">
                        <asp:RadioButton ID="rdpnapprove" runat="server" GroupName="@f" 
                            Text=" Approve" oncheckedchanged="rdpnapprove_CheckedChanged" 
                            AutoPostBack="True" />
                        <asp:RadioButton ID="rdpndecline" runat="server" GroupName="@f" 
                            Text=" Decline" AutoPostBack="True" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="form-label">Reason for Decline:</label>
                    <asp:TextBox ID="txtpnreaofdec" runat="server" CssClass="form-control" placeholder="Specify decline reason"></asp:TextBox>
                </div>
                <div class="form-group" style="flex: 0 0 auto; margin-top: 24px;">
                    <asp:Button ID="btnpnup" runat="server" onclick="btnpnup_Click" 
                        Text="Update Status" CssClass="btn btn-primary" style="min-width: 140px;" />
                </div>
            </div>
        </div>

        <h3 style="color: #0f2942; margin-bottom: 12px;">Pending PAN Applications List</h3>
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged"
                CssClass="gridview">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="Select" />
                    <asp:BoundField DataField="panregid" HeaderText="ID" SortExpression="panregid" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="fname" HeaderText="Father Name" SortExpression="fname" />
                    <asp:BoundField DataField="dateofbirth" HeaderText="Date of Birth" SortExpression="dateofbirth" />
                    <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                    <asp:BoundField DataField="village" HeaderText="Village/City" SortExpression="village" />
                    <asp:BoundField DataField="district" HeaderText="District" SortExpression="district" />
                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                    <asp:BoundField DataField="mobileno" HeaderText="Mobile No" SortExpression="mobileno" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="regdate" HeaderText="Reg Date" SortExpression="regdate" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [PanCard] WHERE ([status] = @status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
