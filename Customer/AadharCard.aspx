<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="AadharCard.aspx.cs" Inherits="Customer_AadharCard" %>

<script runat="server">
    protected void btnsave_Click(object sender, EventArgs e)
    {
    }

    protected void btnupimg_Click(object sender, EventArgs e)
    {
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="form-card" style="max-width: 960px; margin: 30px auto;">
        <asp:Panel ID="Panel1" runat="server" CssClass="form-header" style="background: linear-gradient(135deg, #0f2942 0%, #1b365d 100%); color: #ffffff; padding: 20px; border-radius: 8px; margin-bottom: 24px;">
            <h2 style="color: #ffffff; margin: 0;">Aadhaar Card Application Form</h2>
            <p style="color: #cbd5e1; margin: 4px 0 0 0; font-size: 0.9rem;">Fill in personal, demographic, and document details for Aadhaar registration</p>
        </asp:Panel>

        <!-- Personal Details Section -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-bottom: 16px;">1. Personal Details</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Aadhaar Registration ID:</label>
                <asp:TextBox ID="txtadharregid" runat="server" CssClass="form-control" placeholder="Registration ID"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Full Name:</label>
                <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Date of Birth:</label>
                <asp:TextBox ID="txtdtebirth" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            </div>
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
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Mobile Number:</label>
                <asp:TextBox ID="txtmobileno" runat="server" CssClass="form-control" placeholder="Mobile Number"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Email ID:</label>
                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Email Address"></asp:TextBox>
            </div>
        </div>

        <!-- Address Details Section -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">2. Address Details</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">House No. / Building:</label>
                <asp:TextBox ID="txthouseno" runat="server" CssClass="form-control" placeholder="House/Building No"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Street / Lane:</label>
                <asp:TextBox ID="txtstreet" runat="server" CssClass="form-control" placeholder="Street / Lane"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Landmark:</label>
                <asp:TextBox ID="txtlandmark" runat="server" CssClass="form-control" placeholder="Landmark"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Area / Locality:</label>
                <asp:TextBox ID="txtarea" runat="server" CssClass="form-control" placeholder="Locality"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Village / City:</label>
                <asp:TextBox ID="txtvillcity" runat="server" CssClass="form-control" placeholder="City / Village"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Pin Code:</label>
                <asp:TextBox ID="txtpostoff" runat="server" CssClass="form-control" placeholder="Pin Code"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
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

        <!-- Guardian Details Section -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">3. Guardian Details (If Applicable)</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Guardian Name:</label>
                <asp:TextBox ID="txtganame" runat="server" CssClass="form-control" placeholder="Guardian Full Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Guardian Aadhaar No:</label>
                <asp:TextBox ID="txtgadharno" runat="server" CssClass="form-control" placeholder="Guardian Aadhaar No"></asp:TextBox>
            </div>
        </div>

        <!-- Upload Proofs & Images Section -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">4. Upload Documents &amp; Signature</h3>
        
        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 16px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Upload Photograph:</label>
                    <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Image ID="Image2" runat="server" Height="100px" Width="100px" style="object-fit: cover; border-radius: 6px; border: 1px solid #cbd5e1; background: white;" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Button ID="btnupimg" runat="server" Text="Upload Image" CssClass="btn btn-secondary" onclick="btnupimg_Click" />
                </div>
            </div>
        </div>

        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 16px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Upload Signature:</label>
                    <asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Image ID="Image3" runat="server" Height="60px" Width="140px" style="object-fit: contain; border-radius: 6px; border: 1px solid #cbd5e1; background: white;" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Button ID="btnupsign" runat="server" Text="Upload Signature" CssClass="btn btn-secondary" onclick="btnupsign_Click" />
                </div>
            </div>
        </div>

        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 24px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Select Document Type:</label>
                    <asp:DropDownList ID="drbdocument" runat="server" CssClass="form-control">
                        <asp:ListItem>Ration Card</asp:ListItem>
                        <asp:ListItem>Leaving Certificate</asp:ListItem>
                        <asp:ListItem>Resident Proof</asp:ListItem>
                        <asp:ListItem>Photograph</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Upload Document File:</label>
                    <asp:FileUpload ID="FileUpload4" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Button ID="btnuploaddoc" runat="server" Text="Upload Document" CssClass="btn btn-secondary" onclick="btnuploaddoc_Click" />
                </div>
            </div>
            <div style="margin-top: 8px;">
                <asp:Label ID="lbldoc" runat="server" style="font-weight: 600; color: #1d4ed8;"></asp:Label>
            </div>
        </div>

        <div class="form-actions">
            <asp:Button ID="btnsavenext" runat="server" Text="Save &amp; Proceed" onclick="btnsave_Click" CssClass="btn btn-primary" style="min-width: 180px;" />
            <asp:Button ID="btncancel" runat="server" Text="Cancel" CssClass="btn btn-secondary" style="min-width: 140px;" CausesValidation="false" />
        </div>
    </div>
</asp:Content>
