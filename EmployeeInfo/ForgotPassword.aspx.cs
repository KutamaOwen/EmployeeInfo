using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        static string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(cs))
                {
                    using (SqlCommand cmd = new SqlCommand("select count(*) from [Table] where [EMAIL ADDRESS] = '" + emailtxt.Text + "'"))
                    {
                        cmd.Parameters.AddWithValue("@EmailAddress", emailtxt.Text);
                        cmd.Connection = conn;
                        cmd.Connection.Open();
                        using (SqlDataReader sqlRdr = cmd.ExecuteReader())
                        {
                            if (sqlRdr.HasRows)
                            {
                                while (sqlRdr.Read())
                                {
                                    int userId = sqlRdr.GetInt32(0);
                                    string fullName = sqlRdr.GetString(1);
                                    string emailId = sqlRdr.GetString(2);
                                    var guid = Guid.NewGuid();

                                    using (SqlCommand cmd1 = new SqlCommand("Insert into [Table]([EMAIL ADDRESS]) values( '" + emailtxt.Text + "')"))
                                    {
                                        cmd1.Parameters.AddWithValue("@UniqueId", guid);
                                        cmd1.Parameters.AddWithValue("@UserId", userId);
                                        cmd1.Parameters.AddWithValue("@DateRequest", DateTime.Now);
                                        cmd1.Connection = conn;
                                        cmd1.ExecuteNonQuery();
                                        Response.Write("<script>alert('Password reset link has mailed to you');</script>");

                                        string emailSubject = "Reset Password";
                                        string emailBody = "Hi, " + fullName + "</h1>";
                                        emailBody += "<a href='https://localhost:44376/ResetPassword.aspx" + guid.ToString() + "'>Reset Password</a>";
                                        string msg = SendMail(emailSubject, emailBody, emailId);
                                    }
                                }
                            }
                            else
                            {
                                Response.Write("<script>alert('This Email Address does not exists in our database.');</script>");
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Some Error Occurred');</script>");
            }
        }
        public static string SendMail(string emailSubject, string emailBody, string toEmail)
        {
            try
            {
                MailMessage PassRecMail = new MailMessage("", toEmail);
                PassRecMail.Body = emailBody;
                PassRecMail.IsBodyHtml = true;
                PassRecMail.Subject = emailSubject;
                PassRecMail.Priority = MailPriority.High;
                SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);
                SMTP.DeliveryMethod = SmtpDeliveryMethod.Network;
                SMTP.UseDefaultCredentials = false;
                SMTP.UseDefaultCredentials = true;
                SMTP.Credentials = new NetworkCredential()
                {
                    UserName = "",
                    Password = ""
                };
                SMTP.EnableSsl = true;
                SMTP.Send(PassRecMail);
                return "Mail Send Successfully";
            }
            catch (Exception ex)
            {
                return "Some Error Occurred.";
            }
        }
    }
}
