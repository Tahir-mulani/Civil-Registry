<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Customer_Payement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
    {
        width: 60%;
    }
    .style3
    {
        text-align: center;
        font-size: x-large;
        font-family: "Microsoft JhengHei UI";
    }
    .style4
    {
        height: 34px;
    }
    .style5
    {
        height: 34px;
        text-align: right;
    }
    .style6
    {
        text-align: right;
    }
    .style7
    {
        height: 26px;
    }
</style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" class="style2">
    <tr>
        <td class="style3" colspan="2">
            <strong>Payment Details</strong></td>
    </tr>
    <tr>
        <td class="style5">
            <strong>Date:</strong></td>
        <td class="style4">
            <asp:Label ID="lbldate" runat="server" Height="30px" Width="150px"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Payment id:</td>
        <td>
            <asp:Label ID="lblpayid" runat="server" Height="30px" Width="150px"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Application id:</td>
        <td>
            <asp:Label ID="lblappid" runat="server" Height="30px" Width="150px"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Certificate Type:</td>
        <td>
            <asp:Label ID="lblcertitype" runat="server" Height="30px" Width="150px"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">
            Fees:</td>
        <td>
            <asp:Label ID="lblfees" runat="server" Height="30px" Width="150px"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: right">
            Payment Mode:</td>
        <td>
            <asp:RadioButton ID="rdupi" runat="server" AutoPostBack="True" GroupName="d" 
                Text="UPI" oncheckedchanged="rdupi_CheckedChanged" />
            <asp:RadioButton ID="rdonpay" runat="server" AutoPostBack="True" GroupName="d" 
                Text="Online Payment" oncheckedchanged="rdonpay_CheckedChanged" />
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Panel ID="Panel1" runat="server">
                <asp:Image ID="Image2" runat="server" Height="120px" 
                    ImageUrl="~/Image/tahir qr code.jpg" Width="133px" />
            </asp:Panel>
        </td>
        <td>
            <asp:Panel ID="Panel2" runat="server">
                <table class="style1">
                    <tr>
                        <td>
                            IFSC Code:</td>
                        <td>
                            <asp:TextBox ID="txtifsccode" runat="server" Height="30px" Width="150px">0</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Bank Name:</td>
                        <td>
                            <asp:TextBox ID="txtbanknm" runat="server" Height="30px" Width="150px">-</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Card No.:</td>
                        <td>
                            <asp:TextBox ID="txtcardno" runat="server" Height="30px" Width="150px">0</asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Security code:</td>
                        <td>
                            <asp:TextBox ID="txtcvv" runat="server" Height="30px" Width="150px">0</asp:TextBox>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td class="style7">
        </td>
        <td class="style7">
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="btnmakepay" runat="server" Height="30px" 
                style="color: #FFFFFF; background-color: #000066" Text="Make Payment" 
                Width="150px" onclick="btnmakepay_Click" />
        </td>
    </tr>
</table>
</asp:Content>


