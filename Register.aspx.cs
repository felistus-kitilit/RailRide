using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Windows.Forms;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.StartPanel;


namespace RailRide
{
    public partial class Register : System.Web.UI.Page
    {
        

        

        protected void Page_Load(object sender, EventArgs e)
        {
            
            lblSignUp.Visible = false;
            Database.Dbconnection();



        }
        
        

        
        protected void Button1_Click(object sender, EventArgs e)
        {



            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Database.con;
           
            cmd.CommandText = "SELECT COUNT(*) FROM TblUserRegistration WHERE Username=@UserName";
            cmd.Parameters.AddWithValue("@UserName", txtUname.Text);
            int count = (int)cmd.ExecuteScalar();
                if (count > 0)
                {
                    // Display a message to the user
                    lblSignUp.Text = "Username already exists. Please choose another username.";
                    lblSignUp.ForeColor = Color.Red;
                
               

            }
            else
                {
                    cmd.CommandText = "insert into TblUserRegistration(Username,Email,Address,PhoneNumber,Password) values ('" + txtUname.Text + "','" + txtEmail.Text + "','" + txtAddress.Text + "','" + Convert.ToInt32( txtPhone.Text) + "','" + txtPassword.Text + "')";
                    cmd.ExecuteNonQuery();
                    lblSignUp.Text = "succesfully registered, Please wait while being redirected.";
                    lblSignUp.ForeColor = System.Drawing.Color.Green;

                // Wait for 3 seconds
                System.Threading.Thread.Sleep(3000);
                Response.Redirect("UserProfile.aspx");

            }
            
            
            Console.WriteLine("Successfully Registered.");
            //clear all textbox
            txtUname.Text = "";
            txtEmail.Text = "";
            txtAddress.Text = "";
            txtPhone.Text = "";
            txtPassword.Text = "";
            txtCpasword.Text = "";

            
            lblSignUp.Visible = true;
           
           
          


        }

        
    }
    
}