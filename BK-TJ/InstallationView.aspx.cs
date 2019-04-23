using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BK_TJ
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        string Id;
        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["ID"].ToString();
        }

        protected void Order_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderInstallation?ID=" + Id);
        }
    }
}