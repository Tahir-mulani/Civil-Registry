<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="Registrationofbirth.aspx.cs" Inherits="User_Registrationofbirth" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card" style="max-width: 900px; margin: 30px auto;">
        <div class="form-header">
            <h2>Birth Certificate Registration Guidelines</h2>
            <p style="color: #64748b; margin-top: 4px;">Important information regarding statutory birth registration and required documents</p>
        </div>

        <div style="display: flex; flex-wrap: wrap; gap: 24px; align-items: flex-start;">
            <div style="flex: 1; min-width: 260px; text-align: center;">
                <asp:Image ID="Image5" runat="server" Height="220px" 
                    ImageUrl="~/Image/Birth_Certificate.png" Width="100%" style="object-fit: contain; border-radius: 8px; border: 1px solid #e2e8f0; padding: 12px; background: #fafafa;" />
            </div>
            <div style="flex: 2; min-width: 300px;">
                <h3 style="color: #0f2942; margin-bottom: 12px;">Registration Overview</h3>
                <ul style="line-height: 1.8; color: #334155; margin-bottom: 24px; padding-left: 20px;">
                    <li>Birth must be registered with concerned local registrar authorities within <strong>21 days</strong> of occurrence.</li>
                    <li>In case of births occurring in hospitals or medical institutions, official reporting is initiated directly by the medical facility.</li>
                </ul>

                <h3 style="color: #0f2942; margin-bottom: 12px; border-top: 1px solid #e2e8f0; padding-top: 16px;">Required Supporting Documents</h3>
                <ul style="line-height: 1.8; color: #334155; padding-left: 20px;">
                    <li>Official Identity Proof of parents (e.g. Aadhaar Card / Voter ID).</li>
                    <li>Hospital Discharge Certificate / Discharge Summary letter proving child birth.</li>
                    <li>Parents' Marriage Registration Proof (if applicable).</li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
