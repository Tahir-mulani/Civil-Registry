<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="User_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function wows1_0_onclick() {

        }

        function wows1_0_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
	<div id="wowslider-container1">
	<div class="ws_images"><ul>
		<li><img src="../data1/images/slider1.jpg" alt="" title="" id="wows1_0" onclick="return wows1_0_onclick()" /></li>
		<li><img src="../data1/images/aadhaar5086495_1280.jpg" alt="" title="" id="wows1_1"/></li>
		<li><img src="../data1/images/birth.jpg" alt="" title="" id="wows1_2"/></li>
		<li><a href="http://wowslider.com/vi"><img src="../data1/images/n.jpg" alt="css slider" title="" id="wows1_3"/></a></li>
		<li><img src="../data1/images/dc_1500x500.jpg" alt="" title="" id="wows1_4"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title=""><span><img src="../data1/tooltips/slider1.jpg" alt=""/></span></a>
		<a href="#" title=""><span><img src="../data1/tooltips/aadhaar5086495_1280.jpg" alt=""/></span></a>
		<a href="#" title=""><span><img src="../data1/tooltips/birth.jpg" alt=""/></span></a>
		<a href="#" title=""><span><img src="../data1/tooltips/n.jpg" alt=""/></span></a>
		<a href="#" title=""><span><img src="../data1/tooltips/dc_1500x500.jpg" alt=""/></span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.com">bootstrap slider</a> by WOWSlider.com v8.7</div>
	<div class="ws_shadow">
        <table class="style1">
            <tr>
                <td>
                    <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Black" 
                        NavigateUrl="~/User/aboutus.aspx">About Us</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="Black" 
                        NavigateUrl="~/User/Adharcardregestration.aspx">Aadhaar Card</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="Black" 
                        NavigateUrl="~/User/Panregestration.aspx">Pan Card</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="Black" 
                        NavigateUrl="~/User/Registrationofbirth.aspx">Birth Certificate</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="Black" 
                        NavigateUrl="~/User/Marriagecertificate.aspx">Marriage Certificate</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="Black" 
                        NavigateUrl="~/User/Registrationdeath.aspx">Death Certificate</asp:HyperLink>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink9" runat="server" ForeColor="Black" 
                        NavigateUrl="~/User/Voteridcard.aspx">Voter ID Card</asp:HyperLink>
                </td>
            </tr>
        </table>
        </div>
	</div>	
	<script type="text/javascript" src="../engine1/wowslider.js"></script>
	<script type="text/javascript" src="../engine1/script.js"></script>
	<!-- End WOWSlider.com BODY section -->
	
</asp:Content>

