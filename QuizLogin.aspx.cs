using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetPracticals
{
    public partial class QuizLogin : Page
    {
        protected TextBox txtUsername;
        protected TextBox txtPassword;
        protected Label lblMessage;

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtUsername.Text) || string.IsNullOrWhiteSpace(txtPassword.Text))
            {
                lblMessage.Text = "Please enter both username and password.";
                return;
            }

            Session["QuizUser"] = txtUsername.Text.Trim();
            Response.Redirect("OnlineQuiz.aspx");
        }
    }
}
