<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="MarriageCertificate.aspx.cs" Inherits="Customer_MarriageCertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="form-card" style="max-width: 980px; margin: 30px auto;">
        <asp:Panel ID="Panel1" runat="server" CssClass="form-header" style="background: linear-gradient(135deg, #0f2942 0%, #1b365d 100%); color: #ffffff; padding: 20px; border-radius: 8px; margin-bottom: 24px;">
            <h2 style="color: #ffffff; margin: 0;">Application Form for Marriage Certificate</h2>
            <p style="color: #cbd5e1; margin: 4px 0 0 0; font-size: 0.9rem;">Register marriage details, husband &amp; wife information, witness details, and proof documents</p>
        </asp:Panel>

        <!-- General Registration Info -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-bottom: 16px;">1. General Marriage Registration Details</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Marriage Registration ID:</label>
                <asp:TextBox ID="txtmarregid" runat="server" CssClass="form-control" placeholder="Registration ID"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Registration Date:</label>
                <asp:TextBox ID="txtregdate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Place of Marriage:</label>
                <asp:TextBox ID="txtplacemarr" runat="server" CssClass="form-control" placeholder="Marriage Place / City"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Marriage Date:</label>
                <asp:TextBox ID="txtmarrdate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <!-- Couple Details Section (Husband & Wife) -->
        <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 24px; margin-top: 24px;">
            <!-- Husband Details Card -->
            <div class="form-card" style="margin: 0; background: #fafafa; border: 1px solid #e2e8f0; padding: 20px;">
                <h3 style="color: #0f2942; border-bottom: 2px solid #1d4ed8; padding-bottom: 6px; margin-top: 0; margin-bottom: 16px;">Husband's Details</h3>
                
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Husband Name:</label>
                    <asp:TextBox ID="txthname" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
                </div>
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Husband Address:</label>
                    <asp:TextBox ID="txthadd" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" placeholder="Address"></asp:TextBox>
                </div>
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Husband Religion:</label>
                    <asp:TextBox ID="txthreligion" runat="server" CssClass="form-control" placeholder="Religion"></asp:TextBox>
                </div>
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Father Name:</label>
                    <asp:TextBox ID="txthfname" runat="server" CssClass="form-control" placeholder="Father Name"></asp:TextBox>
                </div>
                <div class="form-group" style="margin-bottom: 16px;">
                    <label class="form-label">Age at Marriage:</label>
                    <asp:TextBox ID="txthageatmarr" runat="server" CssClass="form-control" placeholder="Age"></asp:TextBox>
                </div>

                <div style="text-align: center; margin-bottom: 12px;">
                    <asp:Image ID="Image2" runat="server" Height="100px" Width="100px" style="object-fit: cover; border-radius: 6px; border: 1px solid #cbd5e1; background: white;" />
                </div>
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Upload Photo:</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                    <asp:Button ID="btnupimage" runat="server" onclick="btnupimage_Click" Text="Upload Image" CssClass="btn btn-secondary" style="width: 100%; margin-top: 6px;" />
                </div>
                <div class="form-group">
                    <label class="form-label">Upload Aadhaar Card:</label>
                    <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
                    <asp:Label ID="lblhupadhar" runat="server" style="font-size: 0.85rem; color: #1d4ed8; font-weight: 600; margin-top: 4px; display: block;"></asp:Label>
                    <asp:Button ID="btnupadhar" runat="server" onclick="btnupadhar_Click" Text="Upload Aadhaar Card" CssClass="btn btn-secondary" style="width: 100%; margin-top: 6px;" />
                </div>
            </div>

            <!-- Wife Details Card -->
            <div class="form-card" style="margin: 0; background: #fafafa; border: 1px solid #e2e8f0; padding: 20px;">
                <h3 style="color: #0f2942; border-bottom: 2px solid #1d4ed8; padding-bottom: 6px; margin-top: 0; margin-bottom: 16px;">Wife's Details</h3>
                
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Wife Name:</label>
                    <asp:TextBox ID="txtwname" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
                </div>
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Wife Address:</label>
                    <asp:TextBox ID="txtwadd" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" placeholder="Address"></asp:TextBox>
                </div>
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Wife Religion:</label>
                    <asp:TextBox ID="txtwreligion" runat="server" CssClass="form-control" placeholder="Religion"></asp:TextBox>
                </div>
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Father Name:</label>
                    <asp:TextBox ID="txtwfname" runat="server" CssClass="form-control" placeholder="Father Name"></asp:TextBox>
                </div>
                <div class="form-group" style="margin-bottom: 16px;">
                    <label class="form-label">Age at Marriage:</label>
                    <asp:TextBox ID="txtwageatmarr" runat="server" CssClass="form-control" placeholder="Age"></asp:TextBox>
                </div>

                <div style="text-align: center; margin-bottom: 12px;">
                    <asp:Image ID="Image3" runat="server" Height="100px" Width="100px" style="object-fit: cover; border-radius: 6px; border: 1px solid #cbd5e1; background: white;" />
                </div>
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Upload Photo:</label>
                    <asp:FileUpload ID="FileUpload4" runat="server" CssClass="form-control" />
                    <asp:Button ID="btnupwimage" runat="server" onclick="btnupwimage_Click" Text="Upload Image" CssClass="btn btn-secondary" style="width: 100%; margin-top: 6px;" />
                </div>
                <div class="form-group">
                    <label class="form-label">Upload Aadhaar Card:</label>
                    <asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control" />
                    <asp:Label ID="lblwupadhar" runat="server" style="font-size: 0.85rem; color: #1d4ed8; font-weight: 600; margin-top: 4px; display: block;"></asp:Label>
                    <asp:Button ID="btnupwadhar" runat="server" onclick="btnupwadhar_Click" Text="Upload Aadhaar Card" CssClass="btn btn-secondary" style="width: 100%; margin-top: 6px;" />
                </div>
            </div>
        </div>

        <!-- Witnesses Section -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 32px; margin-bottom: 16px;">3. Witness Details</h3>
        
        <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 24px;">
            <!-- Witness 1 Card -->
            <div class="form-card" style="margin: 0; background: #fafafa; border: 1px solid #e2e8f0; padding: 20px;">
                <h4 style="color: #0f2942; margin-top: 0; margin-bottom: 12px;">Witness 1</h4>
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Name:</label>
                    <asp:TextBox ID="txtw1name" runat="server" CssClass="form-control" placeholder="Witness 1 Name"></asp:TextBox>
                </div>
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Address:</label>
                    <asp:TextBox ID="txtw1add" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
                </div>
                <div style="text-align: center; margin-bottom: 12px;">
                    <asp:Image ID="Image4" runat="server" Height="80px" Width="80px" style="object-fit: cover; border-radius: 6px; border: 1px solid #cbd5e1; background: white;" />
                </div>
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Upload Photo:</label>
                    <asp:FileUpload ID="FileUpload5" runat="server" CssClass="form-control" />
                    <asp:Button ID="btnupw1" runat="server" onclick="btnupw1_Click" Text="Upload Photo" CssClass="btn btn-secondary" style="width: 100%; margin-top: 6px;" />
                </div>
                <div class="form-group">
                    <label class="form-label">Upload Aadhaar Card:</label>
                    <asp:FileUpload ID="FileUpload6" runat="server" CssClass="form-control" />
                    <asp:Label ID="lblupw1adhar" runat="server" style="font-size: 0.85rem; color: #1d4ed8; font-weight: 600; margin-top: 4px; display: block;"></asp:Label>
                    <asp:Button ID="btnupw1adhar" runat="server" onclick="btnupw1adhar_Click" Text="Upload Aadhaar Card" CssClass="btn btn-secondary" style="width: 100%; margin-top: 6px;" />
                </div>
            </div>

            <!-- Witness 2 Card -->
            <div class="form-card" style="margin: 0; background: #fafafa; border: 1px solid #e2e8f0; padding: 20px;">
                <h4 style="color: #0f2942; margin-top: 0; margin-bottom: 12px;">Witness 2</h4>
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Name:</label>
                    <asp:TextBox ID="txtw2name" runat="server" CssClass="form-control" placeholder="Witness 2 Name"></asp:TextBox>
                </div>
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Address:</label>
                    <asp:TextBox ID="txtw2add" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
                </div>
                <div style="text-align: center; margin-bottom: 12px;">
                    <asp:Image ID="Image5" runat="server" Height="80px" Width="80px" style="object-fit: cover; border-radius: 6px; border: 1px solid #cbd5e1; background: white;" />
                </div>
                <div class="form-group" style="margin-bottom: 12px;">
                    <label class="form-label">Upload Photo:</label>
                    <asp:FileUpload ID="FileUpload7" runat="server" CssClass="form-control" />
                    <asp:Button ID="btnupw2" runat="server" onclick="btnupw2_Click" Text="Upload Photo" CssClass="btn btn-secondary" style="width: 100%; margin-top: 6px;" />
                </div>
                <div class="form-group">
                    <label class="form-label">Upload Aadhaar Card:</label>
                    <asp:FileUpload ID="FileUpload8" runat="server" CssClass="form-control" />
                    <asp:Label ID="lblupw2adhar" runat="server" style="font-size: 0.85rem; color: #1d4ed8; font-weight: 600; margin-top: 4px; display: block;"></asp:Label>
                    <asp:Button ID="btnupw2adhar" runat="server" onclick="btnupw2adhar_Click" Text="Upload Aadhaar Card" CssClass="btn btn-secondary" style="width: 100%; margin-top: 6px;" />
                </div>
            </div>
        </div>

        <!-- Additional Proof Upload Section -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 32px; margin-bottom: 16px;">4. Marriage Invitation / Legal Proof</h3>
        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 24px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Upload Marriage Proof Document:</label>
                    <asp:FileUpload ID="FileUpload9" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Label ID="lblupid" runat="server" style="font-weight: 600; color: #1d4ed8;"></asp:Label>
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Button ID="btnupid" runat="server" onclick="btnupid_Click" Text="Upload Document" CssClass="btn btn-secondary" />
                </div>
            </div>
        </div>

        <div class="form-actions">
            <asp:Button ID="btnsavenext" runat="server" onclick="btnsavenext_Click" Text="Save &amp; Proceed" CssClass="btn btn-primary" style="min-width: 180px;" />
            <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" Text="Cancel" CssClass="btn btn-secondary" style="min-width: 140px;" CausesValidation="false" />
        </div>
    </div>
</asp:Content>
