using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RailRide
{
    public partial class Book : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = (String)Session["Username"];
            lblUser.Text = username;
            string Departure = (String)Session["Departure"];
            lblDeparture.Text = Departure;
            string Arrival = (String)Session["Arrival"];
            lblArrival.Text = Arrival;
            string F_Adult = (String)Session["F_Adult"];
            lblFirstAdult.Text = F_Adult;
            string F_Under = (String)Session["F_Under18"];
            lblFirstUnder.Text = F_Under;
            string E_Adult = (String)Session["E_Adult"];
            lblEcoAdult.Text = E_Adult;
            string E_Under = (String)Session["E_Under18"];
            lblEcoUnder.Text = E_Under;
            string Train = (String)Session["Train"];
            string Date = (String)Session["Date"];
            lblTrain.Text = Train;
            lblFare.Visible = false;
            LabelFare.Visible = false;
            Label19.Visible = false;


            string from = (String)Session["From"];
            string to = (String)Session["To"];
            lblFROM.Text = from;
            lblTO.Text = to;
            string seats = (String)Session["ECseats"];
            string seats1 = (String)Session["FCseats"];
            lblSeats1.Text = seats1;
            lblSeats.Text = seats;

            



        }
        protected void btnFare_Click(object sender, EventArgs e)
        {
            int Adult = Convert.ToInt32(drpAdult.Text);
            int Under18 = Convert.ToInt32(drpUnder18.Text);
            int FC_Adult = Convert.ToInt32((String)Session["F_Adult"]);
            int FC_Under18 = Convert.ToInt32((String)Session["F_Under18"]);
            int EC_Adult = Convert.ToInt32((String)Session["E_Adult"]);
            int EC_Under18 = Convert.ToInt32((String)Session["E_Under18"]);
            int price;
            Session["Adult"] = Adult.ToString();
            Session["Under18"] = Under18.ToString();


            if (drpType.Text == "Economy")
            {
                lblFare.Visible = true;
                LabelFare.Visible = true;
                price = (Adult * EC_Adult) + (Under18 * EC_Under18);
                lblFare.Text = price.ToString();
                Session["price"] = price.ToString();

            }
            else if (drpType.Text == "First class")
            {
                lblFare.Visible = true;
                LabelFare.Visible = true;
                price = (Adult * FC_Adult) + (Under18 * FC_Under18);
                lblFare.Text = price.ToString();
                Session["price"] = price.ToString();


            }
            if (drpType.Text == "Economy")
            {
                Session["FareA"] = EC_Adult.ToString();
                Session["FareU"] = EC_Under18.ToString();
            }
            if (drpType.Text == "First class")
            {
                Session["FareA"] = FC_Adult.ToString();
                Session["FareU"] = FC_Under18.ToString();
            }

            string coach = drpType.Text;
            string A_passenger = Convert.ToString(drpAdult.Text);
            string U_passenger = Convert.ToString(drpAdult.Text);

            Session["coach"] = coach.ToString();
            Session["Adult"] = A_passenger.ToString();
            Session["Under"] = U_passenger.ToString();




        }
        
           
           
            /*
            if (from == "Nairobi" && to == "Mombasa" && coach == "Economy")
            {
                cmd.CommandText = "UPDATE TOP(" + TotalSeats + ") Seats SET Status = 'Booked' WHERE Route = 'Nai to Voi to Momb' AND CoachClass = 'EC' AND Status = 'Active'";
                cmd.ExecuteNonQuery();
                Response.Redirect("BookingInfo.aspx");
            }
            */


            //cmd.CommandText = "insert into Bookings(UserName,Departure,Destination,NumberOfSeats,CoachClass,TotalFare(KSH),Date) values('"+username+"','"+from+"','"+to+"','"+TotalSeats+"','"+coach+"','"+price+"','"+Date+"')";


        

        protected void Button2_Click(object sender, EventArgs e)
        {
    
            Response.Redirect("BookingInfo.aspx");
        }
    }
}