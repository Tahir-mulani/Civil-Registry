<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Marriagecertificate.aspx.cs" Inherits="User_Marriagecertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card" style="max-width: 900px; margin: 30px auto;">
        <div class="form-header">
            <h2>Marriage Certificate Registration Guidelines</h2>
            <p style="color: #64748b; margin-top: 4px;">Legal jurisdiction, Acts applicability, and required supporting documents</p>
        </div>

        <div style="display: flex; flex-wrap: wrap; gap: 24px; align-items: flex-start; margin-bottom: 32px;">
            <div style="flex: 1; min-width: 240px; text-align: center;">
                <asp:Image ID="Image5" runat="server" Height="180px" 
                    ImageUrl="~/Image/Marriage-License-512.png" Width="100%" style="object-fit: contain; border-radius: 8px; border: 1px solid #e2e8f0; padding: 12px; background: #fafafa;" />
            </div>
            <div style="flex: 2; min-width: 300px;">
                <h3 style="color: #0f2942; margin-bottom: 12px;">Jurisdiction &amp; Applicable Acts</h3>
                <p style="line-height: 1.7; color: #334155; margin-bottom: 12px;">
                    Applications must be submitted under the Inspector General of Registration jurisdiction covering any of the following locations:
                </p>
                <ul style="line-height: 1.8; color: #334155; padding-left: 20px;">
                    <li>Permanent residence of the bridegroom.</li>
                    <li>Permanent residence of the bride.</li>
                    <li>Location of solemnization of marriage.</li>
                </ul>
            </div>
        </div>

        <div style="display: flex; flex-wrap: wrap; gap: 24px; align-items: flex-start; border-top: 1px solid #e2e8f0; padding-top: 24px;">
            <div style="flex: 1; min-width: 240px; text-align: center;">
                <asp:Image ID="Image6" runat="server" Height="180px" 
                    ImageUrl="~/Image/marr.png" Width="100%" style="object-fit: contain; border-radius: 8px; border: 1px solid #e2e8f0; padding: 12px; background: #fafafa;" />
            </div>
            <div style="flex: 2; min-width: 300px;">
                <h3 style="color: #0f2942; margin-bottom: 12px;">Required Supporting Documents</h3>
                <ul style="line-height: 1.8; color: #334155; padding-left: 20px;">
                    <li>Duly completed Marriage Application Form.</li>
                    <li>Joint affidavit specifying marriage date, place, marital status, and nationality.</li>
                    <li>Passport size photographs of bride &amp; groom and Wedding Invitation card.</li>
                    <li>Residency proof of applicants and age proof (Aadhaar Cards).</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
