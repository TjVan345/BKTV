﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BK_TJ.App_Code;

namespace BK_TJ
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        string Id;
        protected void Page_Load(object sender, EventArgs e)
        {
            dlUtilities.DataSource = SQL.SelectQuery("Select * from Products where Type=4");
            dlUtilities.DataBind();
        }
        
    }
}