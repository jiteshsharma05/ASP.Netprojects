<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="ASPNetPracticals.Calculator" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Calculator</title>
    <style type="text/css">
        body { font-family: Arial, sans-serif; }
        .calculator { margin: 20px; }
        .display { width: 220px; text-align: right; margin-bottom: 5px; }
        .key { width: 50px; height: 30px; }
        .operator { background-color: #d9eaf7; }
        .equals { background-color: #dff0d8; }
        .clear { background-color: #f2dede; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="calculator">
            <asp:Label ID="lblTitle" runat="server" Text="Calculator"></asp:Label>
            <br />
            <asp:TextBox ID="txtDisplay" runat="server" CssClass="display" ReadOnly="true">0</asp:TextBox>
            <table>
                <tr>
                    <td><asp:Button ID="btn1" runat="server" Text="1" CssClass="key" OnClick="btnNumber_Click" /></td>
                    <td><asp:Button ID="btn2" runat="server" Text="2" CssClass="key" OnClick="btnNumber_Click" /></td>
                    <td><asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="key clear" OnClick="btnClear_Click" /><asp:Button ID="btnAdd" runat="server" Text="+" CssClass="key operator" OnClick="btnOperator_Click" /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:Button ID="btn3" runat="server" Text="3" CssClass="key" OnClick="btnNumber_Click" /></td>
                    <td><asp:Button ID="btn4" runat="server" Text="4" CssClass="key" OnClick="btnNumber_Click" /></td>
                    <td><asp:Button ID="btn5" runat="server" Text="5" CssClass="key" OnClick="btnNumber_Click" /><asp:Button ID="btnSubtract" runat="server" Text="-" CssClass="key operator" OnClick="btnOperator_Click" /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:Button ID="btn6" runat="server" Text="6" CssClass="key" OnClick="btnNumber_Click" /></td>
                    <td><asp:Button ID="btn7" runat="server" Text="7" CssClass="key" OnClick="btnNumber_Click" /></td>
                    <td><asp:Button ID="btn8" runat="server" Text="8" CssClass="key" OnClick="btnNumber_Click" /><asp:Button ID="btnMultiply" runat="server" Text="*" CssClass="key operator" OnClick="btnOperator_Click" /></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><asp:Button ID="btn9" runat="server" Text="9" CssClass="key" OnClick="btnNumber_Click" /></td>
                    <td><asp:Button ID="btn0" runat="server" Text="0" CssClass="key" OnClick="btnNumber_Click" /></td>
                    <td><asp:Button ID="btnEqual" runat="server" Text="=" CssClass="key equals" OnClick="btnEqual_Click" /><asp:Button ID="btnDivide" runat="server" Text="/" CssClass="key operator" OnClick="btnOperator_Click" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
