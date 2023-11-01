using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        private static int UserId;
        private static Guid guid;
        static string cs = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                guid = new Guid(Request.QueryString["Guid"]);
                if (guid != null)
                {
                    using (SqlConnection conn = new SqlConnection(cs))
                    {
                        using (SqlCommand cmd = new SqlCommand("select * from tblForgotPasswordRequest where UniqueId = @UniqueId"))
                        {
                            cmd.Parameters.AddWithValue("@UniqueId", guid);
                            cmd.Connection = conn;
                            cmd.Connection.Open();
                            using (SqlDataReader sqlRdr = cmd.ExecuteReader())
                            {
                                if (sqlRdr.HasRows)
                                {
                                    while (sqlRdr.Read())
                                    {
                                        UserId = sqlRdr.GetInt32(1);
                                    }
                                }
                                else
                                    Response.Redirect("~/Default.aspx", false);
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("~/Default.aspx", false);
            }
        }
    

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (passtxt.Text == conpasstxt.Text)
                {
                    using (SqlConnection conn = new SqlConnection(cs))
                    {
                        using (SqlCommand cmd = new SqlCommand("update tblUsers set Password = @Password where UserId = @UserId"))
                        {
                            cmd.Parameters.AddWithValue("@Password", passtxt.Text);
                            cmd.Parameters.AddWithValue("@UserId", UserId);
                            cmd.Connection = conn;
                            cmd.Connection.Open();
                            cmd.ExecuteNonQuery();

                            Response.Write("<script>alert('Password successfully updated.');</script>");

                            using (SqlCommand cmd1 = new SqlCommand("delete from tblForgotPasswordRequest where UniqueID = @UniqueID"))
                            {
                                cmd1.Parameters.AddWithValue("@UniqueID", guid);
                                cmd1.Connection = conn;
                                cmd1.ExecuteNonQuery();
                            }
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('Password does not match');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Some Error Occurred');</script>");
            }
        }

    }
}
