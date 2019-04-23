using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BK_TJ.App_Code;

namespace BK_TJ
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Id;
            dlUtilities.DataSource = SQL.SelectQuery("Select * from Products where Type=2");
            dlUtilities.DataBind();
        }
    }
}