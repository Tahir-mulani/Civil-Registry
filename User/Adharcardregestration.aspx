<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Adharcardregestration.aspx.cs" Inherits="User_Adharcardregestration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card" style="max-width: 900px; margin: 30px auto;">
        <div class="form-header">
            <h2>Aadhaar Card Registration Guidelines</h2>
            <p style="color: #64748b; margin-top: 4px;">UIDAI 12-digit unique identification process and statutory documents</p>
        </div>

        <div style="display: flex; flex-wrap: wrap; gap: 24px; align-items: flex-start;">
            <div style="flex: 1; min-width: 240px; text-align: center;">
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Image/adhar.png" 
                    Width="100%" style="max-width: 220px; object-fit: contain; border-radius: 8px; border: 1px solid #e2e8f0; padding: 12px; background: #fafafa;" />
            </div>
            <div style="flex: 2; min-width: 300px;">
                <h3 style="color: #0f2942; margin-bottom: 12px;">Aadhaar Overview</h3>
                <p style="line-height: 1.7; color: #334155; margin-bottom: 20px;">
                    Aadhaar is a 12-digit unique identification number issued by the Unique Identification Authority of India (UIDAI) to residents of India after biometric and demographic verification.
                </p>

                <h3 style="color: #0f2942; margin-bottom: 12px; border-top: 1px solid #e2e8f0; padding-top: 16px;">Required Supporting Documents</h3>
                <ul style="line-height: 1.8; color: #334155; padding-left: 20px;">
                    <li>Ration Card / Voter Card.</li>
                    <li>School Leaving Certificate / Birth Proof.</li>
                    <li>Verified Resident Proof.</li>
                    <li>Passport size Photograph.</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
