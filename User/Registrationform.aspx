<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Registrationform.aspx.cs" Inherits="User_Registrationform" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            text-align: center;
            font-size: large;
        }
        .style7
        {
            height: 34px;
        }
        .style8
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style2">
        <tr>
            <td class="style6" colspan="3">
                <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Image/indian-flag.jpg" 
                    style="color: #FFFFFF; text-align: left">
                    <div class="style8">
                        <strong>Registration Form</strong></div>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="txtregid" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtregid" ErrorMessage="ID must be enter" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Name:</td>
            <td class="style7">
                <asp:TextBox ID="txtname" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Email:</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="180px"  ></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Invalid Emailid" ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Address:</td>
            <td>
                <asp:TextBox ID="txtadd" runat="server" Height="69px" TextMode="MultiLine" 
                    Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtadd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Contact No:</td>
            <td class="style7">
                <asp:TextBox ID="txtcontact" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="txtcontact" ErrorMessage="Enter 10 digit Mobile number" 
                    ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Gender:</td>
            <td>
                <asp:RadioButton ID="rdmale" runat="server" Text="Male" GroupName="@p1" />
                <asp:RadioButton ID="rdfemale" runat="server" Text="Female" GroupName="@p1" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Age:</td>
            <td>
                <asp:TextBox ID="txtage" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtage" ErrorMessage="age must be entered" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Username:</td>
            <td>
                <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtusername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Password:</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" Height="30px" Width="180px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Retype Password:</td>
            <td>
                <asp:TextBox ID="txtretypepass" runat="server" Height="30px" Width="180px" 
                    TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtretypepass" 
                    ErrorMessage="Password and retype password must be match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Button ID="btnsubmit" runat="server" Height="30px" Text="Submit" 
                    Width="180px" onclick="btnsubmit_Click" 
                    style="color: #FFFFFF; background-color: #000066" />
                <asp:Button ID="btncancel" runat="server" Height="30px" Text="Cancel" 
                    Width="180px" onclick="btncancel_Click" 
                    style="color: #FFFFFF; background-color: #000066" />
            </td>
        </tr>
    </table>
</asp:Content>

