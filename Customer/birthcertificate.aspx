<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="birthcertificate.aspx.cs" Inherits="Customer_birthcertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="form-card" style="max-width: 960px; margin: 30px auto;">
        <asp:Panel ID="Panel1" runat="server" CssClass="form-header" style="background: linear-gradient(135deg, #0f2942 0%, #1b365d 100%); color: #ffffff; padding: 20px; border-radius: 8px; margin-bottom: 24px;">
            <h2 style="color: #ffffff; margin: 0;">Application Form for Birth Certificate</h2>
            <p style="color: #cbd5e1; margin: 4px 0 0 0; font-size: 0.9rem;">Register birth details, parent information, and medical statistics</p>
        </asp:Panel>

        <!-- General Info -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-bottom: 16px;">1. General Registration Details</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Birth Registration ID:</label>
                <asp:TextBox ID="txtbirthregid" runat="server" CssClass="form-control" placeholder="Registration ID"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Date of Registration:</label>
                <asp:TextBox ID="txtdteofreg" runat="server" CssClass="form-control" placeholder="Date of Registration"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Child Name:</label>
                <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Child Name"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Birth Date:</label>
                <asp:TextBox ID="txtbirthdte" runat="server" CssClass="form-control" placeholder="Birth Date"></asp:TextBox>
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
                <label class="form-label">Place of Birth:</label>
                <asp:TextBox ID="txtplaceofbirth" runat="server" CssClass="form-control" placeholder="Hospital / Place"></asp:TextBox>
            </div>
        </div>

        <!-- Location Details -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">2. Location &amp; Address</h3>
        <div class="form-row">
            <div class="form-group" style="flex: 2;">
                <label class="form-label">Permanent Address:</label>
                <asp:TextBox ID="txtprmadd" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" placeholder="Full Permanent Address"></asp:TextBox>
            </div>
        </div>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Village / City:</label>
                <asp:TextBox ID="txtvillage" runat="server" CssClass="form-control" placeholder="Village / City"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Taluka:</label>
                <asp:TextBox ID="txttaluka" runat="server" CssClass="form-control" placeholder="Taluka"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">District:</label>
                <asp:DropDownList ID="drbdistrict" runat="server" CssClass="form-control">
                    <asp:ListItem>Sangli</asp:ListItem>
                    <asp:ListItem>Kolhapur</asp:ListItem>
                    <asp:ListItem>Satara</asp:ListItem>
                    <asp:ListItem>Pune</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="form-label">State:</label>
                <asp:DropDownList ID="drbstate" runat="server" CssClass="form-control">
                    <asp:ListItem>Maharashtra</asp:ListItem>
                    <asp:ListItem>Karnataka</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <!-- Parents Details -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">3. Parents &amp; Informer Information</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Father Name:</label>
                <asp:TextBox ID="txtfathernme" runat="server" CssClass="form-control" placeholder="Father Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Father Qualification:</label>
                <asp:TextBox ID="txtfqualification" runat="server" CssClass="form-control" placeholder="Qualification"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Father Occupation:</label>
                <asp:TextBox ID="txtfoccupation" runat="server" CssClass="form-control" placeholder="Occupation"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Mother Name:</label>
                <asp:TextBox ID="txtmname" runat="server" CssClass="form-control" placeholder="Mother Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Mother Qualification:</label>
                <asp:TextBox ID="txtmqualification" runat="server" CssClass="form-control" placeholder="Qualification"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Religion:</label>
                <asp:DropDownList ID="drbreligion" runat="server" CssClass="form-control">
                    <asp:ListItem>Hindu</asp:ListItem>
                    <asp:ListItem>Critian</asp:ListItem>
                    <asp:ListItem>Buddhis</asp:ListItem>
                    <asp:ListItem>Muslim</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Informer Name:</label>
                <asp:TextBox ID="txtinfname" runat="server" CssClass="form-control" placeholder="Informer Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Informer Address:</label>
                <asp:TextBox ID="txtinfadd" runat="server" CssClass="form-control" placeholder="Informer Address"></asp:TextBox>
            </div>
        </div>

        <!-- Medical & Birth Stats -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">4. Medical &amp; Delivery Details</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Delivery Type:</label>
                <asp:DropDownList ID="drbdeliverytype" runat="server" CssClass="form-control">
                    <asp:ListItem>Normal</asp:ListItem>
                    <asp:ListItem>Sizure</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="form-label">Age of Mother at Wedding:</label>
                <asp:TextBox ID="txtageofmatwed" runat="server" CssClass="form-control" placeholder="Age"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Age of Mother when Baby Born:</label>
                <asp:TextBox ID="txtageofmatbborn" runat="server" CssClass="form-control" placeholder="Age"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Pregnancy Period (Weeks):</label>
                <asp:TextBox ID="txtpregperinweek" runat="server" CssClass="form-control" placeholder="Weeks"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">No. of Children Born:</label>
                <asp:TextBox ID="txtnoofchbrmwo" runat="server" CssClass="form-control" placeholder="No. of Children"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Baby Weight at Birth:</label>
                <asp:TextBox ID="txtbwonbirth" runat="server" CssClass="form-control" placeholder="Weight (kg/lbs)"></asp:TextBox>
            </div>
        </div>

        <!-- Upload Documents -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">5. Document Uploads</h3>
        
        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 16px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Upload Aadhaar Card Proof:</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Label ID="lblupadharcard" runat="server" style="font-weight: 600; color: #1d4ed8;"></asp:Label>
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Button ID="btnupadharcard" runat="server" onclick="btnupadharcard_Click" Text="Upload Aadhaar Card" CssClass="btn btn-secondary" />
                </div>
            </div>
        </div>

        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 24px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Upload Hospital Birth Report:</label>
                    <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Label ID="lblupbirthcard" runat="server" style="font-weight: 600; color: #1d4ed8;"></asp:Label>
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Button ID="btnuploadbicard" runat="server" onclick="btnuploadbicard_Click" Text="Upload Birth Card" CssClass="btn btn-secondary" />
                </div>
            </div>
        </div>

        <div class="form-actions">
            <asp:Button ID="btnsavenext" runat="server" onclick="btnsavenext_Click" Text="Save &amp; Proceed" CssClass="btn btn-primary" style="min-width: 180px;" />
            <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" style="min-width: 140px;" CausesValidation="false" />
        </div>
    </div>
</asp:Content>
