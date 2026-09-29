<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="VoterIdCard.aspx.cs" Inherits="Customer_VoterIdCard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="form-card" style="max-width: 960px; margin: 30px auto;">
        <asp:Panel ID="Panel1" runat="server" CssClass="form-header" style="background: linear-gradient(135deg, #0f2942 0%, #1b365d 100%); color: #ffffff; padding: 20px; border-radius: 8px; margin-bottom: 24px;">
            <h2 style="color: #ffffff; margin: 0;">Application Form for Voter ID Card</h2>
            <p style="color: #cbd5e1; margin: 4px 0 0 0; font-size: 0.9rem;">Electoral registration, constituency details, and proof documents</p>
        </asp:Panel>

        <!-- General Registration Info -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-bottom: 16px;">1. Electoral Registration Details</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Voter Registration ID:</label>
                <asp:TextBox ID="txtvoterregid" runat="server" CssClass="form-control" placeholder="Registration ID"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Registration Date:</label>
                <asp:TextBox ID="txtregdate" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Name of Parliament / Constituency:</label>
                <asp:TextBox ID="txtnmparliment" runat="server" CssClass="form-control" placeholder="Constituency Name"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">No. of Parliament / Constituency:</label>
                <asp:TextBox ID="txtnoparliment" runat="server" CssClass="form-control" placeholder="Constituency Number"></asp:TextBox>
            </div>
        </div>

        <!-- Personal Information -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">2. Personal Information</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Applicant Full Name:</label>
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
                <asp:TextBox ID="txtdtbirth" runat="server" CssClass="form-control" placeholder="Date of Birth"></asp:TextBox>
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
                    <asp:RadioButton ID="rdotehr" runat="server" Text=" Other" />
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
                <asp:TextBox ID="txtemailid" runat="server" CssClass="form-control" placeholder="Email Address"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Aadhaar No:</label>
                <asp:TextBox ID="txtadharno" runat="server" CssClass="form-control" placeholder="Aadhaar No"></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Religion:</label>
                <asp:DropDownList ID="drbreligion" runat="server" CssClass="form-control">
                    <asp:ListItem>Islam</asp:ListItem>
                    <asp:ListItem>Hindu</asp:ListItem>
                    <asp:ListItem>Sikh</asp:ListItem>
                    <asp:ListItem>Buddhis</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="form-label">Disability Status:</label>
                <asp:DropDownList ID="drbdisability" runat="server" CssClass="form-control">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="form-label">Disability Type (If any):</label>
                <asp:TextBox ID="txtdisabilitytyp" runat="server" CssClass="form-control" placeholder="Disability Type"></asp:TextBox>
            </div>
        </div>

        <!-- Address Details -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">3. Address Information</h3>
        <div class="form-row">
            <div class="form-group">
                <label class="form-label">Village / City:</label>
                <asp:TextBox ID="txtvillage" runat="server" CssClass="form-control" placeholder="City / Village"></asp:TextBox>
            </div>
            <div class="form-group">
                <label class="form-label">Taluka:</label>
                <asp:DropDownList ID="drbtaluka" runat="server" CssClass="form-control">
                    <asp:ListItem>Miraj</asp:ListItem>
                    <asp:ListItem>Shirol</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label class="form-label">District:</label>
                <asp:DropDownList ID="drbdistrict" runat="server" CssClass="form-control">
                    <asp:ListItem>Sangli</asp:ListItem>
                    <asp:ListItem>Satara</asp:ListItem>
                    <asp:ListItem>Kolhapur</asp:ListItem>
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
                <asp:TextBox ID="txtpin" runat="server" CssClass="form-control" placeholder="Pincode"></asp:TextBox>
            </div>
        </div>

        <!-- Photo & Proof Uploads -->
        <h3 style="color: #0f2942; border-bottom: 1px solid #e2e8f0; padding-bottom: 8px; margin-top: 24px; margin-bottom: 16px;">4. Photo &amp; Proof Document Uploads</h3>

        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 16px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Upload Passport Photograph:</label>
                    <asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Image ID="Image2" runat="server" Height="90px" Width="90px" style="object-fit: cover; border-radius: 6px; border: 1px solid #cbd5e1; background: white;" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Button ID="btnupimg" runat="server" onclick="btnupimg_Click" Text="Upload Image" CssClass="btn btn-secondary" />
                </div>
            </div>
        </div>

        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 16px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Identity Proof Type:</label>
                    <asp:DropDownList ID="drbdoc1" runat="server" CssClass="form-control">
                        <asp:ListItem>Adhar Card</asp:ListItem>
                        <asp:ListItem>Pancard</asp:ListItem>
                        <asp:ListItem>Bank Passook</asp:ListItem>
                        <asp:ListItem>Ration card</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label class="form-label">Upload Identity Proof File:</label>
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Label ID="lblupidpro" runat="server" style="font-weight: 600; color: #1d4ed8;"></asp:Label>
                </div>
                <div class="form-group" style="flex: 0 0 auto;">
                    <asp:Button ID="btnupidprof" runat="server" onclick="btnupidprof_Click" Text="Upload ID Proof" CssClass="btn btn-secondary" />
                </div>
            </div>
        </div>

        <div class="form-card" style="background: #f8fafc; border: 1px solid #e2e8f0; padding: 16px; margin-bottom: 24px;">
            <div class="form-row" style="align-items: center;">
                <div class="form-group">
                    <label class="form-label">Address Proof Type:</label>
                    <asp:DropDownList ID="drbdoc2" runat="server" CssClass="form-control">
                        <asp:ListItem>Ration card</asp:ListItem>
                        <asp:ListItem>Driving Licence</asp:ListItem>
                        <asp:ListItem>Electricity Bill</asp:ListItem>
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
