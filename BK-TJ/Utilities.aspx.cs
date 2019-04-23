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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["Search"] as string))
            {
                if (!Session["Search"].ToString().Contains("'") && !Session["Search"].ToString().Contains("--"))
                {
                    dlUtilities.DataSource = SQL.SelectQuery("Select * from Products where Name like '%" + Session["Search"].ToString() + "%'");
                    dlUtilities.DataBind();
                }
            }
            else
            {
                dlUtilities.DataSource = SQL.SelectQuery("Select * from Products where Type=1 or Type=2");
                dlUtilities.DataBind();
            }
        }

        protected void software_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Utilities/Software");
        }

        protected void hardware_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Utilties/Hardware");
        }

        protected void installations_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Utilties/Installations");
        }

    }
}