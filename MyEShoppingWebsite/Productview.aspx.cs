using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Globalization;
using System.Threading;

namespace MyEShoppingWebsite
{
    public partial class Productview : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["MyEShoppingDB"].ConnectionString;

        public object MyQty { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["PID"] != null)
            {
                if (!IsPostBack)
                {
                    divSuccess.Visible = false;
                    BindProductImage();
                    BindProductDetails();
                    BindCartNumber();
                }
            }
            else
            {
                Response.Redirect("~/Products.aspx");
            }
        }
        private void BindProductDetails()
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select* from tblProducts where PID='" + PID + "'", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrProductdetails.DataSource = dt;
                        rptrProductdetails.DataBind();
                    }
                }
            }
        }
        private void BindProductImage()
        {
            Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("select* from tblProductImages where PID='"+PID+"'", con))
                {
                    cmd.CommandType = CommandType.Text;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrImage.DataSource = dt;
                        rptrImage.DataBind();
                    }
                }
            }
        }
        protected string GetActiveImgClass(int ItemIndex)
        {
            if(ItemIndex==0)
            {
                return "active";

            }
            else
            {
                return "";
            }
        }
        protected void RptrProductDetails_ItemDataBound(object sender,RepeaterItemEventArgs e)
        {
            if(e.Item.ItemType==ListItemType.Item || e.Item.ItemType==ListItemType.AlternatingItem)
            {
                string BrandID = (e.Item.FindControl("hfBrandID") as HiddenField).Value;
                string CatID = (e.Item.FindControl("hfCatID") as HiddenField).Value;
                string SubCatID = (e.Item.FindControl("hfSubCatID") as HiddenField).Value;
                string GenderID = (e.Item.FindControl("hfGenderID") as HiddenField).Value;

                RadioButtonList rblsize = e.Item.FindControl("rblsize") as RadioButtonList;

                using (SqlConnection con = new SqlConnection(CS))
                {
                    using (SqlCommand cmd = new SqlCommand("select* from tblSize where BrandID='" + BrandID + "' and CatID='"+ CatID+ "' and SubCatID='"+ SubCatID+ "' and GenderID='"+ GenderID+"'", con))
                    {
                        cmd.CommandType = CommandType.Text;
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            sda.Fill(dt);
                            rblsize.DataSource = dt;
                            rblsize.DataTextField = "SizeName";
                            rblsize.DataValueField = "SizeID";
                            rblsize.DataBind();
                        }
                    }
                }

            }
        }
        protected void btnAddtoCart_Click(object sender, EventArgs e)
        {
            string SelectedSize = String.Empty;
            foreach (RepeaterItem item in rptrProductdetails.Items)
            {
                if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                {
                    var rblist = item.FindControl("rblsize") as RadioButtonList;
                    SelectedSize = rblist.SelectedValue;
                    var lblError = item.FindControl("lblError") as Label;
                    lblError.Text = string.Empty;
                }
            }

            if (!string.IsNullOrWhiteSpace(SelectedSize))
            {
                Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
                HttpCookie cartCookie = Request.Cookies["CartPID"];

                if (cartCookie != null && !string.IsNullOrEmpty(cartCookie.Value))
                {
                    string CookiePID = cartCookie.Value.Split('=')[1];
                    CookiePID = CookiePID + "," + PID + "-" + SelectedSize;

                    cartCookie.Values["CartPID"] = CookiePID;
                }
                else
                {
                    cartCookie = new HttpCookie("CartPID");
                    cartCookie.Values["CartPID"] = PID.ToString() + "-" + SelectedSize;
                }

                cartCookie.Expires = DateTime.Now.AddDays(30);
                Response.Cookies.Add(cartCookie);
                Response.Redirect("~/Productview.aspx?PID=" + PID);
            }
            else
            {
                foreach (RepeaterItem item in rptrProductdetails.Items)
                {
                    if (item.ItemType == ListItemType.Item || item.ItemType == ListItemType.AlternatingItem)
                    {
                        var lblError = item.FindControl("lblError") as Label;
                        lblError.Text = "Please Select a Size";
                    }
                }
            }
        }
        protected override void InitializeCulture()
        {
            CultureInfo ci = new CultureInfo("en-IN");
            ci.NumberFormat.CurrencySymbol = "₹";
            Thread.CurrentThread.CurrentCulture = ci;

            base.InitializeCulture();
        }

        public void BindCartNumber()
        {
            if (Session["USERID"] != null)
            {
                string UserIDD = Session["USERID"].ToString();
                DataTable dt = new DataTable();
                using (SqlConnection con = new SqlConnection(CS))
                {
                    SqlCommand cmd = new SqlCommand("SP_BindCartNumberz", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.AddWithValue("@UserID", UserIDD);
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        sda.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            string CartQuantity = dt.Compute("Sum(Qty)", "").ToString();
                            CartBadge.InnerText = CartQuantity;

                        }
                        else
                        {
                            CartBadge.InnerText = 0.ToString();
                        }
                    }
                }
            }
        }

        private void AddToCartProduction()
        {
            if (Session["Username"] != null)
            {
                Int32 UserID = Convert.ToInt32(Session["USERID"].ToString());
                Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
                using (SqlConnection con = new SqlConnection(CS))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SP_IsProductExistInCart", con)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.AddWithValue("@UserID", UserID);
                    cmd.Parameters.AddWithValue("@PID", PID);
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            Int32 updateQty = Convert.ToInt32(dt.Rows[0]["Qty"].ToString());
                            SqlCommand myCmd = new SqlCommand("SP_UpdateCart", con)
                            {
                                CommandType = CommandType.StoredProcedure
                            };
                            myCmd.Parameters.AddWithValue("@Quantity", updateQty + 1);
                            myCmd.Parameters.AddWithValue("@CartPID", PID);
                            myCmd.Parameters.AddWithValue("@UserID", UserID);
                            Int64 CartID = Convert.ToInt64(myCmd.ExecuteScalar());
                            BindCartNumber();
                            divSuccess.Visible = true;
                        }
                        else
                        {
                            SqlCommand myCmd = new SqlCommand("SP_InsertCart", con)
                            {
                                CommandType = CommandType.StoredProcedure
                            };
                            myCmd.Parameters.AddWithValue("@UID", UserID);
                            myCmd.Parameters.AddWithValue("@PID", Session["CartPID"].ToString());
                            myCmd.Parameters.AddWithValue("@PName", Session["myPName"].ToString());
                            myCmd.Parameters.AddWithValue("@PPrice", Session["myPPrice"].ToString());
                            myCmd.Parameters.AddWithValue("@PSelPrice", Session["myPSelPrice"].ToString());
                            myCmd.Parameters.AddWithValue("@Qty", MyQty);
                            Int64 CartID = Convert.ToInt64(myCmd.ExecuteScalar());
                            con.Close();
                            BindCartNumber();
                            divSuccess.Visible = true;
                        }
                    }
                }
            }
            else
            {
                Int64 PID = Convert.ToInt64(Request.QueryString["PID"]);
                Response.Redirect("SignIn.aspx?rurl=" + PID);
            }
        }

        protected void btnCart2_ServerClick(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

    }

}