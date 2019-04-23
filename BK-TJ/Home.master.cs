using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BK_TJ
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Session["Search"] = txtSearch.Text.ToString();
            Response.Redirect("~/Utilities?Search=" + txtSearch.Text.ToString());
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Cart" + txtSearch.Text.ToString());
        }
    }
}