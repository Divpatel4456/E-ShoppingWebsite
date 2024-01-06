using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.IO;
using System.Xml.Linq;


namespace MyEShoppingWebsite
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnResetpass_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyEShoppingDB"].ConnectionString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select * from tblUsers where Email=@Email", con);
                cmd.Parameters.AddWithValue("@Email", txtEmailId.Text);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    string myGUID = Guid.NewGuid().ToString();
                    int Uid = Convert.ToInt32(dt.Rows[0][0]);
                    SqlCommand cmd1 = new SqlCommand("Insert into ForgotPass(Id,Uid,RequestDateTime) values('" + myGUID + "','" + Uid + "',GETDATE())", con);
                    cmd1.ExecuteNonQuery();

                    //send Reset link via email
                    String ToEmailAddress = dt.Rows[0][3].ToString();
                    String Username = dt.Rows[0][1].ToString();
                    String Password = dt.Rows[0][2].ToString();
                    String EmailBody = "Hi,"+Username+",<br/><br/>Click the link below to reset your password<br/>https://localhost:44344/Recoverpassword.aspx?Id="+myGUID;

                    MailMessage PassRecMail = new MailMessage("diupatel0720@gmail.com", ToEmailAddress);
                    PassRecMail.Body = EmailBody;
                    PassRecMail.IsBodyHtml = true;
                    PassRecMail.Subject = "Reset Password";


                    using (SmtpClient client = new SmtpClient())
                    {
                        client.EnableSsl = true;
                        client.UseDefaultCredentials = false;
                        client.Credentials = new NetworkCredential("diupatel0720@gmail.com", "Diupatel@07");
                        client.Host = "smtp.gmail.com"; // Corrected SMTP server address
                        client.Port = 465;
                        client.DeliveryMethod = SmtpDeliveryMethod.Network;

                        try
                        {
                            client.Send(PassRecMail);
                            // If the email is sent successfully, you can add code here for handling the success case
                        }
                        catch (SmtpException ex)
                        {
                            // Handle exceptions, log errors, or display appropriate messages
                            Console.WriteLine("Error sending email: " + ex.Message);
                        }
                    }

                    lblRestPassMsg.Text = "Reset Link Send ! Check Your Email For Reset Password";
                    lblRestPassMsg.ForeColor = System.Drawing.Color.Green;
                    txtEmailId.Text = string.Empty;
                }
                else
                {
                    lblRestPassMsg.Text = "Oops! This Email Does Not Exist...Try again";
                    lblRestPassMsg.ForeColor = System.Drawing.Color.Red;
                    txtEmailId.Text = string.Empty;
                    txtEmailId.Focus();

                }
            }
        }
    }
}
