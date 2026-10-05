<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrafficLight.aspx.cs" Inherits="ASPNetPracticals.TrafficLight" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Traffic Light</title>
    <style type="text/css">
        body { font-family: Arial, sans-serif; text-align: center; }
        .traffic-light { margin: 20px auto; }
        .lamp { display: block; width: 70px; height: 70px; margin: 5px auto; }
        .off { opacity: 0.2; }
        .on { opacity: 1; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <h1>Traffic Light</h1>
                <div class="traffic-light">
                    <asp:Image ID="imgRed" runat="server" ImageUrl="~/Images/red.svg" AlternateText="Red light" CssClass="lamp on" />
                    <asp:Image ID="imgYellow" runat="server" ImageUrl="~/Images/yellow.svg" AlternateText="Yellow light" CssClass="lamp off" />
                    <asp:Image ID="imgGreen" runat="server" ImageUrl="~/Images/green.svg" AlternateText="Green light" CssClass="lamp off" />
                </div>
                <asp:Label ID="lblStatus" runat="server" Text="Press Start"></asp:Label>
                <br /><br />
                <asp:Button ID="btnStartStop" runat="server" Text="Start" OnClick="btnStartStop_Click" />
                <asp:Timer ID="timerLight" runat="server" Interval="1000" Enabled="false" OnTick="timerLight_Tick" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
