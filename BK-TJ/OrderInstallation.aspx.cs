using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BK_TJ.App_Code;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace BK_TJ
{
    public partial class WebForm7 : System.Web.UI.Page
    {

        private static string myConnectionString;

        static WebForm7()
        {
            myConnectionString = WebConfigurationManager.ConnectionStrings["DataConnection"].ConnectionString;
        }

        string Id;
        string total;
        string name;
        protected void Page_Load(object sender, EventArgs e)
        {
            Id = Request.QueryString["ID"].ToString();
            DataTable dt = SQL.SelectQuery("Select * from Products where ID=" + Id);
            DataRow dr = dt.Rows[0];
            lblName2.Text = dr[1].ToString();
            name = dr[1].ToString();
            lblPrice2.Text = dr[2].ToString();
            total = dr[2].ToString();
            CompareValidator9.ValueToCompare = DateTime.Now.ToShortDateString();
        }

        protected void Complete_Click(object sender, EventArgs e)
        {
            string fname = txtFname.Text.ToString();
            string lname = txtLname.Text.ToString();
            string address = txtAddress.Text.ToString();
            string city = txtCity.Text.ToString();
            string state = txtState.Text.ToString();
            string zipcode = txtZipcode.Text.ToString();
            string email = txtEmail.Text.ToString();
            string phone = txtPhone.Text.ToString();

            string noc = txtNameOnCard.Text.ToString();
            string cardNum = txtCardNum.Text.ToString();
            string expMonth = txtExpMonth.Text.ToString();
            string expYear = txtExpYear.Text.ToString();
            string ccv = txtCcv.Text.ToString();

            string scheduled = txtSchedule2.Text.ToString();

            DataTable dt = SQL.SelectQuery("Select * from Customers where Email=" + email);
            DataRow dr;
            try
            {
                dr = dt.Rows[0];
            }
            catch (Exception ex)
            {
             
            }

            string sqlCustomer = "Insert into Customers (Fname, Lname, Address, City, State, Zipcode, Email, Phone) values (@fname, @lname, @address, @city, @state, @zipcode, @email, @phone)";
            
            using (SqlConnection cnn = new SqlConnection(myConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = sqlCustomer;
                    cmd.Parameters.AddWithValue("@fname", fname);
                    cmd.Parameters.AddWithValue("@lname", lname);
                    cmd.Parameters.AddWithValue("@address", address);
                    cmd.Parameters.AddWithValue("@city", city);
                    cmd.Parameters.AddWithValue("@state", state);
                    cmd.Parameters.AddWithValue("@zipcode", zipcode);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@phone", phone);
                    try
                    {
                        cnn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        //Response.Write("<script language='javascript'>alert('Error has occured.');</script>");
                        System.Diagnostics.Debug.WriteLine(ex.Message);
                    }
                    finally
                    {
                        cnn.Close();
                    }
                }
            }

            string sqlPaymentInfo = "Insert into PaymentInfo (NameOnCard, CardNum, ExpMonth, ExpYear, Ccv) values (@noc, @cardnum, @expmonth, @expyear, @ccv)";

            using (SqlConnection cnn = new SqlConnection(myConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = sqlPaymentInfo;
                    cmd.Parameters.AddWithValue("@noc", noc);
                    cmd.Parameters.AddWithValue("@cardnum", cardNum);
                    cmd.Parameters.AddWithValue("@expmonth", expMonth);
                    cmd.Parameters.AddWithValue("@expyear", expYear);
                    cmd.Parameters.AddWithValue("@ccv", ccv);
                    try
                    {
                        cnn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        //Response.Write("<script language='javascript'>alert('Error has occured.');</script>");
                        System.Diagnostics.Debug.WriteLine("PAYMENT NOT FULLFILLED ----------------> " + ex.Message);
                    }
                    finally
                    {
                        cnn.Close();
                    }
                }
            }

            dt = SQL.SelectQuery("Select top 1 * from Customers order by Id desc");
            dr = dt.Rows[0];
            string Cid = dr[0].ToString();
            dt = SQL.SelectQuery("Select top 1 * from PaymentInfo order by Id desc");
            dr = dt.Rows[0];
            string PaymentInfo = dr[0].ToString();

            string sqlOrderInstallation = "Insert into OrderInstallation (Cid, Pid, PaymentInfo, Total, Scheduled) values (@cid, @pid, @paymentinfo, @total, @scheduled)";
            using (SqlConnection cnn = new SqlConnection(myConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cnn;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = sqlOrderInstallation;
                    cmd.Parameters.AddWithValue("@cid", Cid);
                    cmd.Parameters.AddWithValue("@pid", Id);
                    cmd.Parameters.AddWithValue("@paymentinfo", PaymentInfo);
                    cmd.Parameters.AddWithValue("@total", total);
                    cmd.Parameters.AddWithValue("@scheduled", scheduled);
                    try
                    {
                        cnn.Open();
                        cmd.ExecuteNonQuery();
                    }
                    catch (SqlException ex)
                    {
                        //Response.Write("<script language='javascript'>alert('Error has occured.');</script>");
                        System.Diagnostics.Debug.WriteLine(ex.Message);
                    }
                    finally
                    {
                        cnn.Close();
                    }
                }
            }

            dt = SQL.SelectQuery("Select top 1 * from OrderInstallation order by Id desc");
            dr = dt.Rows[0];
            string OrderId = dr[0].ToString();
            Response.Redirect("Confirmation?Order=" + OrderId + "&Name=" + name);

        }
    }
}