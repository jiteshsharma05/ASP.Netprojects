using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNetPracticals
{
    public partial class PizzaOrder : Page
    {
        protected ImageButton imgPizza1;
        protected ImageButton imgPizza2;
        protected ImageButton imgPizza3;
        protected ImageButton imgPizza4;
        protected RadioButton radLarge;
        protected RadioButton radSmall;
        protected RadioButton radMedium;
        protected CheckBox chkCheese;
        protected CheckBox chkMushroom;
        protected CheckBox chkOnion;
        protected CheckBox chkPaneer;
        protected TextBox txtExtraTopping;
        protected TextBox txtQuantity;
        protected Label lblSelectedPizza;
        protected Label lblOrderPizza;
        protected Label lblOrderSize;
        protected Label lblOrderToppings;
        protected Label lblOrderQuantity;
        protected Label lblOrderTotal;
        protected Label lblMessage;
        protected Button btnCheckout;
        protected Button btnSubmit;

        private string SelectedPizza
        {
            get { return ViewState["SelectedPizza"] as string ?? ""; }
            set { ViewState["SelectedPizza"] = value; }
        }

        protected void pizzaImage_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton selectedButton = (ImageButton)sender;
            SelectedPizza = selectedButton.AlternateText;
            lblSelectedPizza.Text = "Selected Pizza: " + SelectedPizza;
            lblMessage.Text = "";
            ViewState["OrderReady"] = false;
        }

        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            if (SelectedPizza == "")
            {
                lblMessage.Text = "Please select a pizza.";
                return;
            }

            string size;
            int sizePrice;

            if (radLarge.Checked)
            {
                size = "Large";
                sizePrice = 200;
            }
            else if (radSmall.Checked)
            {
                size = "Small";
                sizePrice = 100;
            }
            else if (radMedium.Checked)
            {
                size = "Medium";
                sizePrice = 150;
            }
            else
            {
                lblMessage.Text = "Please select a pizza size.";
                return;
            }

            int quantity;
            if (!int.TryParse(txtQuantity.Text, out quantity) || quantity <= 0)
            {
                lblMessage.Text = "Please enter a quantity greater than zero.";
                return;
            }

            string toppings = "";
            int toppingPrice = 0;

            if (chkCheese.Checked)
            {
                toppings += "Cheese, ";
                toppingPrice += 20;
            }
            if (chkMushroom.Checked)
            {
                toppings += "Mushroom, ";
                toppingPrice += 20;
            }
            if (chkOnion.Checked)
            {
                toppings += "Onion, ";
                toppingPrice += 10;
            }
            if (chkPaneer.Checked)
            {
                toppings += "Paneer, ";
                toppingPrice += 30;
            }
            if (!string.IsNullOrWhiteSpace(txtExtraTopping.Text))
            {
                toppings += HttpUtility.HtmlEncode(txtExtraTopping.Text.Trim()) + ", ";
                toppingPrice += 15;
            }

            if (toppings == "")
            {
                toppings = "None";
            }
            else
            {
                toppings = toppings.Substring(0, toppings.Length - 2);
            }

            int totalPrice = (sizePrice + toppingPrice) * quantity;

            lblOrderPizza.Text = SelectedPizza;
            lblOrderSize.Text = size;
            lblOrderToppings.Text = toppings;
            lblOrderQuantity.Text = quantity.ToString();
            lblOrderTotal.Text = "Rs. " + totalPrice;
            lblMessage.Text = "";
            ViewState["OrderReady"] = true;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (ViewState["OrderReady"] == null || !(bool)ViewState["OrderReady"])
            {
                lblMessage.Text = "Please complete Checkout before submitting.";
                return;
            }

            lblMessage.Text = "Order submitted successfully.";
        }
    }
}
