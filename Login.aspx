<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ASPNetPracticals.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <style type="text/css">
        body { font-family: Arial, sans-serif; }
        .form { width: 460px; margin: 30px auto; }
        td { padding: 6px; vertical-align: top; }
        .error { color: red; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form">
            <h2 style="text-align: center;">LOGIN FORM</h2>
            <table>
                <tr>
                    <td><asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqUsername" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username is required." Text="*" CssClass="error" Display="Dynamic" ValidationGroup="Login"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." Text="*" CssClass="error" Display="Dynamic" ValidationGroup="Login"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirm Password is required." Text="*" CssClass="error" Display="Dynamic" ValidationGroup="Login"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="comparePassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" Operator="Equal" Type="String" ErrorMessage="Confirm Password must match Password." Text="Passwords do not match." CssClass="error" Display="Dynamic" ValidationGroup="Login"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" ValidationGroup="Login" /></td>
                </tr>
            </table>
            <asp:ValidationSummary ID="loginSummary" runat="server" HeaderText="Please correct the following:" CssClass="error" ValidationGroup="Login" />
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
