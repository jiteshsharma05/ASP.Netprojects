<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PizzaOrder.aspx.cs" Inherits="ASPNetPracticals.PizzaOrder" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Pizza Order</title>
    <style type="text/css">
        body { font-family: Arial, sans-serif; }
        .page { width: 700px; margin: 20px auto; }
        .pizza-image { width: 130px; height: 90px; border: 1px solid #777; }
        .order-table { width: 100%; border: 1px solid #777; padding: 10px; }
        .order-table td { padding: 5px; vertical-align: top; }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="page">
            <h1 style="text-align: center;">PIZZA ORDER</h1>

            <h3>Select a Pizza</h3>
            <table>
                <tr>
                    <td>
                        <asp:ImageButton ID="imgPizza1" runat="server" ImageUrl="~/Images/pizza1.svg" AlternateText="Pizza 1" ToolTip="Pizza 1" CssClass="pizza-image" OnClick="pizzaImage_Click" />
                        <br />Pizza 1
                    </td>
                    <td>
                        <asp:ImageButton ID="imgPizza2" runat="server" ImageUrl="~/Images/pizza2.svg" AlternateText="Pizza 2" ToolTip="Pizza 2" CssClass="pizza-image" OnClick="pizzaImage_Click" />
                        <br />Pizza 2
                    </td>
                    <td>
                        <asp:ImageButton ID="imgPizza3" runat="server" ImageUrl="~/Images/pizza3.svg" AlternateText="Pizza 3" ToolTip="Pizza 3" CssClass="pizza-image" OnClick="pizzaImage_Click" />
                        <br />Pizza 3
                    </td>
                    <td>
                        <asp:ImageButton ID="imgPizza4" runat="server" ImageUrl="~/Images/pizza4.svg" AlternateText="Pizza 4" ToolTip="Pizza 4" CssClass="pizza-image" OnClick="pizzaImage_Click" />
                        <br />Pizza 4
                    </td>
                </tr>
            </table>
            <asp:Label ID="lblSelectedPizza" runat="server" Text="Selected Pizza: None"></asp:Label>

            <h3>Pizza Details</h3>
            <table class="order-table">
                <tr>
                    <td>
                        <strong>Pizza Size:</strong><br />
                        <asp:RadioButton ID="radLarge" runat="server" GroupName="PizzaSize" Text="Large" /><br />
                        <asp:RadioButton ID="radSmall" runat="server" GroupName="PizzaSize" Text="Small" /><br />
                        <asp:RadioButton ID="radMedium" runat="server" GroupName="PizzaSize" Text="Medium" />
                    </td>
                    <td>
                        <strong>Toppings:</strong><br />
                        <asp:CheckBox ID="chkCheese" runat="server" Text="Cheese" /><br />
                        <asp:CheckBox ID="chkMushroom" runat="server" Text="Mushroom" /><br />
                        <asp:CheckBox ID="chkOnion" runat="server" Text="Onion" /><br />
                        <asp:CheckBox ID="chkPaneer" runat="server" Text="Paneer" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <strong>Extra Topping:</strong><br />
                        <asp:TextBox ID="txtExtraTopping" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <strong>Quantity:</strong><br />
                        <asp:TextBox ID="txtQuantity" runat="server" Text="1" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: right;">
                        <asp:Button ID="btnCheckout" runat="server" Text="Checkout" OnClick="btnCheckout_Click" />
                    </td>
                </tr>
            </table>

            <h3>Generated Details</h3>
            <p>Pizza: <asp:Label ID="lblOrderPizza" runat="server"></asp:Label></p>
            <p>Size: <asp:Label ID="lblOrderSize" runat="server"></asp:Label></p>
            <p>Toppings: <asp:Label ID="lblOrderToppings" runat="server"></asp:Label></p>
            <p>Quantity: <asp:Label ID="lblOrderQuantity" runat="server"></asp:Label></p>
            <p>Total Price: <asp:Label ID="lblOrderTotal" runat="server"></asp:Label></p>

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <br /><br />
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
