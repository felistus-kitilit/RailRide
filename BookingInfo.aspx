<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="BookingInfo.aspx.cs" Inherits="RailRide.BookingInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:left;background-color:white;color:#663399">Reservation Details</h2>
  <div class="Info-container">
      <div class="menu">

            <img class="auto-style2" src="Images/user.png" /><br/>
            <asp:Label ID="lblUser" runat="server" Text="Label" ForeColor="#663399" Font-Size="Larger"></asp:Label>
            <br />
            <br />
            <br />
            <a href="History.apx"><img src="Images/history.png" style="height: 22px; width: 34px" />&nbsp;&nbsp;&nbsp; History</a>
            <br/>
            <br />
            <a href="Settings.aspx"><img src="Images/settings.png" style="height: 21px; width: 40px" />&nbsp;&nbsp; Settings</a>
            <br />
            <br />
           <a href="Login.aspx"><img src="Images/exit.png" style="height: 22px; width: 33px" />&nbsp;&nbsp;&nbsp; LogOut</a>
            <br />
            <br />
        </div>
 <div class="horizontal-form">
  <asp:PlaceHolder ID="passengerPlaceHolder" runat="server">
    <asp:Panel ID="Panel2" runat="server">
    
  <h2 style="color:#663399"> Adult Passenger(s)</h2>
        
     </asp:Panel>
  </asp:PlaceHolder>
    <br />
 <asp:PlaceHolder ID="PlaceHolder2" runat="server">
  <asp:Panel ID="Panel3" runat="server">
   
  <h2 style="color:#663399">Passenger(s) Under 18</h2>
       
     </asp:Panel>
  </asp:PlaceHolder>
   
    <br />
    <br />
</div>
  <div style="width:30px"></div>
<div class="receipt-content">
    <div style="align-content:center; background-color:white; width: 322px;">
  <img src="Images/Mpesa.png" alt="Receipt Header Image">
</div>
  <div style="width: 323px" >
    
      <asp:Label ID="lblDeparture" runat="server" Text="Departure" Font-Size="Larger"></asp:Label>
&nbsp;To
      <asp:Label ID="lblDestination" runat="server" Text="Destination" Font-Size="Larger"></asp:Label>
      <br />
      <br />
      <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="lblDate" runat="server" Text="date"></asp:Label>
&nbsp;
      <br />
      _______________________________________<br />
      <asp:Label ID="Label3" runat="server" Text="Time"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="lblTime" runat="server" Text="time"></asp:Label>
      <br />
      _______________________________________<br />
      <asp:Label ID="Label4" runat="server" Text="Train"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="lblTrain" runat="server" Text="train"></asp:Label>
      <br />
      _______________________________________<br />
      <asp:Label ID="Label5" runat="server" Text="Coach Class"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Label ID="lblType" runat="server" Text="coach type"></asp:Label>
      <br />
      _______________________________________<br />
      <asp:Label ID="Label6" runat="server" Text="Fare"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblFareA" runat="server" Text="1000"></asp:Label>
      &nbsp;Adult,
      <asp:Label ID="lblFareU" runat="server" Text="1000"></asp:Label>
&nbsp;Under18<br />
      _______________________________________<br />
      <asp:Label ID="Label7" runat="server" Text="Passengers"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblAdult" runat="server" Text="1"></asp:Label>
&nbsp;Adult(s),
      <asp:Label ID="lblUnder" runat="server" Text="1"></asp:Label>
&nbsp;Under18(s)<br />
      _______________________________________<br />
      <asp:Label ID="Label8" runat="server" Text="Total Fare"></asp:Label>
    
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; KSH&nbsp;&nbsp;
      <asp:Label ID="lblTotal" runat="server" Text="KSH" ForeColor="Blue"></asp:Label>
      &nbsp;<br />
    
  </div>
</div>
</div>
 <div style="height:100px"></div>
</asp:Content>
