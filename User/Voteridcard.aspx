<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Voteridcard.aspx.cs" Inherits="User_Voteridcard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card" style="max-width: 900px; margin: 30px auto;">
        <div class="form-header">
            <h2>Voter ID Card Registration Guidelines</h2>
            <p style="color: #64748b; margin-top: 4px;">Electoral registration eligibility and required documentation</p>
        </div>

        <div style="display: flex; flex-wrap: wrap; gap: 24px; align-items: flex-start;">
            <div style="flex: 1; min-width: 240px; text-align: center;">
                <asp:Image ID="Image5" runat="server" Height="180px" 
                    ImageUrl="~/Image/voter id.png" Width="100%" style="object-fit: contain; border-radius: 8px; border: 1px solid #e2e8f0; padding: 12px; background: #fafafa;" />
            </div>
            <div style="flex: 2; min-width: 300px;">
                <h3 style="color: #0f2942; margin-bottom: 12px;">Eligibility Criteria</h3>
                <ul style="line-height: 1.8; color: #334155; margin-bottom: 20px; padding-left: 20px;">
                    <li>Applicant must be an Indian Citizen.</li>
                    <li>Must be 18 years of age or older on the qualifying date.</li>
                    <li>Must be an ordinary resident of the polling area where enrollment is sought.</li>
                </ul>

                <h3 style="color: #0f2942; margin-bottom: 12px; border-top: 1px solid #e2e8f0; padding-top: 16px;">Required Documents</h3>
                <ul style="line-height: 1.8; color: #334155; padding-left: 20px;">
                    <li>Proof of Identity (Aadhaar / PAN / Driving License).</li>
                    <li>Proof of Address (Utility Bill / Ration Card / Bank Passbook).</li>
                    <li>Recent Passport size Photograph.</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
