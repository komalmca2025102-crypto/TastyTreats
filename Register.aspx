<%@ Page Language="C#" AutoEventWireup="true"
CodeBehind="Register.aspx.cs"
Inherits="TastyTreats.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<title>Register</title>

<style>

body
{
    margin: 0;
    padding: 0;
    font-family: Arial;
    background-image: url('Images/pasta.jpg');
    background-size: cover;
    background-position: center;
}



/* OVERLAY */

.overlay
{
    width: 100%;
    height: 100vh;
    background: rgba(0,0,0,0.7);
    display: flex;
    justify-content: center;
    align-items: center;
}



/* REGISTER BOX */

.container
{
    width: 450px;
    background: rgba(255,255,255,0.1);
    backdrop-filter: blur(10px);
    padding: 40px;
    border-radius: 20px;
    text-align: center;
    box-shadow: 0px 0px 20px black;
}

h2
{
    color: orange;
    font-size: 42px;
    margin-bottom: 30px;
}



/* TEXTBOX */

.txt
{
    width: 90%;
    padding: 14px;
    margin-top: 18px;
    border: none;
    border-radius: 10px;
    font-size: 18px;
}



/* BUTTON */

.btn
{
    margin-top: 25px;
    padding: 14px 28px;
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



/* LINK */

.link
{
    margin-top: 20px;
    color: white;
    font-size: 18px;
}

.link a
{
    color: orange;
    text-decoration: none;
}

.link a:hover
{
    text-decoration: underline;
}

</style>

</head>

<body>

<form id="form1" runat="server">

<div class="overlay">

<div class="container">

<h2>Create Account 🍝</h2>

<asp:TextBox
ID="txtName"
runat="server"
CssClass="txt"
Placeholder="Enter Full Name">
</asp:TextBox>

<br />

<asp:TextBox
ID="txtEmail"
runat="server"
CssClass="txt"
Placeholder="Enter Email">
</asp:TextBox>

<br />

<asp:TextBox
ID="txtPassword"
runat="server"
TextMode="Password"
CssClass="txt"
Placeholder="Enter Password">
</asp:TextBox>

<br />

<asp:Button
ID="btnRegister"
runat="server"
Text="Register"
CssClass="btn"
OnClick="btnRegister_Click" />

<div class="link">

Already have account?

<a href="Login.aspx">
Login Here
</a>

</div>

</div>

</div>

</form>

</body>

</html>