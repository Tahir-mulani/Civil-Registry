<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Registrationdeath.aspx.cs" Inherits="User_Registrationdeath" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card" style="max-width: 900px; margin: 30px auto;">
        <div class="form-header">
            <h2>Death Certificate Registration Guidelines</h2>
            <p style="color: #64748b; margin-top: 4px;">Statutory procedures, responsible authorities, and required proof documents</p>
        </div>

        <div style="display: flex; flex-wrap: wrap; gap: 24px; align-items: flex-start;">
            <div style="flex: 1; min-width: 260px; text-align: center;">
                <asp:Image ID="Image5" runat="server" Height="220px" 
                    ImageUrl="~/Image/death certificate.png" Width="100%" style="object-fit: contain; border-radius: 8px; border: 1px solid #e2e8f0; padding: 12px; background: #fafafa;" />
            </div>
            <div style="flex: 2; min-width: 300px;">
                <h3 style="color: #0f2942; margin-bottom: 12px;">Responsibility for Death Registration</h3>
                <ul style="line-height: 1.8; color: #334155; margin-bottom: 24px; padding-left: 20px;">
                    <li><strong>Domestic Occurrence:</strong> Head of the family or close relative.</li>
                    <li><strong>Hospital / Nursing Home:</strong> Medical officer in-charge of the institution.</li>
                    <li><strong>Institutional Facility (Jail / Plantation):</strong> In-charge superintendent or jailer.</li>
                    <li><strong>Unclaimed / Found Cases:</strong> Local police station officer in-charge.</li>
                </ul>

                <h3 style="color: #0f2942; margin-bottom: 12px; border-top: 1px solid #e2e8f0; padding-top: 16px;">Required Supporting Documents</h3>
                <ul style="line-height: 1.8; color: #334155; padding-left: 20px;">
                    <li>Declaration by close relative or family member in prescribed statutory format.</li>
                    <li>Deceased Address &amp; Identity Proof (Voter ID, Utility Bill, Ration Card, or Aadhaar Card).</li>
                    <li>Medical Cause of Death Certificate from attending doctor (if applicable).</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
