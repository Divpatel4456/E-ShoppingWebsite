﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace MyEShoppingWebsite
{
    public partial class AddGender : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGenderReapter();
        }
        private void BindGenderReapter()
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEShoppingDB"].ConnectionString))
            {
                using (SqlCommand cmd = new SqlCommand("Select * from tblGender", con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        rptrGender.DataSource = dt;
                        rptrGender.DataBind();
                    }
                }
            }
        }

        protected void BtnAddBrand_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into tblGender(GenderName) Values('" + txtGender.Text + "')", con);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('Gender Added Successfully'); </script>");
                txtGender.Text = string.Empty;


                con.Close();
                txtGender.Focus();

            }
            BindGenderReapter();
        }
    }
}