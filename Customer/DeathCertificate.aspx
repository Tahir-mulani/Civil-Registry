<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="DeathCertificate.aspx.cs" Inherits="Customer_DeathCertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="form-card" style="max-width: 960px; margin: 30px auto;">
        <asp:Panel ID="Panel1" runat="server" CssClass="form-header" style="background: linear-gradient(135deg, #0f2942 0%, #1b365d 100%); color: #ffffff; padding: 20px; border-radius: 8px; margin-bottom: 24px;">
            <h2 style="color: #ffffff; margin: 0;">Application Form for Death Certificate</h2>
            <p style="color: #cbd5e1; margin: 4px 0 0 0; font-size: 0.9rem;">Register vital statistics, deceased details, and medical cause information</p>
        </asp:Panel>

        <!-- General Info -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-bottom: 16px;">1. Registration Information</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Death Registration ID:</label>
                <asp:TextBox ID="txtdeathregid" runat="server" CssClass="form-control" placeholder="Registration ID"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Date of Registration:</label>
                <asp:TextBox ID="txtdateofreg" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <!-- Deceased Details -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">2. Deceased Person Information</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Deceased Full Name:</label>
                <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Date of Birth:</label>
                <asp:TextBox ID="txtdateofbirth" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Death Date:</label>
                <asp:TextBox ID="txtdeathdate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Age:</label>
                <asp:TextBox ID="txtage" runat="server" CssClass="form-control" placeholder="Age"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Gender:</label>
                <div style="display: flex; gap: 16px; padding: 8px 0;">
                    <asp:RadioButton ID="rdmale" runat="server" Text=" Male" />
                    <asp:RadioButton ID="rdfemale" runat="server" Text=" Female" />
                    <asp:RadioButton ID="rdother" runat="server" Text=" Other" />
                </div>
            </div>
            <div class="form-group">
                <label class="form-label">Religion:</label>
                <asp:DropDownList ID="drbreligion" runat="server" CssClass="form-control">
                    <asp:ListItem>Islam</asp:ListItem>
                    <asp:ListItem>Hindu</asp:ListItem>
                    <asp:ListItem>Christian</asp:ListItem>
                    <asp:ListItem>Sikh</asp:ListItem>
                    <asp:ListItem>Buddhis</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Father / Husband Name:</label>
                <asp:TextBox ID="txtfathername" runat="server" CssClass="form-control" placeholder="Father / Husband Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Mother Name:</label>
                <asp:TextBox ID="txtmothernm" runat="server" CssClass="form-control" placeholder="Mother Name"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group" style="flex: 2;">
                <label class="form-label">Permanent Address of Deceased:</label>
                <asp:TextBox ID="txtperadd" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" placeholder="Permanent Address"></asp:TextBox>
            </div>
        </div>

        <!-- Medical Details -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">3. Cause &amp; Medical Details</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Place of Death:</label>
                <asp:DropDownList ID="drbdeathplace" runat="server" CssClass="form-control">
                    <asp:ListItem>Sangli</asp:ListItem>
                    <asp:ListItem>Miraj</asp:ListItem>
                    <asp:ListItem>Kolhapur</asp:ListItem>
                    <asp:ListItem>Jaysingpur</asp:ListItem>
                    <asp:ListItem>Islampur</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="form-label">Cause of Death:</label>
                <asp:TextBox ID="txtdeathreason" runat="server" CssClass="form-control" placeholder="Cause of Death"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Deceased Occupation:</label>
                <asp:DropDownList ID="drbdeathperocc" runat="server" CssClass="form-control">
                    <asp:ListItem>House wife</asp:ListItem>
                    <asp:ListItem>Worker</asp:ListItem>
                    <asp:ListItem>Bussinessman</asp:ListItem>
                    <asp:ListItem>Driver</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Medical Service Taken Before Death:</label>
                <asp:DropDownList ID="drbmedservice" runat="server" CssClass="form-control">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="form-label">Was Deceased Addicted? (Tobacco/Alcohol):</label>
                <asp:DropDownList ID="drbisthisperadicted" runat="server" CssClass="form-control">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <!-- Informer Details -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">4. Informer Details</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Informer Name:</label>
                <asp:TextBox ID="txtinfoname" runat="server" CssClass="form-control" placeholder="Informer Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Informer Address:</label>
                <asp:TextBox ID="txtinfoadd" runat="server" CssClass="form-control" placeholder="Informer Address"></asp:TextBox>
            </div>
        </div>

        <!-- Upload Documents -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">5. Document Uploads</h3>
        
        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 16px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Upload Death Proof / Certificate:</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Label ID="lblupdeath" runat="server" style="font-weight: 600; color: #1d4ed8;"></asp:Label>
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Button ID="btnuplddeathprof" runat="server" onclick="btnuplddeathprof_Click" Text="Upload Death Proof" CssClass="btn btn-secondary" />
                </div>
            </div>
        </div>

        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 24px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Select Address Proof Type:</label>
                    <asp:DropDownList ID="drbdocument" runat="server" CssClass="form-control">
                        <asp:ListItem>Voter Id card</asp:ListItem>
                        <asp:ListItem>Aadhar Card</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Upload Address Proof File:</label>
                    <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Label ID="lblupadharpro" runat="server" style="font-weight: 600; color: #1d4ed8;"></asp:Label>
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Button ID="btnupaddprof" runat="server" onclick="btnupaddprof_Click" Text="Upload Address Proof" CssClass="btn btn-secondary" />
                </div>
            </div>
        </div>

        <div class="form-actions">
            <asp:Button ID="btnsavenxt" runat="server" onclick="btnsavenxt_Click" Text="Save &amp; Proceed" CssClass="btn btn-primary" style="min-width: 180px;" />
            <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" style="min-width: 140px;" CausesValidation="false" />
        </div>
    </div>
</asp:Content>
