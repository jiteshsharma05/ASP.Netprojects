<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdRotator.aspx.cs" Inherits="ASPNetPracticals.AdRotator" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Advertisement</title>
    <style type="text/css">
        body { font-family: Arial, sans-serif; text-align: center; }
        .advertisement { margin: 20px auto; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>ADVERTISEMENT</h2>
        <div class="advertisement">
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/App_Data/Advertisements.xml" Width="400px" Height="150px" />
        </div>
    </form>
</body>
</html>
