<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true"
    CodeFile="home.aspx.cs" Inherits="User_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function wows1_0_onclick() {

        }

        function wows1_0_onclick() {

        }

// ]]>
    </script>
    <link href="../css/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Start WOWSlider.com BODY section -->
    <!-- add to the <body> of your page -->
    <div id="wowslider-container1">
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
                    <img src="../data1/tooltips/slider1.jpg" alt="" /></span></a> <a href="#" title=""><span>
                        <img src="../data1/tooltips/aadhaar5086495_1280.jpg" alt="" /></span></a>
                <a href="#" title=""><span>
                    <img src="../data1/tooltips/birth.jpg" alt="" /></span></a> <a href="#" title=""><span>
                        <img src="../data1/tooltips/n.jpg" alt="" /></span></a> <a href="#" title=""><span>
                            <img src="../data1/tooltips/dc_1500x500.jpg" alt="" /></span></a>
            </div>
        </div>
        <div class="ws_script" style="position: absolute; left: -99%">
            <a href="http://wowslider.com">bootstrap slider</a> by WOWSlider.com v8.7
        </div>
    </div>
    <script type="text/javascript" src="../engine1/wowslider.js"></script>
    <script type="text/javascript" src="../engine1/script.js"></script>
    <!-- End WOWSlider.com BODY section -->
    <!-- ===== SERVICES SECTION ===== -->
    <!-- ===== SERVICES SECTION ===== -->
    <section class="services">
    <h2>Our Services</h2>

    <div class="service-box">
        <h3>Aadhaar Card</h3>
        <p>Apply, update and link Aadhaar details easily through the portal.</p>
    </div>

    <div class="service-box">
        <h3>PAN Card</h3>
        <p>Apply for new PAN card and track application status online.</p>
    </div>

    <div class="service-box">
        <h3>Voter ID Card</h3>
        <p>Register for voter ID and update electoral information.</p>
    </div>

    <div class="service-box">
        <h3>Birth Certificate</h3>
        <p>Register birth and download official birth certificate.</p>
    </div>

    <div class="service-box">
        <h3>Marriage Certificate</h3>
        <p>Apply for marriage registration and certificate issuance.</p>
    </div>

    <div class="service-box">
        <h3>Death Certificate</h3>
        <p>Register death records and access certificates securely.</p>
    </div>
</section>
    <!-- ===== ABOUT SECTION ===== -->
    <section style="padding: 60px; background: #fafafa; text-align: center;" class="about">
    <h2 style="color:#b30000;">About Civil Registry</h2>
    <p style="max-width:800px; margin:auto;">
        Civil Registry System is a digital platform designed to manage records 
        such as birth, death, and marriage. It improves transparency, efficiency,
        and provides easy access to citizens.
    </p>
</section>
    <!-- ===== PROCESS SECTION ===== -->
    <section style="padding: 60px; text-align: center;">
    <h2 style="color:#b30000;">How It Works</h2>
    <ol style="max-width:600px; margin:auto; text-align:left;" class="process">
        <li>Register/Login to the portal</li>
        <li>Fill application form</li>
        <li>Upload documents</li>
        <li>Submit application</li>
        <li>Track status</li>
        <li>Download certificate</li>
    </ol>
</section>
    <!-- ===== STATS SECTION ===== -->
    <section style="padding: 60px; text-align: center;" class="stats">
    <h2 style="color:#b30000;">Our Achievements</h2>

    <div style="display:inline-block; margin:20px; font-size:20px;" class = "stat-box">10,000+ Registrations</div>
    <div style="display:inline-block; margin:20px; font-size:20px;" class = "stat-box">5000+ Certificates Issued</div>
    <div style="display:inline-block; margin:20px; font-size:20px;" class = "stat-box">100% Digital Records</div>
</section>
    <!-- ===== NEWS SECTION ===== -->
    <section style="padding: 60px; text-align: center;" class="news">
    <h2 style="color:#b30000;">Latest Updates</h2>
    <ul style="max-width:600px; margin:auto; text-align:left;">
        <li>New online birth registration system launched</li>
        <li>Aadhaar linking is now mandatory</li>
        <li>Faster approval system introduced</li>
    </ul>
</section>
    <!-- ===== TESTIMONIALS ===== -->
    <section style="padding: 60px; background: #fafafa; text-align: center;" class="testimonials">
    <h2 style="color:#b30000;">User Feedback</h2>
    <p>"Very easy and fast service!"</p>
    <p>"Saved time compared to offline process."</p>
</section>
    <!-- ===== CONTACT ===== -->
    <section style="padding: 60px; text-align: center;" class="about">
    <h2 style="color:#b30000;">Contact Us</h2>
    <p>Email: support@civilregistry.com</p>
    <p>Phone: +91 7020363693 & +91 7083560700</p>
    <p>Address: Sangli, Maharashtra</p>
</section>
    <!-- ===== FOOTER ===== -->
    <footer style="background: #b30000; color: white; text-align: center; padding: 15px;">
    <p>© 2026 Civil Registry System | All Rights Reserved</p>
</footer>
</asp:Content>
