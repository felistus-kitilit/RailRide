using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Windows.Forms;
using System.Web.UI.WebControls;

namespace RailRide
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblInvalid.Visible= false;
            Database.Dbconnection();
        }
        
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUname1.Text.Trim();
            string password = txtPassword1.Text;

            //associate the command with the connection
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Database.con;
            cmd.CommandText = "SELECT COUNT(*) FROM TblUserRegistration WHERE Username = @UserName AND Password = @Password ";
            cmd.Parameters.AddWithValue("@UserName", username);
            cmd.Parameters.AddWithValue("@Password", password);

            // Open the database connection and execute the command
           
            int count = (int)cmd.ExecuteScalar();

            // Check if the login was successful
            if (count > 0)
            {
                // Redirect the user to the main page
                Session["Username"] = username;
                Response.Redirect("UserProfile.aspx");
            }
            else
            {
                // Show an error message
               
                lblInvalid.Text = "Invalid username or password.";
            }
          
            txtPassword1.Text = "";
            lblInvalid.Visible = true;
        }
    }
}