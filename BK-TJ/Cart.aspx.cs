using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BK_TJ.App_Code;

namespace BK_TJ
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        Cart thisCart;
        private bool isEditMode = false;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["thisCart"] == null)
            {
                Session["thisCart"] = new Cart();
            }
            thisCart = (Cart)Session["thisCart"];

            if (!Page.IsPostBack)
            {
                FillData();
            }

        }

        protected bool IsInEditMode
        {

            get { return this.isEditMode; }

            set { this.isEditMode = value; }

        }


        private void FillData()
        {
            gvCart.DataSource = thisCart.Items;
            gvCart.DataBind();
            if (thisCart.Items.Count == 0)
            {
                lblGrandTotal.Visible = false;
            }
            else
            {
                lblGrandTotal.Text = string.Format("Your Cart's Total: {0,19:C}", thisCart.Total);
                lblGrandTotal.Visible = true;
            }
        }

        protected void gvCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvCart.EditIndex = -1;
            FillData();
        }

        protected void gvCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            thisCart.Delete(e.RowIndex);
            FillData();
        }

        protected void gvCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txtQuantity = gvCart.Rows[e.RowIndex].Cells[1].Controls[0] as TextBox;
            int quantity;
            if (!Int32.TryParse(txtQuantity.Text, out quantity))
            {
                Response.Write("<script>alert('Please enter a valid number!')</script>");
                return;
            }
            thisCart.Update(e.RowIndex, quantity);
            gvCart.EditIndex = -1;
            FillData();
        }

        protected void gvCart_RowEditing(object sender, GridViewEditEventArgs e)
        {
            isEditMode = true;
            gvCart.EditIndex = e.NewEditIndex;
            FillData();
        }


    }
}