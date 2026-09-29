<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Panregestration.aspx.cs" Inherits="User_Panregestration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card" style="max-width: 900px; margin: 30px auto;">
        <div class="form-header">
            <h2>PAN Card Registration Guidelines</h2>
            <p style="color: #64748b; margin-top: 4px;">Accepted proof documents for Identity, Address, and Date of Birth</p>
        </div>

        <div style="display: flex; flex-wrap: wrap; gap: 24px; align-items: flex-start; margin-bottom: 32px;">
            <div style="flex: 1; min-width: 240px; text-align: center;">
                <asp:Image ID="Image5" runat="server" Height="180px" 
                    ImageUrl="~/Image/PAN-Card-for-a-Minor-Everything-You-Need-To-Know-thumbnail.png" Width="100%" style="object-fit: contain; border-radius: 8px; border: 1px solid #e2e8f0; padding: 12px; background: #fafafa;" />
            </div>
            <div style="flex: 2; min-width: 300px;">
                <h3 style="color: #0f2942; margin-bottom: 12px;">1. Proof of Identity (Select One)</h3>
                <ul style="line-height: 1.8; color: #334155; padding-left: 20px;">
                    <li>Voter ID Card / Passport / Driving License.</li>
                    <li>Aadhaar Card / Domicile Certificate.</li>
                    <li>Bank Passbook featuring applicant photo and account number.</li>
                </ul>
            </div>
        </div>

        <div style="display: flex; flex-wrap: wrap; gap: 24px; align-items: flex-start; border-top: 1px solid #e2e8f0; padding-top: 24px;">
            <div style="flex: 1; min-width: 240px; text-align: center;">
                <asp:Image ID="Image6" runat="server" Height="180px" 
                    ImageUrl="~/Image/pan2.png" Width="100%" style="object-fit: contain; border-radius: 8px; border: 1px solid #e2e8f0; padding: 12px; background: #fafafa;" />
            </div>
            <div style="flex: 2; min-width: 300px;">
                <h3 style="color: #0f2942; margin-bottom: 12px;">2. Proof of Address &amp; Date of Birth</h3>
                <ul style="line-height: 1.8; color: #334155; padding-left: 20px; margin-bottom: 16px;">
                    <li><strong>Address Proof:</strong> Electricity Bill / Passport / Bank Statement / Property Tax Receipt.</li>
                    <li><strong>Date of Birth Proof:</strong> Birth Certificate issued by municipal authority or Indian Consulate.</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
