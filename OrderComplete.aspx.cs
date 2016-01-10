using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CRM
{
    public partial class OrderComplete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblmessage.Text = "Order Successfully Placed !!!   THANK YOU.";
            LinkButton1.Text = "Click Here to buy New Item";
        }
    }
}