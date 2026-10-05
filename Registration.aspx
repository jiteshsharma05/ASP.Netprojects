<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ASPNetPracticals.Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
    <style type="text/css">
        body { font-family: Arial, sans-serif; }
        .form { width: 520px; margin: 30px auto; }
        td { padding: 6px; vertical-align: top; }
        .error { color: red; }
    </style>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div class="form">
            <h2 style="text-align: center;">REGISTRATION</h2>
            <table>
                <tr>
                    <td><asp:Label ID="lblUserID" runat="server" Text="User ID:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqUserID" runat="server" ControlToValidate="txtUserID" ErrorMessage="User ID is required." Text="*" CssClass="error" Display="Dynamic" ValidationGroup="Registration"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." Text="*" CssClass="error" Display="Dynamic" ValidationGroup="Registration"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblAge" runat="server" Text="Age:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age is required." Text="*" CssClass="error" Display="Dynamic" ValidationGroup="Registration"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rangeAge" runat="server" ControlToValidate="txtAge" Type="Integer" MinimumValue="18" MaximumValue="60" ErrorMessage="Age must be between 18 and 60." Text="Age must be 18-60." CssClass="error" Display="Dynamic" ValidationGroup="Registration"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3" Columns="25"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqAddress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address is required." Text="*" CssClass="error" Display="Dynamic" ValidationGroup="Registration"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." Text="*" CssClass="error" Display="Dynamic" ValidationGroup="Registration"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$" ErrorMessage="Enter a valid email address." Text="Invalid email." CssClass="error" Display="Dynamic" ValidationGroup="Registration"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="lblResume" runat="server" Text="Resume:"></asp:Label></td>
                    <td><asp:FileUpload ID="fuResume" runat="server" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" ValidationGroup="Registration" /></td>
                </tr>
            </table>
            <asp:ValidationSummary ID="registrationSummary" runat="server" HeaderText="Please correct the following:" CssClass="error" ValidationGroup="Registration" />
            <br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblRegisteredInfo" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
