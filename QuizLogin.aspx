<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuizLogin.aspx.cs" Inherits="ASPNetPracticals.QuizLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quiz Login</title>
    <style type="text/css">
        body { font-family: Arial, sans-serif; }
        .login { width: 350px; margin: 40px auto; }
        td { padding: 6px; }
        .message { color: red; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="login">
            <h2 style="text-align: center;">LOGIN</h2>
            <table>
                <tr>
                    <td><asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label></td>
                    <td><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label></td>
                    <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /></td>
                </tr>
            </table>
            <asp:Label ID="lblMessage" runat="server" CssClass="message"></asp:Label>
        </div>
    </form>
</body>
</html>
