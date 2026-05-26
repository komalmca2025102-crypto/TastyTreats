<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Menu.aspx.cs"
Inherits="TastyTreats.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<title>TastyTreats - Food Menu</title>

<style>

body
{
    font-family: Arial;
    background-color: #111827;
    margin: 0;
    padding: 0;
}




.navbar
{
    background-color: black;
    padding: 20px 40px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    box-shadow: 0px 0px 15px black;
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





.container
{
    width: 92%;
    margin: 40px auto;
    background: rgba(255,255,255,0.95);
    backdrop-filter: blur(10px);
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0px 0px 20px black;
}





h2
{
    text-align: center;
    color: darkred;
    font-size: 50px;
    margin-bottom: 35px;
}





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
    vertical-align: middle;
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





.foodimg
{
    width: 180px;
    height: 140px;
    border-radius: 15px;
    object-fit: contain;
    background-color: white;
    padding: 5px;
    transition: 0.3s;
}

.foodimg:hover
{
    transform: scale(1.08);
}





.cartbtn
{
    background: linear-gradient(to right, orange, orangered);
    color: white;
    border: none;
    padding: 12px 22px;
    font-size: 17px;
    border-radius: 10px;
    cursor: pointer;
    font-weight: bold;
    transition: 0.3s;
}

.cartbtn:hover
{
    transform: scale(1.05);
    background: linear-gradient(to right, darkorange, red);
}





@media screen and (max-width: 768px)
{
    .navbar
    {
        flex-direction: column;
        text-align: center;
    }

    .nav-links
    {
        margin-top: 15px;
    }

    .nav-links a
    {
        display: inline-block;
        margin: 10px;
    }

    h2
    {
        font-size: 35px;
    }

    .foodimg
    {
        width: 120px;
        height: 100px;
    }
}

</style>

</head>

<body>

<form id="form1" runat="server">





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





<div class="container">

<h2>Food Menu 🍕</h2>

<asp:GridView
ID="GridView1"
runat="server"
AutoGenerateColumns="False"
CssClass="grid"
OnRowCommand="GridView1_RowCommand">

<Columns>



<asp:BoundField
DataField="FoodID"
HeaderText="Food ID" />





<asp:TemplateField HeaderText="Food Image">

<ItemTemplate>

<img
src='<%# Eval("ImageURL") %>'
class="foodimg" />

</ItemTemplate>

</asp:TemplateField>



<asp:BoundField
DataField="FoodName"
HeaderText="Food Name" />



<asp:BoundField
DataField="Price"
HeaderText="Price" />



<asp:BoundField
DataField="Category"
HeaderText="Category" />





<asp:ButtonField
ButtonType="Button"
Text="Add To Cart"
CommandName="AddCart"
ControlStyle-CssClass="cartbtn" />



</Columns>

</asp:GridView>

</div>

</form>

</body>

</html>