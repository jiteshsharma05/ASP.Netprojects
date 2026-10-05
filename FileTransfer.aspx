<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileTransfer.aspx.cs" Inherits="ASPNetPracticals.FileTransfer" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>File Transfer</title>
    <style type="text/css">
        body { font-family: Arial, sans-serif; }
        .page { width: 560px; margin: 30px auto; }
        .transfer-table { margin-top: 20px; }
        .transfer-table td { padding: 6px; vertical-align: middle; }
        .list-box { width: 180px; height: 180px; }
        .arrow-button { width: 45px; margin: 3px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page">
            <h2>File Transfer</h2>
            <asp:Label ID="lblLocation" runat="server" Text="Location:"></asp:Label>
            <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
            <asp:Button ID="btnAdd" runat="server" Text="ADD" OnClick="btnAdd_Click" />

            <table class="transfer-table">
                <tr>
                    <th>List 1</th>
                    <th></th>
                    <th>List 2</th>
                </tr>
                <tr>
                    <td>
                        <asp:ListBox ID="lstSource" runat="server" CssClass="list-box"></asp:ListBox>
                    </td>
                    <td>
                        <asp:Button ID="btnMoveRight" runat="server" Text="&gt;" CssClass="arrow-button" OnClick="btnMoveRight_Click" /><br />
                        <asp:Button ID="btnMoveAllRight" runat="server" Text="&gt;&gt;" CssClass="arrow-button" OnClick="btnMoveAllRight_Click" /><br />
                        <asp:Button ID="btnMoveLeft" runat="server" Text="&lt;" CssClass="arrow-button" OnClick="btnMoveLeft_Click" /><br />
                        <asp:Button ID="btnMoveAllLeft" runat="server" Text="&lt;&lt;" CssClass="arrow-button" OnClick="btnMoveAllLeft_Click" />
                    </td>
                    <td>
                        <asp:ListBox ID="lstDestination" runat="server" CssClass="list-box"></asp:ListBox>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
