<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true"
    CodeFile="EditProfile.aspx.cs" Inherits="Customer_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        /* 🔹 Title Panel (Background Image Only Here) */
        .titlePanel
        {
            width: 600px;
            margin: 20px auto;
            padding: 10px;
            text-align: center;
            font-size: 26px;
            font-weight: bold;
            color: white;
            border-radius: 8px;
            background-size: cover;
            background-position: center;
            text-shadow: 2px 2px 5px black;
        }
        
        /* 🔹 DetailsView Styling */
        .detailsViewStyle
        {
            width: 600px;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0,0,0,0.2);
            border-collapse: collapse;
        }
        
        .detailsViewStyle td
        {
            padding: 10px;
            border-bottom: 1px solid #ddd;
        }
        
        .detailsViewStyle tr:nth-child(even)
        {
            background-color: #f2f2f2;
        }
        
        .detailsViewStyle td:first-child
        {
            font-weight: bold;
            width: 40%;
        }
        
        /* Input fields */
        .detailsViewStyle input
        {
            width: 95%;
            padding: 6px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!-- 🔹 Title with Background Image -->
    <asp:Panel ID="PanelTitle" runat="server" BackImageUrl="~/Image/indian-flag.jpg"
        CssClass="titlePanel">
        Edit Profile
    </asp:Panel>
    <!-- 🔹 DetailsView (Normal UI) -->
    <asp:DetailsView ID="DetailsView1" runat="server" CssClass="detailsViewStyle" AutoGenerateRows="False"
        DataSourceID="SqlDataSource2" DefaultMode="Edit">
        <Fields>
            <asp:BoundField DataField="regid" HeaderText="ID" ReadOnly="True" />
            <asp:BoundField DataField="name" HeaderText="Name" />
            <asp:BoundField DataField="email" HeaderText="Email" />
            <asp:BoundField DataField="address" HeaderText="Address" />
            <asp:BoundField DataField="contactno" HeaderText="Contact No" />
            <asp:BoundField DataField="gender" HeaderText="Gender" />
            <asp:BoundField DataField="age" HeaderText="Age" />
        </Fields>
    </asp:DetailsView>
    <!-- 🔹 SqlDataSource (No Change) -->
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT regid, name, email, address, contactno, gender, age 
                       FROM registrationform 
                       WHERE regid = @regid">
        <SelectParameters>
            <asp:SessionParameter Name="regid" SessionField="regid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
