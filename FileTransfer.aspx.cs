using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetPracticals
{
    public partial class FileTransfer : Page
    {
        protected TextBox txtLocation;
        protected ListBox lstSource;
        protected ListBox lstDestination;

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string item = txtLocation.Text.Trim();

            if (item != "")
            {
                lstSource.Items.Add(item);
                txtLocation.Text = "";
            }
        }

        protected void btnMoveRight_Click(object sender, EventArgs e)
        {
            if (lstSource.SelectedItem != null)
            {
                lstDestination.Items.Add(lstSource.SelectedItem.Text);
                lstSource.Items.RemoveAt(lstSource.SelectedIndex);
            }
        }

        protected void btnMoveAllRight_Click(object sender, EventArgs e)
        {
            while (lstSource.Items.Count > 0)
            {
                lstDestination.Items.Add(lstSource.Items[0].Text);
                lstSource.Items.RemoveAt(0);
            }
        }

        protected void btnMoveLeft_Click(object sender, EventArgs e)
        {
            if (lstDestination.SelectedItem != null)
            {
                lstSource.Items.Add(lstDestination.SelectedItem.Text);
                lstDestination.Items.RemoveAt(lstDestination.SelectedIndex);
            }
        }

        protected void btnMoveAllLeft_Click(object sender, EventArgs e)
        {
            while (lstDestination.Items.Count > 0)
            {
                lstSource.Items.Add(lstDestination.Items[0].Text);
                lstDestination.Items.RemoveAt(0);
            }
        }
    }
}
