using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using System.Web.UI.WebControls;
using Stripe.Checkout;
using Stripe;

namespace Linflax
{
    public partial class Plan : Page
    {
        public string sessionId = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BuyBasic(object sender, EventArgs e)
        {
            StripeConfiguration.ApiKey = "sk_test_TTQ2cPN1BOFG1tmVOecP6hHW00X9vNC8D6";
            var options = new SessionCreateOptions
            {
                SuccessUrl = "https://synblend.com/success",
                CancelUrl = "https://synblend.com/cancel",
                PaymentMethodTypes = new List<string> {
          "card",
        },
                LineItems = new List<SessionLineItemOptions> {
          new SessionLineItemOptions {
            Name = "Linflax Basic Plan",
            Description = "A basic plan for basic work.  Enjoy the best with two limited features only.",
            Amount = 50000,
            Currency = "ZAR",
            Quantity = 1,
          },
        },
            };

            var service = new SessionService();
            Session session = service.Create(options);
            sessionId = session.Id;
        }
    }
}