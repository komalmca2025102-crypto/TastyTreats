<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Cart.aspx.cs"
Inherits="TastyTreats.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<title>My Cart</title>

<style>

body
{
    margin: 0;
    padding: 0;
    font-family: Arial;
    background-color: #111827;
}



/* NAVBAR */

.navbar
{
    background-color: black;
    padding: 20px 40px;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.logo
{
    color: orange;
    font-size: 45px;
    font-weight: bold;
}

.nav-links a
{
    color: white;
    text-decoration: none;
    margin-left: 30px;
    font-size: 22px;
    transition: 0.3s;
}

.nav-links a:hover
{
    color: orange;
}



/* CONTAINER */

.container
{
    width: 92%;
    margin: 40px auto;
    background: rgba(255,255,255,0.95);
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0px 0px 20px black;
}



/* TITLE */

h2
{
    text-align: center;
    color: darkred;
    font-size: 50px;
    margin-bottom: 35px;
}



/* GRID */

.grid
{
    width: 100%;
    border-collapse: collapse;
}

.grid th
{
    background: linear-gradient(to right, orange, orangered);
    color: white;
    padding: 18px;
    font-size: 22px;
}

.grid td
{
    padding: 18px;
    text-align: center;
    font-size: 18px;
}

.grid tr:nth-child(even)
{
    background-color: #fff3e0;
}

.grid tr:hover
{
    background-color: #ffe0b2;
    transition: 0.3s;
}



/* BILL SECTION */

.bill
{
    margin-top: 40px;
    text-align: center;
}



/* LABELS */

.bill label,
.bill span
{
    font-size: 24px;
}



/* TEXTBOX */

.txt
{
    padding: 14px;
    width: 280px;
    border-radius: 10px;
    border: 1px solid gray;
    font-size: 18px;
}



/* BUTTON */

.btn
{
    padding: 14px 28px;
    margin-top: 15px;
    background: linear-gradient(to right, orange, orangered);
    border: none;
    color: white;
    font-size: 20px;
    border-radius: 10px;
    cursor: pointer;
    transition: 0.3s;
}

.btn:hover
{
    transform: scale(1.05);
    background: linear-gradient(to right, darkorange, red);
}



/* FINAL AMOUNT */

.final
{
    color: darkgreen;
    font-size: 34px;
    font-weight: bold;
}

</style>

</head>

<body>

<form id="form1" runat="server">

<!-- NAVBAR -->

<div class="navbar">

<div class="logo">
TastyTreats
</div>

<div class="nav-links">

<a href="Home.aspx">Home</a>

<a href="Menu.aspx">Menu</a>

<a href="Cart.aspx">Cart</a>

<a href="Login.aspx">Login</a>

</div>

</div>



<!-- CONTAINER -->

<div class="container">

<h2>My Cart 🛒</h2>

<asp:GridView
ID="GridView1"
runat="server"
AutoGenerateColumns="true"
CssClass="grid">
</asp:GridView>



<!-- BILL -->

<div class="bill">

<br />

<asp:Label
ID="lblTotal"
runat="server"
Font-Bold="true"
Font-Size="25px">
</asp:Label>

<br /><br />

<asp:Label
ID="lblGST"
runat="server"
Font-Size="22px">
</asp:Label>

<br /><br />

<asp:TextBox
ID="txtCoupon"
runat="server"
CssClass="txt"
Placeholder="Enter Coupon Code">
</asp:TextBox>

<br /><br />

<asp:Button
ID="btnApply"
runat="server"
Text="Apply Coupon"
CssClass="btn"
OnClick="btnApply_Click" />

<br /><br />

<asp:Label
ID="lblDiscount"
runat="server"
Font-Size="22px">
</asp:Label>

<br /><br />

<asp:Label
ID="lblFinal"
runat="server"
CssClass="final">
</asp:Label>

<br /><br />

<asp:Button
ID="btnCheckout"
runat="server"
Text="Place Order"
CssClass="btn"
OnClick="btnCheckout_Click" />

</div>

</div>

</form>

</body>

</html>