<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="aboutus.aspx.cs" Inherits="User_aboutus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content-card" style="max-width: 900px; margin: 30px auto;">
        <asp:Panel ID="Panel1" runat="server" style="background: linear-gradient(135deg, #0f2942 0%, #1b365d 100%); color: #ffffff; padding: 20px; border-radius: 8px; margin-bottom: 24px;">
            <h2 style="color: #ffffff; margin: 0;">About Civil Registry System</h2>
            <p style="color: #cbd5e1; margin: 4px 0 0 0; font-size: 0.9rem;">Empowering Citizens through Digitized Legal Documentation Services</p>
        </asp:Panel>

        <div style="margin-bottom: 24px; border-radius: 12px; overflow: hidden; box-shadow: var(--shadow-sm);">
            <asp:Image ID="Image5" runat="server" Height="340px" 
                ImageUrl="~/Image/civilregistory.jpg" Width="100%" style="object-fit: cover;" />
        </div>

        <div style="font-size: 1.05rem; line-height: 1.8; color: #334155;">
            <p style="margin-bottom: 16px;">
                <strong>Civil Registry</strong> is a dedicated civic portal and assistance framework providing seamless support to citizens applying for essential legal identity documents and records, including Birth Certificates, Death Certificates, Marriage Certificates, Voter ID Cards, PAN Cards, and Aadhaar Cards.
            </p>
            <p style="margin-bottom: 0;">
                Our digital infrastructure features a specialized support team to assist applicants in gathering supporting documents, verifying information, and guiding submissions. With an integrated legal helpdesk, we simplify statutory requirements and make government service access quick, transparent, and hassle-free.
            </p>
        </div>
    </div>
</asp:Content>
