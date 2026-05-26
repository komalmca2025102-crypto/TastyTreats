using System;

namespace TastyTreats
{
    public partial class ChatBot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                litChat.Text +=
                "<div class='bot-msg'>🤖 Hello! Welcome to TastyTreats AI Assistant.</div>";

                litChat.Text +=
                "<div class='bot-msg'>🍕 Ask me about menu, offers, delivery or food items.</div>";
            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            string userMessage =
            txtMessage.Text.ToLower();

            string botReply = "";



            if (userMessage.Contains("hello")
            || userMessage.Contains("hi"))
            {
                botReply =
                "👋 Hello! How can I help you today?";
            }



            else if (userMessage.Contains("pizza"))
            {
                botReply =
                "🍕 We have Veg Pizza, Cheese Pizza and Farmhouse Pizza.";
            }



            else if (userMessage.Contains("burger"))
            {
                botReply =
                "🍔 Our Burger combo is very popular.";
            }



            else if (userMessage.Contains("momos"))
            {
                botReply =
                "🥟 Steam Momos and Fried Momos are available.";
            }



            else if (userMessage.Contains("pasta"))
            {
                botReply =
                "🍝 White Sauce Pasta and Red Sauce Pasta are available.";
            }



            else if (userMessage.Contains("noodles"))
            {
                botReply =
                "🍜 Veg Noodles and Hakka Noodles are available.";
            }



            else if (userMessage.Contains("cold drink")
            || userMessage.Contains("coke")
            || userMessage.Contains("pepsi"))
            {
                botReply =
                "🥤 We have Coke, Pepsi and Sprite.";
            }



            else if (userMessage.Contains("timing")
            || userMessage.Contains("open"))
            {
                botReply =
                "🕒 We are open from 10 AM to 11 PM.";
            }



            else if (userMessage.Contains("payment"))
            {
                botReply =
                "💳 We accept UPI, Cards and Cash On Delivery.";
            }



            else if (userMessage.Contains("track order")
            || userMessage.Contains("order status"))
            {
                botReply =
                "📦 Your order will arrive soon.";
            }



            else if (userMessage.Contains("veg"))
            {
                botReply =
                "🌱 We have many delicious veg dishes available.";
            }



            else if (userMessage.Contains("spicy"))
            {
                botReply =
                "🌶️ Try our spicy Momos and Hakka Noodles.";
            }



            else if (userMessage.Contains("discount")
            || userMessage.Contains("offer"))
            {
                botReply =
                "🎁 Use coupon SAVE10 to get 10% discount.";
            }



            else if (userMessage.Contains("delivery"))
            {
                botReply =
                "🚚 Delivery usually takes 30 minutes.";
            }



            else if (userMessage.Contains("thank"))
            {
                botReply =
                "😊 You're welcome!";
            }



            else if (userMessage.Contains("bye"))
            {
                botReply =
                "👋 Thank you for visiting TastyTreats.";
            }



            else
            {
                botReply =
                "🤖 Sorry, I didn't understand that.";
            }



            litChat.Text +=
            "<div class='user-msg'>"
            + txtMessage.Text +
            "</div>";



            litChat.Text +=
            "<div class='bot-msg'>"
            + botReply +
            "</div>";



            txtMessage.Text = "";
        }
    }
}