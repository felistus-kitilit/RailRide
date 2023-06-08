<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="Book.aspx.cs" Inherits="RailRide.Book" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="n2">
                    <h2 style="background-color:#E5E4E2" >TRAIN
                        <asp:Label ID="lblTrain" runat="server" Text="RR1"></asp:Label>
                     </h2>
                     <h2 style="background-color:#E5E4E2" >
                         <asp:Label ID="lblFROM" runat="server" Text="From" Font-Size="Medium"></asp:Label>
                         &nbsp;<asp:Label ID="Label18" runat="server" Text="to" Font-Size="Medium"></asp:Label>
                         &nbsp;<asp:Label ID="lblTO" runat="server" Text="To" Font-Size="Medium"></asp:Label>
                         &nbsp;&nbsp;
                         <asp:Label ID="Label14" runat="server"  Text="Departure time:" Font-Size="Medium"></asp:Label>
&nbsp;
                         <asp:Label ID="lblDeparture" runat="server"  Text="6:00AM" Font-Size="Medium"></asp:Label>
&nbsp;-
                         <asp:Label ID="Label15" runat="server" Text="Arival Time:" Font-Size="Medium"></asp:Label>
                         <asp:Label ID="lblArrival" runat="server" Text="12:00PM" Font-Size="Medium"></asp:Label>
                     </h2>
                </div>
            <div class="Info-container">
                <div class="menu">

            <img class="auto-style2" src="Images/user.png" /><br/>
            <asp:Label ID="lblUser" runat="server" Text="Label" ForeColor="#663399" Font-Size="Larger"></asp:Label>
            <br />
            <br />
            <br />
            <a href="History.aspx"><img src="Images/history.png" style="height: 22px; width: 34px" />&nbsp;&nbsp;&nbsp; History</a>
            <br/>
            <br />
            <a href="Settings.aspx"><img src="Images/settings.png" style="height: 21px; width: 40px" />&nbsp;&nbsp; Settings</a>
            <br />
            <br />
           <a href="Login.aspx"><img src="Images/exit.png" style="height: 22px; width: 33px" />&nbsp;&nbsp;&nbsp; LogOut</a>
            <br />
            <br />
        </div>
                <div style="width:100px"></div>
                
        <div class="box">
                  <h2 style="background-color:#8A9A5B;color:#663399">First Class&nbsp;
                      <asp:Label ID="lblSeats" runat="server" Text="5"></asp:Label>
&nbsp;Seats Remaining</h2>
                  <asp:Label ID="Label5" runat="server" Text="Adults" CssClass="text"></asp:Label>
                    &nbsp;Ksh&nbsp;
                  <asp:Label ID="lblFirstAdult" runat="server" Text="2000"></asp:Label>
                  <br />
                    <br />
                  <asp:Label ID="Label6" runat="server" Text="UNDER 18" CssClass="text"></asp:Label>
                    &nbsp;Ksh
                  <asp:Label ID="lblFirstUnder" runat="server" Text="1000"></asp:Label>
                  <br />
                    <br />
                  <asp:Label ID="Label7" runat="server" Text="CHILDREN (BELOW 3YRS)" CssClass="text"></asp:Label>
                    &nbsp;Ksh 0-Free<br />
                    <br />
                </div>
      <div class="box">
                  <h2 style="background-color:#8A9A5B;color:#663399">Economy&nbsp;&nbsp;
                      <asp:Label ID="lblSeats1" runat="server" Text="5"></asp:Label>
&nbsp;Seats Remaining</h2>
                   <p>
                       <asp:Label ID="Label2" runat="server" Text="ADULTS" CssClass="text"></asp:Label>
                       &nbsp;Ksh
                       <asp:Label ID="lblEcoAdult" runat="server" Text="700"></asp:Label>
                  </p>
                   <p>
                       &nbsp;<asp:Label ID="Label3" runat="server" Text="UNDER 18" CssClass="text"></asp:Label>
               
                       &nbsp; Ksh
                       <asp:Label ID="lblEcoUnder" runat="server" Text="350"></asp:Label>
                  </p>
               
                   <p>
                       <asp:Label ID="Label4" runat="server" Text="CHILDREN (BELOW 3YRS)" CssClass="text"></asp:Label>
                       &nbsp;Ksh 0-Fre</p>
                   <p>
                       &nbsp;</p>
       </div>
             <div class="box1">
                   <h2 style="background-color:#8A9A5B; color: #663399;">
                       Number Of Seats</h2>
                   <asp:Label ID="Label8" runat="server" Text="ADULTS" CssClass="text"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   
                   <asp:Label ID="Label9" runat="server" Text="UNDER 18 YEARS" CssClass="text"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                   
                 &nbsp;<asp:Label ID="Label12" runat="server" Text="CHILDREN (BELOW 3YRS)" CssClass="text"></asp:Label>
                   <br />
                   <asp:DropDownList ID="drpAdult" runat="server" Width="80px">
                       <asp:ListItem>0</asp:ListItem>
                       <asp:ListItem>1</asp:ListItem>
                       <asp:ListItem>2</asp:ListItem>
                       <asp:ListItem>3</asp:ListItem>
                       <asp:ListItem>4</asp:ListItem>
                       <asp:ListItem>5</asp:ListItem>
                      
                   </asp:DropDownList>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:DropDownList ID="drpUnder18" runat="server" Width="80px">
                       <asp:ListItem>0</asp:ListItem>
                       <asp:ListItem>1</asp:ListItem>
                       <asp:ListItem>2</asp:ListItem>
                       <asp:ListItem>3</asp:ListItem>
                       <asp:ListItem>4</asp:ListItem>
                       <asp:ListItem>5</asp:ListItem>
                      
                   </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                   <asp:DropDownList ID="DropDownList5" runat="server" Width="80px">
                       <asp:ListItem>0</asp:ListItem>
                       <asp:ListItem>1</asp:ListItem>
                       <asp:ListItem>2</asp:ListItem>
                       <asp:ListItem>3</asp:ListItem>
                       <asp:ListItem>4</asp:ListItem>
                       <asp:ListItem>5</asp:ListItem>
                      
                   </asp:DropDownList>
                   &nbsp;&nbsp;
                   <br />
                   <br />
                   <br />
                   <asp:Label ID="Label11" runat="server" Text="Coach Type" CssClass="text"></asp:Label>
                   <br />
                   <asp:DropDownList ID="drpType" runat="server" CssClass="dropd" Width="500px">
                       <asp:ListItem>Economy</asp:ListItem>
                       <asp:ListItem>First class</asp:ListItem>
                   </asp:DropDownList>
                   <br />
                   <br />
                   <asp:Button ID="btnFare" runat="server" BackColor="MediumPurple" OnClick="btnFare_Click" Text="Total Price" Width="117px" />
                   <br />
                   <br />
                   <asp:Label ID="LabelFare" runat="server" Text="Fare: Ksh"></asp:Label>
&nbsp;<asp:Label ID="lblFare" runat="server" ForeColor="Blue" Text="1000"></asp:Label>
                   <br />
                   <br />
                   <asp:Button ID="Button3" runat="server" BackColor="MediumPurple" Text="Book Seat(s)" Width="116px" />
                   <br />
                   <br />
                    <asp:Label ID="Label19" runat="server" ForeColor="#663399" Text="Label" Font-Size="Large"></asp:Label>
                   <br />
                   <br />

                   <asp:Button ID="Button2" runat="server" BackColor="MediumPurple" OnClick="Button2_Click" Text="Get Ticket" Width="110px" />
                </div>
            </div>
     <div style="height:50px">
       
    </div>
</asp:Content>
