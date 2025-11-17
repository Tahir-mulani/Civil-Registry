<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.master" AutoEventWireup="true" CodeFile="MarriageCertificate.aspx.cs" Inherits="Customer_MarriageCertificate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 90%;
        }
        .style3
        {
            font-family: "Microsoft JhengHei UI";
            text-align: center;
            font-size: x-large;
        }
        .style4
        {
            height: 34px;
        }
        .style5
        {
            width: 221px;
        }
        .style6
        {
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table align="center" cellpadding="2" class="style2">
        <tr>
            <td class="style3" colspan="4">
                <strong>Application for Marriage Certificate<hr />
                </strong></td>
        </tr>
        <tr>
            <td class="style6">
                Marriage Registration ID:</td>
            <td>
                <asp:TextBox ID="txtmarregid" runat="server" Height="30px" Width="150px"></asp:TextBox>
            </td>
            <td>
                Registration Date:</td>
            <td>
                <asp:TextBox ID="txtregdate" runat="server" Height="30px" TextMode="Date" 
                    Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                Place of Marriage:</td>
            <td>
                <asp:TextBox ID="txtplacemarr" runat="server" Height="30px" Width="150px"></asp:TextBox>
            </td>
            <td>
                Marriage Date:</td>
            <td>
                <asp:TextBox ID="txtmarrdate" runat="server" Height="30px" TextMode="Date" 
                    Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <table class="style1">
                    <tr>
                        <td colspan="3">
                            Husband&#39;s Details</td>
                    </tr>
                    <tr>
                        <td>
                            Husband Name:</td>
                        <td>
                            <asp:TextBox ID="txthname" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        </td>
                        <td rowspan="4">
                            <asp:Image ID="Image2" runat="server" Height="121px" Width="145px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Husband&#39;s Address:</td>
                        <td>
                            <asp:TextBox ID="txthadd" runat="server" Height="30px" TextMode="MultiLine" 
                                Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Husband&#39;s Religion:</td>
                        <td>
                            <asp:TextBox ID="txthreligion" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Father Name:</td>
                        <td class="style4">
                            <asp:TextBox ID="txthfname" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Husband&#39;s Age At Marriage:</td>
                        <td>
                            <asp:TextBox ID="txthageatmarr" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style4">
                            <asp:Label ID="lblhupadhar" runat="server" BorderStyle="Ridge" Height="30px" 
                                Width="150px"></asp:Label>
                        </td>
                        <td class="style4">
                        </td>
                        <td class="style4">
                            <asp:Button ID="btnupimage" runat="server" Height="30px" 
                                onclick="btnupimage_Click" style="color: #FFFFFF; background-color: #000066" 
                                Text="Upload Image" Width="180px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:FileUpload ID="FileUpload2" runat="server" />
                        </td>
                        <td>
                            <asp:Button ID="btnupadhar" runat="server" Height="30px" 
                                style="color: #FFFFFF; background-color: #000066" Text="Upload Adhar Card" 
                                Width="180px" onclick="btnupadhar_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td colspan="2">
                <table class="style1">
                    <tr>
                        <td colspan="3">
                            Wife&#39;s Details</td>
                    </tr>
                    <tr>
                        <td>
                            Wife Name:</td>
                        <td>
                            <asp:TextBox ID="txtwname" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        </td>
                        <td rowspan="3">
                            <asp:Image ID="Image3" runat="server" Height="121px" Width="145px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Wife&#39;s Address:</td>
                        <td>
                            <asp:TextBox ID="txtwadd" runat="server" Height="30px" TextMode="MultiLine" 
                                Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Wife&#39;s Religion:</td>
                        <td>
                            <asp:TextBox ID="txtwreligion" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Father Name:</td>
                        <td>
                            <asp:TextBox ID="txtwfname" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload4" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Wife&#39;s Age At Marriage:</td>
                        <td>
                            <asp:TextBox ID="txtwageatmarr" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button ID="btnupwimage" runat="server" Height="30px" 
                                style="color: #FFFFFF; background-color: #000066" Text="Upload Image" 
                                Width="180px" onclick="btnupwimage_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblwupadhar" runat="server" BorderStyle="Ridge" Height="30px" 
                                Width="150px"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:FileUpload ID="FileUpload3" runat="server" />
                        </td>
                        <td>
                            <asp:Button ID="btnupwadhar" runat="server" Height="30px" 
                                style="color: #FFFFFF; background-color: #000066" Text="Upload Adhar Card" 
                                Width="180px" onclick="btnupwadhar_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style6">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
                Witness Details</td>
        </tr>
        <tr>
            <td colspan="2">
                <table class="style1">
                    <tr>
                        <td class="style5" rowspan="3">
                            <asp:Image ID="Image4" runat="server" Height="121px" Width="145px" />
                        </td>
                        <td>
                            Name:</td>
                        <td>
                            <asp:TextBox ID="txtw1name" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address:</td>
                        <td>
                            <asp:TextBox ID="txtw1add" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <asp:FileUpload ID="FileUpload5" runat="server" />
                        </td>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <asp:Button ID="btnupw1" runat="server" Height="30px" 
                                style="color: #FFFFFF; background-color: #000066" Text="Upload" 
                                Width="150px" onclick="btnupw1_Click" />
                        </td>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <asp:Label ID="lblupw1adhar" runat="server" BorderStyle="Ridge"></asp:Label>
                            <asp:FileUpload ID="FileUpload6" runat="server" />
                        </td>
                        <td colspan="2">
                            <asp:Button ID="btnupw1adhar" runat="server" Height="30px" 
                                style="color: #FFFFFF; background-color: #000066" Text="Upload Adhar Card" 
                                Width="180px" onclick="btnupw1adhar_Click" />
                        </td>
                    </tr>
                </table>
            </td>
            <td colspan="2">
                <table class="style1">
                    <tr>
                        <td rowspan="3">
                            <asp:Image ID="Image5" runat="server" Height="121px" Width="145px" />
                        </td>
                        <td>
                            Name:</td>
                        <td>
                            <asp:TextBox ID="txtw2name" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Address:</td>
                        <td>
                            <asp:TextBox ID="txtw2add" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:FileUpload ID="FileUpload7" runat="server" />
                        </td>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnupw2" runat="server" Height="30px" 
                                style="color: #FFFFFF; background-color: #000066" Text="Upload" 
                                Width="180px" onclick="btnupw2_Click" />
                        </td>
                        <td colspan="2">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblupw2adhar" runat="server" BorderStyle="Ridge"></asp:Label>
                            <asp:FileUpload ID="FileUpload8" runat="server" />
                        </td>
                        <td colspan="2">
                            <asp:Button ID="btnupw2adhar" runat="server" Height="30px" 
                                style="color: #FFFFFF; background-color: #000066" Text="Upload Adhar Card" 
                                Width="180px" onclick="btnupw2adhar_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="lblupid" runat="server" BorderStyle="Ridge" Height="30px" 
                    Width="150px"></asp:Label>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload9" runat="server" />
            </td>
            <td>
                <asp:Button ID="btnupid" runat="server" Height="30px" 
                    style="color: #FFFFFF; margin-left: 0px; background-color: #000066" 
                    Text="Upload" Width="180px" onclick="btnupid_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsavenext" runat="server" Height="30px" 
                    onclick="btnsavenext_Click" style="color: #FFFFFF; background-color: #000066" 
                    Text="Save &amp; Next" Width="180px" />
            </td>
            <td>
                <asp:Button ID="btncancel" runat="server" Height="30px" 
                    style="color: #FFFFFF; background-color: #000066" Text="Cancel" 
                    Width="180px" onclick="btncancel_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>



