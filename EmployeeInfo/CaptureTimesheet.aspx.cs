using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace EmployeeInfo
{
    public partial class CaptureTimesheet : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Dashboard.mdf;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            filldrop();
            filldrop2();
            filldrop3();
            filldrop4();

        }
        protected void filldrop()
        {
            if (!Page.IsPostBack) { 
            ProjectNametxt.DataSource = getuserdata();
            ProjectNametxt.DataTextField = "Project_Name";
            ProjectNametxt.DataValueField = "Project_Name";
            ProjectNametxt.DataBind();
            ProjectNametxt.Items.Insert(0, new ListItem("--Select Project--", "0"));

        }
        }
        protected void filldrop2()
        {
            if (!Page.IsPostBack)
            {
                Employeetxt.DataSource = getdata();
                Employeetxt.DataTextField = "Employee";
                Employeetxt.DataValueField = "Employee";
                Employeetxt.DataBind();
                Employeetxt.Items.Insert(0, new ListItem("--Select employee--", "0"));
            }
        }
        protected void filldrop3()
        {
            if (!Page.IsPostBack)
            {
                Starttxt.DataSource = getuserdata();
                Starttxt.DataTextField = "Start_Date";
                Starttxt.DataValueField = "Id";
                Starttxt.DataBind();
                Starttxt.Items.Insert(0, new ListItem("--Start Date--", "0"));
            }
        }
        protected void filldrop4()
        {
            if (!Page.IsPostBack)
            {
                Endtxt.DataSource = getuserdata();
                Endtxt.DataTextField = "End_Date";
                Endtxt.DataValueField = "Id";
                Endtxt.DataBind();
                Endtxt.Items.Insert(0, new ListItem("--End Date--", "0"));

            }
        }



        public DataTable getuserdata()
        {
            cmd = new SqlCommand("getproject", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;

        }
        public DataTable getdata()
        {
            cmd = new SqlCommand("getemployee", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;

        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime dateTimeValue = DateTime.Now;
            string formattedDateTime = dateTimeValue.ToString("yyyy-MM-dd HH:mm:ss");
            

            using (SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Dashboard.mdf;Integrated Security=True"))
            {
                conn.Open();
                string insertQuery = "INSERT INTO [CaptureTimesheet] ([Project_Name], [Employee], [Start_Date], [End_Date]) VALUES (@Project_Name, @Employee, @Start_Date, @End_Date)";

                using (SqlCommand command = new SqlCommand(insertQuery, conn))
                {
                    // Use parameters to prevent SQL injection
                    command.Parameters.AddWithValue("@Project_Name", ProjectNametxt.SelectedValue);
                    command.Parameters.AddWithValue("@Employee", Employeetxt.SelectedValue);
                    command.Parameters.AddWithValue("@Start_Date", formattedDateTime);
                    command.Parameters.AddWithValue("@End_Date", formattedDateTime);
                  
                    try
                    {
                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            Label5.Text = "Successfully saved";
                            Label5.ForeColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            Label5.Text = "No rows were affected. Insert failed.";
                            Label5.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                    catch (Exception ex)
                    {
                        Label5.Text = "Error: " + ex.Message;
                        Label5.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
        }

        
        protected void Button2_Click(object sender, EventArgs e)
        {
            this.ProjectNametxt.ClearSelection();
            this.Employeetxt.ClearSelection();
            this.Starttxt.ClearSelection();
            this.Endtxt.ClearSelection();

            ProjectNametxt.Focus();
        }      
    }
}