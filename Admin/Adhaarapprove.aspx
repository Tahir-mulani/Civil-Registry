<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Adhaarapprove.aspx.cs" Inherits="Admin_Adhaarapprove" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card">
        <div class="form-header">
            <h2>Approve Aadhaar Card Applications</h2>
            <p style="color: #64748b; margin-top: 4px;">Review pending Aadhaar registration requests and update approval status</p>
        </div>

        <div class="form-card" style="margin-bottom: 24px; background: #f8fafc; border: 1px solid #e2e8f0; padding: 20px;">
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label">Applicant ID:</label>
                    <asp:TextBox ID="txtappid" runat="server" CssClass="form-control" placeholder="Applicant ID"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="form-label">Applicant Name:</label>
                    <div style="display: flex; gap: 8px; align-items: center;">
                        <asp:TextBox ID="txtappnm" runat="server" CssClass="form-control" placeholder="Applicant Name"></asp:TextBox>
                        <asp:Label ID="lblaadhar" runat="server" style="font-weight: bold; color: #1d4ed8;"></asp:Label>
                    </div>
                </div>
            </div>

            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Change Status:</label>
                    <div style="display: flex; gap: 20px; padding: 8px 0;">
                        <asp:RadioButton ID="rdadapp" runat="server" GroupName="@b" Text=" Approve" 
                            oncheckedchanged="rdadapp_CheckedChanged" AutoPostBack="True" />
                        <asp:RadioButton ID="rdaddec" runat="server" GroupName="@b" Text=" Decline" 
                            oncheckedchanged="rdaddec_CheckedChanged" AutoPostBack="True" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="form-label">Reason for Decline:</label>
                    <asp:TextBox ID="txtadreaofdec" runat="server" CssClass="form-control" placeholder="Specify decline reason"></asp:TextBox>
                </div>
                <div class="form-group" style="flex: 0 0 auto; margin-top: 24px;">
                    <asp:Button ID="btnadup" runat="server" onclick="btnadup_Click" 
                        Text="Update Status" CssClass="btn btn-primary" style="min-width: 140px;" />
                </div>
            </div>
        </div>

        <h3 style="color: #0f2942; margin-bottom: 12px;">Pending Applications List</h3>
        <div class="table-responsive">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" 
                onselectedindexchanged="GridView1_SelectedIndexChanged1" 
                CssClass="gridview">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" SelectText="Select" />
                    <asp:BoundField DataField="adharregid" HeaderText="ID" SortExpression="adharregid" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="image" HeaderText="Image" SortExpression="image" />
                    <asp:BoundField DataField="mobileno" HeaderText="Mobile No" SortExpression="mobileno" />
                    <asp:BoundField DataField="dateofbirth" HeaderText="Date of Birth" SortExpression="dateofbirth" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" SortExpression="gender" />
                    <asp:BoundField DataField="emailid" HeaderText="Email ID" SortExpression="emailid" />
                    <asp:BoundField DataField="age" HeaderText="Age" SortExpression="age" />
                    <asp:BoundField DataField="house_buildingno" HeaderText="House No" SortExpression="house_buildingno" />
                    <asp:BoundField DataField="street_lane" HeaderText="Street/Lane" SortExpression="street_lane" />
                    <asp:BoundField DataField="landmark" HeaderText="Landmark" SortExpression="landmark" />
                    <asp:BoundField DataField="arealocality" HeaderText="Locality" SortExpression="arealocality" />
                    <asp:BoundField DataField="village_city" HeaderText="City" SortExpression="village_city" />
                    <asp:BoundField DataField="postoffice" HeaderText="Post Office" SortExpression="postoffice" />
                    <asp:BoundField DataField="district" HeaderText="District" SortExpression="district" />
                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                    <asp:BoundField DataField="gname" HeaderText="Guardian Name" SortExpression="gname" />
                    <asp:BoundField DataField="gaharno" HeaderText="Guardian Aadhaar" SortExpression="gaharno" />
                    <asp:BoundField DataField="sign" HeaderText="Signature" SortExpression="sign" />
                    <asp:BoundField DataField="document" HeaderText="Document" SortExpression="document" />
                    <asp:BoundField DataField="doclist" HeaderText="Doc List" SortExpression="doclist" />
                    <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [AadharCard] WHERE ([status] = @status)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
