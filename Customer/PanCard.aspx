<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="PanCard.aspx.cs" Inherits="Customer_PanCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="form-card" style="max-width: 960px; margin: 30px auto;">
        <asp:Panel ID="Panel1" runat="server" CssClass="form-header" style="background: linear-gradient(135deg, #0f2942 0%, #1b365d 100%); color: #ffffff; padding: 20px; border-radius: 8px; margin-bottom: 24px;">
            <h2 style="color: #ffffff; margin: 0;">Application Form for PAN Card</h2>
            <p style="color: #cbd5e1; margin: 4px 0 0 0; font-size: 0.9rem;">Fill in personal, demographic, and identity/address proof details for PAN card</p>
        </asp:Panel>

        <!-- General Info -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-bottom: 16px;">1. Registration Details</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">PAN Registration ID:</label>
                <asp:TextBox ID="txtpanregid" runat="server" CssClass="form-control" placeholder="Registration ID"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Registration Date:</label>
                <asp:TextBox ID="txtregdt" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <!-- Personal Info -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">2. Personal Information</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Applicant Name:</label>
                <asp:TextBox ID="txtname" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Father Name:</label>
                <asp:TextBox ID="txtfathernm" runat="server" CssClass="form-control" placeholder="Father Name"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Date of Birth:</label>
                <asp:TextBox ID="txtdateofbirth" runat="server" CssClass="form-control" placeholder="Date of Birth"></asp:TextBox>
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
                <asp:TextBox ID="txtmobnum" runat="server" CssClass="form-control" placeholder="Mobile Number"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Email ID:</label>
                <asp:TextBox ID="txtemail" runat="server" CssClass="form-control" placeholder="Email Address"></asp:TextBox>
            </div>
        </div>

        <!-- Address Info -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">3. Address Information</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Place:</label>
                <asp:TextBox ID="txtplace" runat="server" CssClass="form-control" placeholder="Place"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Village / City:</label>
                <asp:TextBox ID="txtvillcity" runat="server" CssClass="form-control" placeholder="Village / City"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Taluka:</label>
                <asp:TextBox ID="txttaluka" runat="server" CssClass="form-control" placeholder="Taluka"></asp:TextBox>
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
            <div class="form-group">
                <label class="form-label">Pincode:</label>
                <asp:TextBox ID="txtpincode" runat="server" CssClass="form-control" placeholder="Pincode"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Country:</label>
                <asp:TextBox ID="txtcountry" runat="server" CssClass="form-control" placeholder="Country"></asp:TextBox>
            </div>
        </div>

        <!-- Document Uploads -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">4. Photo, Signature &amp; Document Uploads</h3>

        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 16px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Upload Photo File:</label>
                    <asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Image ID="Image2" runat="server" Height="90px" Width="90px" style="object-fit: cover; border-radius: 6px; border: 1px solid #cbd5e1; background: white;" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Button ID="btnupimage" runat="server" onclick="btnupimage_Click" Text="Upload Image" CssClass="btn btn-secondary" />
                </div>
            </div>
        </div>

        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 16px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Upload Signature File:</label>
                    <asp:FileUpload ID="FileUpload4" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Image ID="Image3" runat="server" Height="60px" Width="140px" style="object-fit: contain; border-radius: 6px; border: 1px solid #cbd5e1; background: white;" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Button ID="btnupsign" runat="server" onclick="upsign_Click" Text="Upload Signature" CssClass="btn btn-secondary" />
                </div>
            </div>
        </div>

        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 16px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Proof of Maturity / DOB Type:</label>
                    <asp:DropDownList ID="drbdoc1" runat="server" CssClass="form-control">
                        <asp:ListItem>VoterId</asp:ListItem>
                        <asp:ListItem>Aadhar Card</asp:ListItem>
                        <asp:ListItem>Birth Certificate</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Upload Maturity Proof:</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Label ID="lblupmaturity" runat="server" style="font-weight: 600; color: #1d4ed8;"></asp:Label>
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Button ID="btnupmaturity" runat="server" onclick="btnupmaturity_Click" Text="Upload Maturity Proof" CssClass="btn btn-secondary" />
                </div>
            </div>
        </div>

        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 24px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Address Proof Type:</label>
                    <asp:DropDownList ID="drbdoc2" runat="server" CssClass="form-control">
                        <asp:ListItem>Electricity Bill</asp:ListItem>
                        <asp:ListItem>Aadhar Card</asp:ListItem>
                        <asp:ListItem>Post Office passbook</asp:ListItem>
                        <asp:ListItem>Ration Card</asp:ListItem>
                        <asp:ListItem>Goverment issued documents</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Upload Address Proof File:</label>
                    <asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Label ID="lblupaddpro" runat="server" style="font-weight: 600; color: #1d4ed8;"></asp:Label>
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Button ID="btnupaddproof" runat="server" onclick="btnupaddproof_Click" Text="Upload Address Proof" CssClass="btn btn-secondary" />
                </div>
            </div>
        </div>

        <div class="form-actions">
            <asp:Button ID="btnsavenxt" runat="server" onclick="btnsavenxt_Click" Text="Save &amp; Proceed" CssClass="btn btn-primary" style="min-width: 180px;" />
            <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" Text="Cancel" CssClass="btn btn-secondary" style="min-width: 140px;" CausesValidation="false" />
        </div>
    </div>
</asp:Content>
