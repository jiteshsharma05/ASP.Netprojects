using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetPracticals
{
    public partial class Login : Page
    {
        protected Label lblMessage;

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Page.Validate("Login");

            if (Page.IsValid)
            {
                lblMessage.Text = "Login successful";
            }
            else
            {
                lblMessage.Text = "";
            }
        }
    }
}
