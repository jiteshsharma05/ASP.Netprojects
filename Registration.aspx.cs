using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetPracticals
{
    public partial class Registration : Page
    {
        protected TextBox txtUserID;
        protected TextBox txtName;
        protected TextBox txtAge;
        protected TextBox txtEmail;
        protected FileUpload fuResume;
        protected Label lblMessage;
        protected Label lblRegisteredInfo;

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Page.Validate("Registration");

            if (!Page.IsValid)
            {
                lblMessage.Text = "";
                lblRegisteredInfo.Text = "";
                return;
            }

            string resumeName = fuResume.HasFile
                ? HttpUtility.HtmlEncode(fuResume.FileName)
                : "No file selected";

            lblMessage.Text = "Registration successful";
            lblRegisteredInfo.Text = "User ID: " + HttpUtility.HtmlEncode(txtUserID.Text) + "<br />" +
                "Name: " + HttpUtility.HtmlEncode(txtName.Text) + "<br />" +
                "Age: " + HttpUtility.HtmlEncode(txtAge.Text) + "<br />" +
                "Email: " + HttpUtility.HtmlEncode(txtEmail.Text) + "<br />" +
                "Resume: " + resumeName;
        }
    }
}
