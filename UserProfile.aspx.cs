using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock;

namespace RailRide
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblerrormsg.Visible = false;
            string username = (String)Session["Username"];
           
                lblUser.Text = username;
            drpFROM.Style["border-radius"] = "40px";
            drpTo.Style["border-radius"] = "40px";
           

        }

        protected void btnBook_Click(object sender, EventArgs e)

        {
            string A_Time, D_Time, Train;
            int F_Adult, F_Under18, E_Adult, E_Under18;
            if (drpTo.Text == drpFROM.Text)
            {
                lblerrormsg.Visible = true;
                lblerrormsg.Text = "Your Starting Point and Destination Cannot be the Same!";
            }
            else if ((drpTo.SelectedIndex == 0) || (drpFROM.SelectedIndex == 0))
            {
                lblerrormsg.Visible = true;
                lblerrormsg.Text = "Please Fill in all Items";

            }
            else if ((txtDate.Text == ""))
            {
                lblerrormsg.Visible = true;
                lblerrormsg.Text = "Please Fill in the Date";
            }
            
            else
            {
                string date = txtDate.Text;
               
                string from = drpFROM.Text;
                string to = drpTo.Text;
                Session["Date"] = date;
                Session["From"] = from;
                Session["To"] = to;
               
            }
            if (drpFROM.Text == "Nairobi" && drpTo.Text == "Mombasa")
            {
                D_Time = "6:00Am";
                A_Time = "11:30AM";
                F_Adult = 3000;
                F_Under18 = 1500;
                E_Adult = 1000;
                E_Under18 = 500;
                Train = "RR1";
                

                Session["Departure"] = D_Time.ToString();
                Session["Arrival"] = A_Time.ToString();
                Session["F_Adult"] = F_Adult.ToString();
                Session["F_Under18"] = F_Under18.ToString();
                Session["E_Adult"] = E_Adult.ToString();
                Session["E_Under18"] = E_Under18.ToString();
                Session["Train"] = Train.ToString();
                Response.Redirect("Book.aspx");

            }
            else if (drpFROM.Text == "Mombasa" && drpTo.Text == "Nairobi")
            {
                D_Time = "3:00PM";
                A_Time = "8:30PM";
                F_Adult = 3000;
                F_Under18 = 1500;
                E_Adult = 1000;
                E_Under18 = 500;
                Train = "RR1";

                
                Session["Departure"] = D_Time.ToString();
                Session["Arrival"] = A_Time.ToString();
                Session["F_Adult"] = F_Adult.ToString();
                Session["F_Under18"] = F_Under18.ToString();
                Session["E_Adult"] = E_Adult.ToString();
                Session["E_Under18"] = E_Under18.ToString();
                Session["Train"] = Train.ToString();
                Response.Redirect("Book.aspx");
            }
            else if (drpFROM.Text == "Nairobi" && drpTo.Text == "Voi")
            {
                D_Time = "6:00AM";
                A_Time = "10:00AM";
                F_Adult = 2100;
                F_Under18 = 1000;
                E_Adult = 700;
                E_Under18 = 400;
                Train = "RR1";
                

                Session["Departure"] = D_Time.ToString();
                Session["Arrival"] = A_Time.ToString();
                Session["F_Adult"] = F_Adult.ToString();
                Session["F_Under18"] = F_Under18.ToString();
                Session["E_Adult"] = E_Adult.ToString();
                Session["E_Under18"] = E_Under18.ToString();
                Session["Train"] = Train.ToString();
                Response.Redirect("Book.aspx");
            }


            else if (drpFROM.Text == "Voi" && drpTo.Text == "Nairobi")
            {
                D_Time = "4:30PM";
                A_Time = "8:30PM";
                F_Adult = 2100;
                F_Under18 = 1000;
                E_Adult = 700;
                E_Under18 = 400;
                Train = "RR1";

                

                Session["Departure"] = D_Time.ToString();
                Session["Arrival"] = A_Time.ToString();
                Session["F_Adult"] = F_Adult.ToString();
                Session["F_Under18"] = F_Under18.ToString();
                Session["E_Adult"] = E_Adult.ToString();
                Session["E_Under18"] = E_Under18.ToString();
                Session["Train"] = Train.ToString();
                Response.Redirect("Book.aspx");
            }
            else if (drpFROM.Text == "Nairobi" && drpTo.Text == "Mtito-Andei")
            {
                D_Time = "11:00AM";
                A_Time = "2:00PM";
                F_Adult = 1500;
                F_Under18 = 800;
                E_Adult = 500;
                E_Under18 = 300;
                Train = "RR2";

                

                Session["Departure"] = D_Time.ToString();
                Session["Arrival"] = A_Time.ToString();
                Session["F_Adult"] = F_Adult.ToString();
                Session["F_Under18"] = F_Under18.ToString();
                Session["E_Adult"] = E_Adult.ToString();
                Session["E_Under18"] = E_Under18.ToString();
                Session["Train"] = Train.ToString();
                Response.Redirect("Book.aspx");

            }
            else if (drpFROM.Text == "Mtito-Andei" && drpTo.Text == "Nairobi")
            {
                D_Time = "5:00PM";
                A_Time = "8:00PM";
                F_Adult = 1500;
                F_Under18 = 800;
                E_Adult = 500;
                E_Under18 = 300;
                Train = "RR2";


                Session["Departure"] = D_Time.ToString();
                Session["Arrival"] = A_Time.ToString();
                Session["F_Adult"] = F_Adult.ToString();
                Session["F_Under18"] = F_Under18.ToString();
                Session["E_Adult"] = E_Adult.ToString();
                Session["E_Under18"] = E_Under18.ToString();
                Session["Train"] = Train.ToString();
                Response.Redirect("Book.aspx");

            }
            else if (drpFROM.Text == "Mtito-Andei" && drpTo.Text == "Mombasa")
            {
                D_Time = "9:00AM";
                A_Time = "12:00PM";
                F_Adult = 1500;
                F_Under18 = 750;
                E_Adult = 500;
                E_Under18 = 250;
                Train = "RR3";

                

                Session["Departure"] = D_Time.ToString();
                Session["Arrival"] = A_Time.ToString();
                Session["F_Adult"] = F_Adult.ToString();
                Session["F_Under18"] = F_Under18.ToString();
                Session["E_Adult"] = E_Adult.ToString();
                Session["E_Under18"] = E_Under18.ToString();
                Session["Train"] = Train.ToString();
                Response.Redirect("Book.aspx");
            }
            else if (drpFROM.Text == "Mombasa" && drpTo.Text == "Mtito-Andei")
            {
                D_Time = "2:00PM";
                A_Time = "5:00PM";
                F_Adult = 1500;
                F_Under18 = 750;
                E_Adult = 500;
                E_Under18 = 250;
                Train = "RR3";

                
                Session["Departure"] = D_Time.ToString();
                Session["Arrival"] = A_Time.ToString();
                Session["F_Adult"] = F_Adult.ToString();
                Session["F_Under18"] = F_Under18.ToString();
                Session["E_Adult"] = E_Adult.ToString();
                Session["E_Under18"] = E_Under18.ToString();
                Session["Train"] = Train.ToString();
                Response.Redirect("Book.aspx");
            }
            else if (drpFROM.Text == "Voi" && drpTo.Text == "Mombasa")
            {
                D_Time = "10:00AM";
                A_Time = "12:00PM";
                F_Adult = 900;
                F_Under18 = 450;
                E_Adult = 300;
                E_Under18 = 150;
                Train = "RR3";

               

                Session["Departure"] = D_Time.ToString();
                Session["Arrival"] = A_Time.ToString();
                Session["F_Adult"] = F_Adult.ToString();
                Session["F_Under18"] = F_Under18.ToString();
                Session["E_Adult"] = E_Adult.ToString();
                Session["E_Under18"] = E_Under18.ToString();
                Session["Train"] = Train.ToString();
                Response.Redirect("Book.aspx");

            }
            else if (drpFROM.Text == "Mombasa" && drpTo.Text == "Voi")
            {
                D_Time = "2:00PM";
                A_Time = "4:00PM";
                F_Adult = 900;
                F_Under18 = 450;
                E_Adult = 300;
                E_Under18 = 150;
                Train = "RR3";

                
                Session["Departure"] = D_Time.ToString();
                Session["Arrival"] = A_Time.ToString();
                Session["F_Adult"] = F_Adult.ToString();
                Session["F_Under18"] = F_Under18.ToString();
                Session["E_Adult"] = E_Adult.ToString();
                Session["E_Under18"] = E_Under18.ToString();
                Session["Train"] = Train.ToString();
                Response.Redirect("Book.aspx");
            }
            else if (drpFROM.Text == "Mtito-Andei" && drpTo.Text == "Voi")
            {
                D_Time = "9:00AM";
                A_Time = "10:00AM";
                F_Adult = 650;
                F_Under18 = 350;
                E_Adult = 200;
                E_Under18 = 100;
                Train = "RR3";

                

                Session["Departure"] = D_Time.ToString();
                Session["Arrival"] = A_Time.ToString();
                Session["F_Adult"] = F_Adult.ToString();
                Session["F_Under18"] = F_Under18.ToString();
                Session["E_Adult"] = E_Adult.ToString();
                Session["E_Under18"] = E_Under18.ToString();
                Session["Train"] = Train.ToString();
                Response.Redirect("Book.aspx");
            }
            else if (drpFROM.Text == "Voi" && drpTo.Text == "Mtito-Andei")
            {
                D_Time = "4:00PM";
                A_Time = "5:00PM";
                F_Adult = 650;
                F_Under18 = 350;
                E_Adult = 200;
                E_Under18 = 100;
                Train = "RR3";


                Session["Departure"] = D_Time.ToString();
                Session["Arrival"] = A_Time.ToString();
                Session["F_Adult"] = F_Adult.ToString();
                Session["F_Under18"] = F_Under18.ToString();
                Session["E_Adult"] = E_Adult.ToString();
                Session["E_Under18"] = E_Under18.ToString();
                Session["Train"] = Train.ToString();

                Response.Redirect("Book.aspx");

            }
            String Date = txtDate.Text;
            Session["Date"] = Date.ToString();
            


        }
    }
}