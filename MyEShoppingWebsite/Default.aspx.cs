using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MyEShoppingWebsite
{
    public partial class Default : System.Web.UI.Page
    {
        public static String CS = ConfigurationManager.ConnectionStrings["MyEShoppingDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["UserLogin"] == "YES")
            {
                Response.Redirect("UserHome.aspx?UserLogin=YES");
            }
            if (Session["UserName"] != null)
            {

                // lblSuccess.Text = "Login Success,Welcome.." + Session["UserName"].ToString();
                if (!this.IsPostBack) 
                {
                    BindProductRepeater();
                    btnSignUP.Visible = false;
                    btnSignIn.Visible = false;
                    Btnlogout.Visible = true;
                }
               
            }
            else
            {
                BindProductRepeater();
                btnSignUP.Visible = true;
                btnSignIn.Visible = true;
                Btnlogout.Visible = false;
                //Response.Redirect("~/Default.aspx");
                Response.Write("<script type='text/javascript'>alert('Login plz')</script>");
            }
        }

        private void BindCartNumber()
        {
                if (Request.Cookies["CartPID"] != null)
                {
                    string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
                    string[] ProductArray = CookiePID.Split(',');
                    int ProductCount = ProductArray.Length;
                    pCount.InnerText = ProductCount.ToString();
                }
                else
                {
                    pCount.InnerText = 0.ToString();
                }
        }

        protected void Btnlogout_Click(object sender, EventArgs e)
        {
            Session["Username"] = null;
            Session.RemoveAll();
            Response.Redirect("~/Default.aspx");
        }
        private void BindProductRepeater()
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                using (SqlCommand cmd = new SqlCommand("procBindAllProducts", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrProducts.DataSource = dt;
                        rptrProducts.DataBind();
                        if (dt.Rows.Count <= 0)
                        {
                            //Label1.Text = "Sorry! Currently no products in this category.";
                            pCount.InnerHtml = "0";
                        }
                        else
                        {
                            //Label1.Text = "Showing All Products";
                        }
                    }
                }
            }
        }
    }
}
    
