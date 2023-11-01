using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Runtime.Remoting.Contexts;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class CreateProject : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Dashboard.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string insrt = "insert into[CreateProject]([Project_Name],[Start_Date],[End_Date],[Client_Name])values('" + Projecttxt.Text + "','" + Starttxt.Text + "','" + Endtxt.Text + "','" + Clienttxt.Text + "')";


            SqlCommand commun = new SqlCommand(insrt, conn);

            conn.Open();
            commun.ExecuteNonQuery();
            Label2.Text = "Project Sucessfully Created";
            Label2.ForeColor = System.Drawing.Color.Green;
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Projecttxt.Text = "";
            Starttxt.Text = "";
            Endtxt.Text = "";
            Clienttxt.Text = "";

            Projecttxt.Focus();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            BindDataToCreateProjects();
            /*GridView1.Visible = true*/;
        }

        private void BindDataToCreateProjects()
        {

            {
                using (SqlCommand cmd = new SqlCommand("Select * from [CreateProject] ", conn))
                {
                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    //GridView1.DataBind();

                }
            }

        }
    }
}