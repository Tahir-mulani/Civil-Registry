<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true"
    CodeFile="EditProfile.aspx.cs" Inherits="Customer_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="form-card" style="max-width: 680px; margin: 30px auto;">
        <asp:Panel ID="PanelTitle" runat="server" CssClass="form-header" style="background: linear-gradient(135deg, #0f2942 0%, #1b365d 100%); color: #ffffff; padding: 20px; border-radius: 8px; margin-bottom: 24px;">
            <h2 style="color: #ffffff; margin: 0;">Edit Account Profile</h2>
            <p style="color: #cbd5e1; margin: 4px 0 0 0; font-size: 0.9rem;">Update your personal contact details and registration information</p>
        </asp:Panel>

        <div class="table-responsive">
            <asp:DetailsView ID="DetailsView1" runat="server" CssClass="gridview" AutoGenerateRows="False"
                DataSourceID="SqlDataSource2" DefaultMode="Edit" style="width: 100%;">
                <Fields>
                    <asp:BoundField DataField="regid" HeaderText="Registration ID" ReadOnly="True" />
                    <asp:BoundField DataField="name" HeaderText="Full Name" />
                    <asp:BoundField DataField="email" HeaderText="Email Address" />
                    <asp:BoundField DataField="address" HeaderText="Address" />
                    <asp:BoundField DataField="contactno" HeaderText="Contact Number" />
                    <asp:BoundField DataField="gender" HeaderText="Gender" />
                    <asp:BoundField DataField="age" HeaderText="Age" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT regid, name, email, address, contactno, gender, age 
                               FROM registrationform 
                               WHERE regid = @regid">
                <SelectParameters>
                    <asp:SessionParameter Name="regid" SessionField="regid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
