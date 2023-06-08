using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RailRide
{
    public partial class Settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Database.Dbconnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Database.con;

            string UserName = (String)Session["Username"];

            lblUser.Text = UserName;

            cmd.CommandText = "SELECT * FROM TblUserRegistration WHERE UserName = @Username";
            cmd.Parameters.AddWithValue("@Username", UserName);

            DataTable dataTable = new DataTable();
            using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
            {
                adapter.Fill(dataTable);
            }
            Panel panel = new Panel();

            foreach (DataRow row in dataTable.Rows)
            {

                TextBox emailTextBox = new TextBox();
                emailTextBox.ID = "EmailTextBox";
                emailTextBox.Text = row["Email"].ToString();
                panel.Controls.Add(new LiteralControl("<p>Email:</p>"));
                panel.Controls.Add(emailTextBox);

                RegularExpressionValidator emailValidator = new RegularExpressionValidator();
                emailValidator.ControlToValidate = emailTextBox.ID;
                emailValidator.ErrorMessage = "Please enter a valid email address.";
                emailValidator.ValidationExpression = @"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
                panel.Controls.Add(emailValidator);

                TextBox AddressTextBox = new TextBox();
                AddressTextBox.ID = "AddressTextBox";
                AddressTextBox.Text = row["Address"].ToString();
                panel.Controls.Add(new LiteralControl("<p>Address:</p>"));
                panel.Controls.Add(AddressTextBox);

                TextBox PhoneTextBox = new TextBox();
                PhoneTextBox.ID = "PhoneTextBox";
                PhoneTextBox.Text = row["PhoneNumber"].ToString();
                panel.Controls.Add(new LiteralControl("<p>Phone Number:</p>"));
                panel.Controls.Add(PhoneTextBox);

                TextBox passwordTextBox = new TextBox();
                passwordTextBox.ID = "PasswordTextBox";
                passwordTextBox.Text = row["Password"].ToString();
                panel.Controls.Add(new LiteralControl("<p>Password:</p>"));
                panel.Controls.Add(passwordTextBox);

                // Create a TextBox control for the "ConfirmPassword" column
                TextBox confirmPasswordTextBox = new TextBox();
                confirmPasswordTextBox.ID = "ConfirmPasswordTextBox";
                confirmPasswordTextBox.TextMode = TextBoxMode.Password;
                panel.Controls.Add(new LiteralControl("<p>Confirm Password:</p>"));
                panel.Controls.Add(confirmPasswordTextBox);

                // Add a CustomValidator control to check that the passwords match
                CompareValidator passwordValidator = new CompareValidator();
                passwordValidator.ControlToValidate = confirmPasswordTextBox.ID;
                passwordValidator.ControlToCompare = passwordTextBox.ID;
                passwordValidator.ErrorMessage = "Passwords do not match.";
                panel.Controls.Add(passwordValidator);



            }
            PlaceHolder2.Controls.Add(panel);
        }
        protected void Update_Click(object sender, EventArgs e)
        {
            string UserName = (String)Session["Username"];



            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Database.con;


            cmd.CommandText = "UPDATE TblUserRegistration SET Email = @Email, Address = @Address, PhoneNumber = @PhoneNumber, Password = @Password WHERE UserName=@UserName";
            cmd.Parameters.AddWithValue("@Email", ((TextBox)PlaceHolder1.FindControl("EmailTextBox")).Text);
            cmd.Parameters.AddWithValue("@Address", ((TextBox)PlaceHolder1.FindControl("AddressTextBox")).Text);
            cmd.Parameters.AddWithValue("@PhoneNumber", ((TextBox)PlaceHolder1.FindControl("PhoneTextBox")).Text);
            cmd.Parameters.AddWithValue("@Password", ((TextBox)PlaceHolder1.FindControl("PasswordTextBox")).Text);

            cmd.Parameters.AddWithValue("@UserName", UserName);// Replace userName with the actual username of the user

            // Execute the update command
            cmd.ExecuteNonQuery();
        }
    }
}