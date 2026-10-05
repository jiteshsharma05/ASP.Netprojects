using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetPracticals
{
    public partial class OnlineQuiz : Page
    {
        private static readonly string[] Questions =
        {
            "Which control is used to display a button in ASP.NET Web Forms?",
            "Which control is used to validate required input?",
            "Which control is used to upload a file?",
            "Which control displays advertisements?",
            "Which language is being used for the code-behind in this project?"
        };

        private static readonly string[][] Options =
        {
            new string[] { "TextBox", "Button", "Label", "Image" },
            new string[] { "RequiredFieldValidator", "Timer", "AdRotator", "Image" },
            new string[] { "FileUpload", "Label", "Timer", "Calendar" },
            new string[] { "ImageButton", "AdRotator", "ListBox", "Panel" },
            new string[] { "C#", "SQL", "HTML", "XML" }
        };

        private static readonly int[] CorrectAnswers = { 1, 0, 0, 1, 0 };

        protected Label lblQuestion;
        protected RadioButton opt1;
        protected RadioButton opt2;
        protected RadioButton opt3;
        protected RadioButton opt4;
        protected Button btnPrevious;
        protected Button btnNext;
        protected Button btnSubmit;
        protected Button btnOK;
        protected Label lblCorrect;
        protected Label lblIncorrect;
        protected Panel pnlQuestion;
        protected Panel pnlResult;

        private int CurrentQuestion
        {
            get { return ViewState["CurrentQuestion"] == null ? 0 : (int)ViewState["CurrentQuestion"]; }
            set { ViewState["CurrentQuestion"] = value; }
        }

        private int[] SelectedAnswers
        {
            get
            {
                int[] answers = ViewState["SelectedAnswers"] as int[];
                if (answers == null)
                {
                    answers = new int[Questions.Length];
                    for (int i = 0; i < answers.Length; i++)
                    {
                        answers[i] = -1;
                    }
                }
                return answers;
            }
            set { ViewState["SelectedAnswers"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["QuizUser"] == null)
            {
                Response.Redirect("QuizLogin.aspx");
                return;
            }

            if (!IsPostBack)
            {
                CurrentQuestion = 0;
                SelectedAnswers = new int[Questions.Length];
                for (int i = 0; i < Questions.Length; i++)
                {
                    SelectedAnswers[i] = -1;
                }
                DisplayQuestion();
            }
        }

        private void SaveCurrentAnswer()
        {
            int answer = -1;
            if (opt1.Checked) answer = 0;
            else if (opt2.Checked) answer = 1;
            else if (opt3.Checked) answer = 2;
            else if (opt4.Checked) answer = 3;

            int[] answers = (int[])SelectedAnswers.Clone();
            answers[CurrentQuestion] = answer;
            SelectedAnswers = answers;
        }

        private void DisplayQuestion()
        {
            int question = CurrentQuestion;
            lblQuestion.Text = "Question " + (question + 1) + ": " + Questions[question];
            opt1.Text = Options[question][0];
            opt2.Text = Options[question][1];
            opt3.Text = Options[question][2];
            opt4.Text = Options[question][3];

            int selectedAnswer = SelectedAnswers[question];
            opt1.Checked = selectedAnswer == 0;
            opt2.Checked = selectedAnswer == 1;
            opt3.Checked = selectedAnswer == 2;
            opt4.Checked = selectedAnswer == 3;

            btnPrevious.Enabled = question > 0;
            btnNext.Enabled = question < Questions.Length - 1;
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            SaveCurrentAnswer();
            if (CurrentQuestion > 0)
            {
                CurrentQuestion--;
            }
            DisplayQuestion();
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            SaveCurrentAnswer();
            if (CurrentQuestion < Questions.Length - 1)
            {
                CurrentQuestion++;
            }
            DisplayQuestion();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SaveCurrentAnswer();

            int correct = 0;
            int[] answers = SelectedAnswers;
            for (int i = 0; i < CorrectAnswers.Length; i++)
            {
                if (answers[i] == CorrectAnswers[i])
                {
                    correct++;
                }
            }

            int incorrect = Questions.Length - correct;
            lblCorrect.Text = "Correct Ans = " + correct;
            lblIncorrect.Text = "Incorrect Ans = " + incorrect;
            pnlQuestion.Visible = false;
            pnlResult.Visible = true;
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            Session.Remove("QuizUser");
            Response.Redirect("QuizLogin.aspx");
        }
    }
}
