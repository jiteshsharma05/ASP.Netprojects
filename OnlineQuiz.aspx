<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OnlineQuiz.aspx.cs" Inherits="ASPNetPracticals.OnlineQuiz" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Quiz</title>
    <style type="text/css">
        body { font-family: Arial, sans-serif; }
        .quiz { width: 520px; margin: 30px auto; }
        .option { display: block; margin: 8px 0; }
        .navigation { margin-top: 18px; }
        .navigation input { margin-right: 8px; }
        .result { margin-top: 20px; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="quiz">
            <h2 style="text-align: center;">ONLINE QUIZ</h2>

            <asp:Panel ID="pnlQuestion" runat="server">
                <h3><asp:Label ID="lblQuestion" runat="server"></asp:Label></h3>
                <asp:RadioButton ID="opt1" runat="server" GroupName="QuizOptions" CssClass="option" />
                <asp:RadioButton ID="opt2" runat="server" GroupName="QuizOptions" CssClass="option" />
                <asp:RadioButton ID="opt3" runat="server" GroupName="QuizOptions" CssClass="option" />
                <asp:RadioButton ID="opt4" runat="server" GroupName="QuizOptions" CssClass="option" />

                <div class="navigation">
                    <asp:Button ID="btnPrevious" runat="server" Text="Previous" OnClick="btnPrevious_Click" />
                    <asp:Button ID="btnNext" runat="server" Text="Next" OnClick="btnNext_Click" />
                </div>
                <br />
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </asp:Panel>

            <asp:Panel ID="pnlResult" runat="server" Visible="false" CssClass="result">
                <h2>YOUR SCORE</h2>
                <p><asp:Label ID="lblCorrect" runat="server" Text="Correct Ans = "></asp:Label></p>
                <p><asp:Label ID="lblIncorrect" runat="server" Text="Incorrect Ans = "></asp:Label></p>
                <asp:Button ID="btnOK" runat="server" Text="OK" OnClick="btnOK_Click" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
