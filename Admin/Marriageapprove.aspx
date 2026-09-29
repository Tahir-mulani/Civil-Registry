<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Marriageapprove.aspx.cs" Inherits="Admin_Marriage_approve" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card">
        <div class="form-header">
            <h2>Approve Marriage Certificate Applications</h2>
            <p style="color: #64748b; margin-top: 4px;">Review pending marriage registration applications and issue approval status</p>
        </div>

        <div class="form-card" style="margin-bottom: 24px; background: #f8fafc; border: 1px solid #e2e8f0; padding: 20px;">
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label">Applicant ID:</label>
                    <asp:TextBox ID="txtmarappid" runat="server" CssClass="form-control" placeholder="Applicant ID"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Applicant Name:</label>
                    <asp:TextBox ID="txtmrappnm" runat="server" CssClass="form-control" placeholder="Applicant Name"></asp:TextBox>
                </div>
            </div>

            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Change Status:</label>
                    <div style="display: flex; gap: 20px; padding: 8px 0;">
                        <asp:RadioButton ID="rdmrapprove" runat="server" Text=" Approve" 
                            oncheckedchanged="rdmrapprove_CheckedChanged" AutoPostBack="True" />
                        <asp:RadioButton ID="rdmrdecline" runat="server" Text=" Decline" 
                            AutoPostBack="True" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="form-label">Reason for Decline:</label>
                    <asp:TextBox ID="txtmrreadec" runat="server" CssClass="form-control" placeholder="Specify decline reason"></asp:TextBox>
                </div>
                <div class="form-group" style="flex: 0 0 auto; margin-top: 24px;">
                    <asp:Button ID="btnmarrup" runat="server" onclick="btnmarrup_Click" 
                        Text="Update Status" CssClass="btn btn-primary" style="min-width: 140px;" />
                </div>
            </div>
        </div>

        <h3 style="color: #0f2942; margin-bottom: 12px;">Pending Marriage Applications List</h3>
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged1"
                CssClass="gridview">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="Select" />
                    <asp:BoundField DataField="marriageregid" HeaderText="ID" SortExpression="marriageregid" />
                    <asp:BoundField DataField="hubname" HeaderText="Husband Name" SortExpression="hubname" />
                    <asp:BoundField DataField="wifename" HeaderText="Wife Name" SortExpression="wifename" />
                    <asp:BoundField DataField="mrgdate" HeaderText="Marriage Date" SortExpression="mrgdate" />
                    <asp:BoundField DataField="plcofmrg" HeaderText="Place of Marriage" SortExpression="plcofmrg" />
                    <asp:BoundField DataField="hubaddress" HeaderText="Husband Address" SortExpression="hubaddress" />
                    <asp:BoundField DataField="wifeaddress" HeaderText="Wife Address" SortExpression="wifeaddress" />
                    <asp:BoundField DataField="hubreligion" HeaderText="Husband Religion" SortExpression="hubreligion" />
                    <asp:BoundField DataField="wifereligion" HeaderText="Wife Religion" SortExpression="wifereligion" />
                    <asp:BoundField DataField="witnessname1" HeaderText="Witness 1" SortExpression="witnessname1" />
                    <asp:BoundField DataField="witness2name" HeaderText="Witness 2" SortExpression="witness2name" />
                    <asp:BoundField DataField="regdate" HeaderText="Reg Date" SortExpression="regdate" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Marriagecertificate] WHERE ([status] = @status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
