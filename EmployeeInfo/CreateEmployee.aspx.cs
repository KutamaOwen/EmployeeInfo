using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeeInfo
{
    public partial class CreateEmployee : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Dashboard.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            Employeetxt.Text = "";
            this.Rolestxt.ClearSelection();

            Employeetxt.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string inst = "insert into[CreateEmployee]([Employee],[Role])values('" + Employeetxt.Text + "','" + Rolestxt.Text + "')";

            SqlCommand comm = new SqlCommand(inst, conn);

            conn.Open();
            comm.ExecuteNonQuery();
            Label3.Text = "Sucessfully Registered!!";
            Label3.ForeColor = System.Drawing.Color.Green;
            conn.Close();
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {

        }
    }
}