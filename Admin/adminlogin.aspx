<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="Admin_adminlogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Civil Registry - Admin Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="../css/style.css" rel="stylesheet" />
</head>
<body style="background: linear-gradient(135deg, #0f2942 0%, #1b365d 100%); min-height: 100vh; display: flex; align-items: center; justify-content: center; padding: 20px;">
    <form id="form1" runat="server" style="width: 100%; max-width: 440px;">
        <div class="form-card" style="margin: 0; padding: 36px 28px; background: #ffffff; border-radius: 12px; box-shadow: 0 20px 25px -5px rgba(0,0,0,0.3);">
            <div class="form-header" style="text-align: center; border-bottom: 2px solid #f1f5f9; padding-bottom: 20px; margin-bottom: 24px;">
                <asp:Image ID="Image1" runat="server" Visible="false" />
                <h2 style="color: #0f2942; font-size: 1.6rem; margin: 0;">Admin Portal Sign In</h2>
                <p style="color: #64748b; font-size: 0.88rem; margin: 6px 0 0 0;">Authorized System Administrators Only</p>
            </div>

            <div class="form-group" style="margin-bottom: 18px;">
                <label class="form-label">Username:</label>
                <asp:TextBox ID="txtusername" runat="server" CssClass="form-control" placeholder="Admin Username"></asp:TextBox>
            </div>

            <div class="form-group" style="margin-bottom: 24px;">
                <label class="form-label">Password:</label>
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Admin Password"></asp:TextBox>
            </div>

            <div class="form-actions" style="display: flex; gap: 12px;">
                <asp:Button ID="btnlogin" runat="server" onclick="btnlogin_Click" Text="Login" CssClass="btn btn-primary" style="flex: 1;" />
                <asp:Button ID="btncancel" runat="server" onclick="btncancel_Click" Text="Cancel" CssClass="btn btn-secondary" style="flex: 1;" />
            </div>
        </div>
    </form>
</body>
</html>
