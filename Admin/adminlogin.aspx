<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="Admin_adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title></title>
    <style type="text/css">
        .style1
        {
            width: 60%;
            
        }
        .style2
        {
            height: 34px;
        }
        .style3
        {
            color: #000000;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
  <form id="form1" runat="server">
    <table align="center" class="style1">
        <tr>
            <td colspan="2" 
                style="text-align: center; font-family: 'Microsoft JhengHei'; font-weight: 700; font-size: x-large;" 
                class="style3">
                <asp:Image ID="Image1" runat="server" />
                <br />
                Admin Login<hr />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Username:</td>
            <td class="style2">
                <asp:TextBox ID="txtusername" runat="server" Height="30px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Password:</td>
            <td>
                <asp:TextBox ID="txtpassword" runat="server" Height="30px" TextMode="Password" 
                    Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnlogin" runat="server" Height="30px" onclick="btnlogin_Click" 
                    Text="Login" Width="180px" BackColor="#3399FF" ForeColor="White" 
                    style="background-color: #003366" />
            </td>
            <td>
                <asp:Button ID="btncancel" runat="server" Height="30px" 
                    onclick="btncancel_Click" Text="Cancel" Width="180px" BackColor="#3399FF" 
                    ForeColor="White" style="background-color: #003366" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
