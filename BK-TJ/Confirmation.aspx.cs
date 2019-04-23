using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BK_TJ.App_Code;

namespace BK_TJ
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblOrder.Text = "Order has been recorded.";
        }

        protected void Return_Click(object sender, EventArgs e)
        {
            Response.Redirect("Utilities");
        }
    }
}