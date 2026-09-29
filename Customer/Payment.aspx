<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Customer_Payement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="form-card" style="max-width: 680px; margin: 30px auto;">
        <div class="form-header">
            <h2>Government Application Fee Payment</h2>
            <p style="color: #64748b; margin-top: 4px;">Complete statutory fee payment for your document registration</p>
        </div>

        <!-- Summary Grid -->
        <div style="background: #f8fafc; border: 1px solid #e2e8f0; border-radius: 8px; padding: 20px; margin-bottom: 24px;">
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label">Date:</label>
                    <asp:Label ID="lbldate" runat="server" style="font-weight: 700; color: #0f2942;"></asp:Label>
                </div>
                <div class="form-group">
                    <label class="form-label">Payment ID:</label>
                    <asp:Label ID="lblpayid" runat="server" style="font-weight: 700; color: #0f2942;"></asp:Label>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label">Application ID:</label>
                    <asp:Label ID="lblappid" runat="server" style="font-weight: 700; color: #0f2942;"></asp:Label>
                </div>
                <div class="form-group">
                    <label class="form-label">Certificate Type:</label>
                    <asp:Label ID="lblcertitype" runat="server" style="font-weight: 700; color: #1d4ed8;"></asp:Label>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group">
                    <label class="form-label">Application Fee:</label>
                    <asp:Label ID="lblfees" runat="server" style="font-size: 1.2rem; font-weight: 800; color: #059669;"></asp:Label>
                </div>
            </div>
        </div>

        <!-- Payment Mode Selection -->
        <div class="form-group" style="margin-bottom: 20px;">
            <label class="form-label">Select Payment Mode:</label>
            <div style="display: flex; gap: 24px; padding: 10px; background: #ffffff; border: 1px solid #cbd5e1; border-radius: 8px;">
                <asp:RadioButton ID="rdupi" runat="server" AutoPostBack="True" GroupName="d" 
                    Text=" UPI QR Code" oncheckedchanged="rdupi_CheckedChanged" />
                <asp:RadioButton ID="rdonpay" runat="server" AutoPostBack="True" GroupName="d" 
                    Text=" Net Banking / Card" oncheckedchanged="rdonpay_CheckedChanged" />
            </div>
        </div>

        <!-- Payment Panels -->
        <div style="margin-bottom: 24px;">
            <asp:Panel ID="Panel1" runat="server" style="text-align: center; background: #f8fafc; border: 1px dashed #cbd5e1; padding: 20px; border-radius: 8px;">
                <p style="font-weight: 600; color: #334155; margin-bottom: 12px;">Scan UPI QR Code to Pay Fee</p>
                <asp:Image ID="Image2" runat="server" Height="140px" ImageUrl="~/Image/tahir qr code.jpg" Width="140px" style="object-fit: contain; border-radius: 8px; border: 1px solid #cbd5e1; background: white; padding: 6px;" />
            </asp:Panel>

            <asp:Panel ID="Panel2" runat="server" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 20px; border-radius: 8px; margin-top: 12px;">
                <p style="font-weight: 600; color: #334155; margin-bottom: 16px;">Bank &amp; Card Payment Details</p>
                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label">IFSC Code:</label>
                        <asp:TextBox ID="txtifsccode" runat="server" CssClass="form-control">0</asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Bank Name:</label>
                        <asp:TextBox ID="txtbanknm" runat="server" CssClass="form-control">-</asp:TextBox>
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group">
                        <label class="form-label">Card Number:</label>
                        <asp:TextBox ID="txtcardno" runat="server" CssClass="form-control">0</asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="form-label">Security Code (CVV):</label>
                        <asp:TextBox ID="txtcvv" runat="server" CssClass="form-control">0</asp:TextBox>
                    </div>
                </div>
            </asp:Panel>
        </div>

        <div class="form-actions">
            <asp:Button ID="btnmakepay" runat="server" onclick="btnmakepay_Click" Text="Make Payment" CssClass="btn btn-primary" style="min-width: 180px;" />
        </div>
    </div>
</asp:Content>
