<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Home.aspx.cs"
Inherits="TastyTreats.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<title>TastyTreats Home</title>

<style>

body
{
    margin: 0;
    font-family: Arial;
    background-color: #111827;
}





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





.hero
{
    height: 90vh;
    background-image: url('Images/pizza.jpg');
    background-size: cover;
    background-position: center;
    display: flex;
    align-items: center;
    justify-content: center;
}





.hero-box
{
    background: rgba(0,0,0,0.7);
    padding: 50px;
    border-radius: 20px;
    text-align: center;
    width: 600px;
}

.hero-box h1
{
    color: orange;
    font-size: 65px;
    margin-bottom: 20px;
}

.hero-box p
{
    color: white;
    font-size: 28px;
    margin-bottom: 30px;
}





.btn
{
    padding: 14px 28px;
    margin: 10px;
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




.chatbot-btn
{
    position: fixed;
    bottom: 20px;
    right: 20px;
    width: 70px;
    height: 70px;
    border-radius: 50%;
    border: none;
    background-color: orange;
    color: white;
    font-size: 30px;
    cursor: pointer;
    box-shadow: 0px 0px 10px black;
}

.chatbot-btn:hover
{
    background-color: orangered;
}
/* FLOATING CHAT BUTTON */

.floating-chat
{
    position: fixed;
    bottom: 25px;
    right: 25px;
    width: 75px;
    height: 75px;
    background: linear-gradient(to right, orange, orangered);
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 35px;
    color: white;
    cursor: pointer;
    box-shadow: 0px 0px 20px black;
    transition: 0.3s;
    animation: float 2s infinite;
}

.floating-chat:hover
{
    transform: scale(1.1);
}



@keyframes float
{
    0%
    {
        transform: translateY(0px);
    }

    50%
    {
        transform: translateY(-10px);
    }

    100%
    {
        transform: translateY(0px);
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





<div class="hero">

<div class="hero-box">

<h1>TastyTreats 🍕</h1>

<p>Delicious Food Delivered Fast</p>

<asp:Button
ID="btnLogin"
runat="server"
Text="Login"
CssClass="btn"
PostBackUrl="~/Login.aspx" />

<asp:Button
ID="btnRegister"
runat="server"
Text="Register"
CssClass="btn"
PostBackUrl="~/Register.aspx" />

<asp:Button
ID="btnMenu"
runat="server"
Text="Explore Menu"
CssClass="btn"
PostBackUrl="~/Menu.aspx" />

</div>

</div>



<!

<a href="ChatBot.aspx">

<button
type="button"
class="chatbot-btn">

💬

</button>

</a>


<a href="ChatBot.aspx">

<div class="floating-chat">

💬

</div>

</a>
</form>

</body>

</html>