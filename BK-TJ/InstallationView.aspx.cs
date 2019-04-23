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
    public partial class WebForm9 : System.Web.UI.Page
    {
        string Id;
        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["ID"].ToString();
            DataTable dt = SQL.SelectQuery("Select * from Products where ID=" + Id);
            DataRow dr = dt.Rows[0];
            lblName.Text = dr[1].ToString();
            lblPrice.Text = "Price: " + dr[2].ToString();
            lblDescription.Text = dr[3].ToString();
            Image1.ImageUrl = "Images/" + dr[4].ToString();
        }

        protected void Order_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrderInstallation?ID=" + Id);
        }
    }
}