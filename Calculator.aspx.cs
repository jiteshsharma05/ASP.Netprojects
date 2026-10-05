using System;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetPracticals
{
    public partial class Calculator : System.Web.UI.Page
    {
        private TextBox Display
        {
            get { return (TextBox)form1.FindControl("txtDisplay"); }
        }

        private string PreviousNumber
        {
            get { return ViewState["PreviousNumber"] as string ?? ""; }
            set { ViewState["PreviousNumber"] = value; }
        }

        private string CurrentOperator
        {
            get { return ViewState["CurrentOperator"] as string ?? ""; }
            set { ViewState["CurrentOperator"] = value; }
        }

        private bool StartNewNumber
        {
            get { return ViewState["StartNewNumber"] != null && (bool)ViewState["StartNewNumber"]; }
            set { ViewState["StartNewNumber"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Display.Text = "0";
            }
        }

        protected void btnNumber_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;

            if (StartNewNumber || Display.Text == "0" || Display.Text.StartsWith("Error"))
            {
                Display.Text = button.Text;
            }
            else
            {
                Display.Text += button.Text;
            }

            StartNewNumber = false;
        }

        protected void btnOperator_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            int number;

            if (int.TryParse(Display.Text, out number))
            {
                PreviousNumber = Display.Text;
                CurrentOperator = button.Text;
                StartNewNumber = true;
            }
        }

        protected void btnEqual_Click(object sender, EventArgs e)
        {
            int firstNumber;
            int secondNumber;
            int result;

            if (!int.TryParse(PreviousNumber, out firstNumber) ||
                !int.TryParse(Display.Text, out secondNumber) || CurrentOperator == "")
            {
                return;
            }

            if (CurrentOperator == "+")
            {
                result = firstNumber + secondNumber;
            }
            else if (CurrentOperator == "-")
            {
                result = firstNumber - secondNumber;
            }
            else if (CurrentOperator == "*")
            {
                result = firstNumber * secondNumber;
            }
            else if (CurrentOperator == "/")
            {
                if (secondNumber == 0)
                {
                    Display.Text = "Cannot divide by zero";
                    PreviousNumber = "";
                    CurrentOperator = "";
                    StartNewNumber = true;
                    return;
                }

                result = firstNumber / secondNumber;
            }
            else
            {
                return;
            }

            Display.Text = result.ToString();
            PreviousNumber = "";
            CurrentOperator = "";
            StartNewNumber = true;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Display.Text = "0";
            PreviousNumber = "";
            CurrentOperator = "";
            StartNewNumber = false;
        }
    }
}
