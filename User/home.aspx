<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true"
    CodeFile="home.aspx.cs" Inherits="User_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script language="javascript" type="text/javascript">
// <![CDATA[
        function wows1_0_onclick() { }
// ]]>
    </script>
    <link href="../css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- Hero Image Slider Section -->
    <div id="wowslider-container1" class="slider-container">
        <div class="ws_images">
            <ul>
                <li>
                    <img src="../data1/images/slider1.jpg" alt="" title="" id="wows1_0" onclick="return wows1_0_onclick()" /></li>
                <li>
                    <img src="../data1/images/aadhaar5086495_1280.jpg" alt="" title="" id="wows1_1" /></li>
                <li>
                    <img src="../data1/images/birth.jpg" alt="" title="" id="wows1_2" /></li>
                <li><a href="http://wowslider.com/vi">
                    <img src="../data1/images/n.jpg" alt="css slider" title="" id="wows1_3" /></a></li>
                <li>
                    <img src="../data1/images/dc_1500x500.jpg" alt="" title="" id="wows1_4" /></li>
            </ul>
        </div>
        <div class="ws_bullets">
            <div>
                <a href="#" title=""><span>
                    <img src="../data1/tooltips/slider1.jpg" alt="" /></span></a> 
                <a href="#" title=""><span>
                    <img src="../data1/tooltips/aadhaar5086495_1280.jpg" alt="" /></span></a>
                <a href="#" title=""><span>
                    <img src="../data1/tooltips/birth.jpg" alt="" /></span></a> 
                <a href="#" title=""><span>
                    <img src="../data1/tooltips/n.jpg" alt="" /></span></a> 
                <a href="#" title=""><span>
                    <img src="../data1/tooltips/dc_1500x500.jpg" alt="" /></span></a>
            </div>
        </div>
        <div class="ws_script" style="position: absolute; left: -99%">
            <a href="http://wowslider.com">bootstrap slider</a> by WOWSlider.com v8.7
        </div>
    </div>
    <script type="text/javascript" src="../engine1/wowslider.js"></script>
    <script type="text/javascript" src="../engine1/script.js"></script>

    <!-- Services Section -->
    <section class="services-section">
        <h2 class="section-title">Our Services</h2>
        <p class="section-subtitle">Comprehensive digital services for government document registration, updates, and official certification.</p>

        <div class="services-grid">
            <div class="service-card">
                <h3>Aadhaar Card</h3>
                <p>Apply, update and link Aadhaar details seamlessly through our citizen portal.</p>
            </div>

            <div class="service-card">
                <h3>PAN Card</h3>
                <p>Apply for a new Permanent Account Number (PAN) card and track status online.</p>
            </div>

            <div class="service-card">
                <h3>Voter ID Card</h3>
                <p>Register for fresh voter card applications and electoral information updates.</p>
            </div>

            <div class="service-card">
                <h3>Birth Certificate</h3>
                <p>Register newborn child records and request official birth certificate issuance.</p>
            </div>

            <div class="service-card">
                <h3>Marriage Certificate</h3>
                <p>Submit legal marriage registration applications and certificate requests.</p>
            </div>

            <div class="service-card">
                <h3>Death Certificate</h3>
                <p>Register vital statistics and death records securely with rapid processing.</p>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <div class="content-card" style="text-align: center; background: #ffffff;">
        <h2 class="section-title" style="color: #0f2942;">About Civil Registry System</h2>
        <p style="max-width: 800px; margin: 12px auto 0 auto; color: #475569; font-size: 1.05rem; line-height: 1.7;">
            The <strong>Civil Registry System</strong> is an integrated digital platform designed to streamline civic registration 
            for vital documents such as Birth, Death, Marriage, Aadhaar, PAN, and Voter ID cards. Our mission is to enhance transparency,
            eliminate bureaucratic delays, and provide citizens with fast, secure access to official government records.
        </p>
    </div>

    <!-- Process Section -->
    <div class="content-card">
        <h2 class="section-title" style="text-align: center; color: #0f2942;">How It Works</h2>
        <div style="max-width: 700px; margin: 24px auto 0 auto;">
            <ol style="line-height: 2; color: #334155; font-size: 1.05rem; padding-left: 24px;">
                <li><strong>Register/Login:</strong> Create a citizen account or sign in to your profile.</li>
                <li><strong>Select Service &amp; Fill Form:</strong> Complete the digital application form with precise details.</li>
                <li><strong>Upload Supporting Documents:</strong> Provide verified digital proof documents.</li>
                <li><strong>Submit Application:</strong> Receive an instant tracking Application ID upon submission.</li>
                <li><strong>Track &amp; Download:</strong> View live approval status and download official certificates.</li>
            </ol>
        </div>
    </div>

    <!-- Achievements Stats -->
    <div style="margin: 32px 0; text-align: center;">
        <h2 class="section-title">Our Achievements</h2>
        <div class="stats-grid">
            <div class="stat-card">
                <div style="font-size: 2rem; font-weight: 800; color: #f59e0b;">10,000+</div>
                <div>Citizen Registrations</div>
            </div>
            <div class="stat-card">
                <div style="font-size: 2rem; font-weight: 800; color: #10b981;">5,000+</div>
                <div>Certificates Issued</div>
            </div>
            <div class="stat-card">
                <div style="font-size: 2rem; font-weight: 800; color: #60a5fa;">100%</div>
                <div>Digital Verification</div>
            </div>
        </div>
    </div>

    <!-- Latest Updates & Contact Grid -->
    <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 24px;">
        <div class="content-card">
            <h3 style="color: #0f2942; border-bottom: 2px solid #e2e8f0; padding-bottom: 8px; margin-bottom: 16px;">Latest Portal Updates</h3>
            <ul style="line-height: 1.8; color: #475569; padding-left: 20px; margin: 0;">
                <li>New online birth &amp; death registration system launched.</li>
                <li>Aadhaar linking is now mandatory for certificate verification.</li>
                <li>Accelerated approval workflow for emergency certificates.</li>
            </ul>
        </div>

        <div class="content-card">
            <h3 style="color: #0f2942; border-bottom: 2px solid #e2e8f0; padding-bottom: 8px; margin-bottom: 16px;">Contact Support</h3>
            <p style="color: #475569; margin: 6px 0;"><strong>Email:</strong> support@civilregistry.com</p>
            <p style="color: #475569; margin: 6px 0;"><strong>Phone:</strong> +91 7020363693 / +91 7083560700</p>
            <p style="color: #475569; margin: 6px 0;"><strong>Address:</strong> Government Complex, Sangli, Maharashtra</p>
        </div>
    </div>

</asp:Content>
