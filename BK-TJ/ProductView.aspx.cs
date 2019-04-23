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
    public partial class WebForm8 : System.Web.UI.Page
    {
        string Id;
        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["ID"].ToString();
        }

        protected void Add_Click(object sender, EventArgs e)
        {
            CartItem item = new CartItem();
            DataTable dt = SQL.SelectQuery("Select * from Products where ID=" + Id);
            DataRow row = dt.Rows[0];

            Cart thisCart = (Cart)Session["thisCart"];
            if (thisCart == null)
            {
                thisCart = new Cart();
                Session["thisCart"] = thisCart;
            }

            thisCart.Insert(new CartItem(Int32.Parse(Id), row["Name"].ToString(), Double.Parse(row["Price"].ToString()), row["Description"].ToString(), row["Image"].ToString(), 1));
            Response.Write("<script language='javascript'>alert('Item added to Cart')</script>");
        }
    }
}