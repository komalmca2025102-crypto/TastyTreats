<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="ChatBot.aspx.cs"
Inherits="TastyTreats.ChatBot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<title>TastyTreats AI ChatBot</title>

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
    font-size: 40px;
    font-weight: bold;
}

.nav-links a
{
    color: white;
    text-decoration: none;
    margin-left: 30px;
    font-size: 20px;
}

.nav-links a:hover
{
    color: orange;
}



/* CHAT CONTAINER */

.chat-container
{
    width: 550px;
    margin: 40px auto;
    background-color: #1f2937;
    border-radius: 20px;
    overflow: hidden;
    box-shadow: 0px 0px 20px black;
}



/* HEADER */

.chat-header
{
    background: linear-gradient(to right, orange, orangered);
    color: white;
    text-align: center;
    padding: 20px;
    font-size: 28px;
    font-weight: bold;
}



/* CHAT BOX */

.chat-box
{
    height: 420px;
    overflow-y: auto;
    padding: 20px;
}



/* USER MESSAGE */

.user-msg
{
    background-color: orange;
    color: white;
    padding: 12px 18px;
    border-radius: 15px;
    margin: 10px 0;
    width: fit-content;
    max-width: 75%;
    margin-left: auto;
    font-size: 17px;
}



/* BOT MESSAGE */

.bot-msg
{
    background-color: #374151;
    color: white;
    padding: 12px 18px;
    border-radius: 15px;
    margin: 10px 0;
    width: fit-content;
    max-width: 75%;
    font-size: 17px;
}



/* INPUT AREA */

.input-area
{
    display: flex;
    padding: 20px;
    background-color: #111827;
}



/* TEXTBOX */

.txt
{
    flex: 1;
    padding: 14px;
    border: none;
    border-radius: 10px;
    font-size: 17px;
}



/* BUTTON */

.btn
{
    margin-left: 15px;
    padding: 14px 24px;
    border: none;
    border-radius: 10px;
    background: linear-gradient(to right, orange, orangered);
    color: white;
    font-size: 18px;
    cursor: pointer;
}

.btn:hover
{
    background-color: darkred;
}



/* SCROLLBAR */

.chat-box::-webkit-scrollbar
{
    width: 8px;
}

.chat-box::-webkit-scrollbar-thumb
{
    background: orange;
    border-radius: 10px;
}

</style>

</head>

<body>

<form id="form1" runat="server">



<!-- NAVBAR -->

<div class="navbar">

<div class="logo">
TastyTreats AI
</div>

<div class="nav-links">

<a href="Home.aspx">Home</a>

<a href="Menu.aspx">Menu</a>

<a href="Cart.aspx">Cart</a>

<a href="Login.aspx">Login</a>

</div>

</div>



<!-- CHATBOT -->

<div class="chat-container">

<div class="chat-header">

🤖 AI Food Assistant

</div>



<div class="chat-box">

<asp:Literal
ID="litChat"
runat="server">
</asp:Literal>

</div>



<div class="input-area">

<asp:TextBox
ID="txtMessage"
runat="server"
CssClass="txt"
Placeholder="Ask something about food...">
</asp:TextBox>



<asp:Button
ID="btnSend"
runat="server"
Text="Send"
CssClass="btn"
OnClick="btnSend_Click" />

</div>

</div>

</form>



<script>

    window.onload = function () {
        var chatBox =
            document.querySelector('.chat-box');

        chatBox.scrollTop =
            chatBox.scrollHeight;
    }

</script>

</body>

</html>