using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RailRide
{
    public partial class BookingInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string username = (String)Session["Username"];

            lblUser.Text = username;



            string CoachType = (String)Session["coach"];
            string from = (String)Session["From"];
            string To = (String)Session["To"];
            string Train = (String)Session["Train"];
            string time = (String)Session["Departure"];
            string FareA = (String)Session["FareA"];
            string FareU = (String)Session["FareU"];
            string price = (String)Session["price"];
            string AdultPasssenger = (String)Session["Adult"];
            string Under18Passsenger = (String)Session["Under18"];
            string Date = (String)Session["Date"];

            lblUser.Text = username;
            lblDate.Text = Date;
            lblDeparture.Text = from;
            lblDestination.Text = To;
            lblType.Text = CoachType;
            lblTrain.Text = Train;
            lblTime.Text = time;
            lblFareA.Text = FareA;
            lblFareU.Text = FareU;
            lblTotal.Text = price;
            lblAdult.Text = AdultPasssenger;
            lblUnder.Text = Under18Passsenger;

            int Aseat = Convert.ToInt32((String)Session["Adult"]);
            int Useat = Convert.ToInt32((String)Session["Under18"]);

            for (int i = 0; i < Aseat; i++)
            {
                // Create a new panel for the passenger data
                Panel Panel2 = new Panel();


                // Add controls for the passenger data fields
                Label lblAfullname = new Label();
                TextBox txtFullName = new TextBox();
                lblAfullname.Text = "Full Name:";
                Panel2.Controls.Add(lblAfullname);
                Panel2.Controls.Add(txtFullName);

                Label lblAdultID = new Label();
                lblAdultID.Style["padding-left"] = "10px";
                TextBox txtAdultID = new TextBox();
                lblAdultID.Text = "ID/Passport No:";
                Panel2.Controls.Add(lblAdultID);
                Panel2.Controls.Add(txtAdultID);

                Label lblAgender = new Label();
                lblAgender.Style["padding-left"] = "10px";
                DropDownList drpGender = new DropDownList();
                lblAgender.Text = "Gender:";
                drpGender.Items.Add(new System.Web.UI.WebControls.ListItem("Select Gender"));
                drpGender.Items.Add(new System.Web.UI.WebControls.ListItem("Male", "Male"));
                drpGender.Items.Add(new System.Web.UI.WebControls.ListItem("Female", "Female"));
                Panel2.Controls.Add(lblAgender);
                Panel2.Controls.Add(drpGender);
                Panel2.Controls.Add(new LiteralControl("<br />"));


                passengerPlaceHolder.Controls.Add(Panel2);

            }
            for (int i = 0; i < Useat; i++)
            {
                // Create a new panel for the passenger data
                Panel Panel3 = new Panel();


                // Add controls for the passenger data fields
                Label lblfullname1 = new Label();
                lblfullname1.Style["margin-bottom"] = "10px";
                TextBox txtfullname1 = new TextBox();
                txtfullname1.Style["margin-bottom"] = "10px";
                txtfullname1.Style["width"] = "100px";
                lblfullname1.Text = "Full Name:";
                Panel3.Controls.Add(lblfullname1);
                Panel3.Controls.Add(txtfullname1);

                Label lblID1 = new Label();
                lblID1.Style["padding-left"] = "10px";
                lblID1.Style["margin-bottom"] = "10px";
                TextBox txtID1 = new TextBox();
                txtID1.Style["margin-bottom"] = "10px";
                txtID1.Style["width"] = "100px";
                lblID1.Text = "Guardian ID/Passport No:";
                Panel3.Controls.Add(lblID1);
                Panel3.Controls.Add(txtID1);

                Label lblUage = new Label();
                lblUage.Style["padding-left"] = "10px";
                lblUage.Style["margin-bottom"] = "10px";
                TextBox txtUage = new TextBox();
                txtUage.Style["margin-bottom"] = "10px";
                txtUage.Style["width"] = "100px";
                lblUage.Text = "ID/Passport No:";
                Panel3.Controls.Add(lblUage);
                Panel3.Controls.Add(txtUage);

                Label lblUgender = new Label();
                lblUgender.Style["padding-left"] = "10px";
                lblUgender.Style["margin-bottom"] = "10px";
                DropDownList drpUGender = new DropDownList();
                drpUGender.Style["margin-bottom"] = "10px";
                drpUGender.Style["width"] = "100px";
                lblUgender.Text = "Gender:";
                drpUGender.Items.Add(new System.Web.UI.WebControls.ListItem("Select Gender"));
                drpUGender.Items.Add(new System.Web.UI.WebControls.ListItem("Male", "Male"));
                drpUGender.Items.Add(new System.Web.UI.WebControls.ListItem("Female", "Female"));
                Panel3.Controls.Add(lblUgender);
                Panel3.Controls.Add(drpUGender);
                Panel3.Controls.Add(new LiteralControl("<br />"));


                PlaceHolder2.Controls.Add(Panel3);
            }
        }

    }      
}