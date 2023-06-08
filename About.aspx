<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="RailRide.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-family:Arial;font-size:25px;background-color:white;">
        About us</p>
    <div class="image-container1">
      <img src="Images/station.jpg" alt="Image description">
         <div class="text-container">
           <h2>About RailRide</h2>
            <p style="font-size:25px">We are a leading rail transportation company with a proud history of serving our customers
                for over 50 years. From our humble beginnings as a small railway operation, we have grown to 
                become one of the most trusted and respected names in the industry. Today, we offer a wide range 
                of passenger rail services that cater to the needs of travelers of all kinds.</p>
            <p style="font-size:25px">Our fleet of trains is equipped with the latest technology and amenities to ensure that our passengers are comfortable
                and entertained throughout their journey. We employ a team of highly trained professionals who are dedicated to providing 
                exceptional customer service at all times.</p>
         </div>
       </div>
        <div>
        <p style="background-color:white;text-align:center;font-family:'Times New Roman';font-size:25px;padding-left:100px;padding-right:450px">we believe that travel is not just about reaching a destination,
            but about enjoying the journey itself. Our mission is to provide our passengers with an exceptional
            travel experience that is comfortable, safe, and unforgettable.</p>
        </div>
     <div class="message-container">
        <div class="message">
          <h2 style="background-color:#8A9A5B">Core Values</h2>
          <ul class="item-list" style="font-size:25px">
            <li>Professionalism</li>
            <li>Integrity</li>
            <li>Team work</li>
            <li>Escellence</li>
         </ul>
       </div>
       <div class="message">
         <h2 style="background-color:#8A9A5B">Mandate</h2>
         <ul class="item-list" style="font-size:25px">
           <li>Provide effective & efficient services</li>
           <li>Leverage our assets to grow business</li>
           <li>Participation in national railway network development</li>
           <li>Maintaining high standards of customer service and satifaction</li>
         </ul>
       </div>
   </div>
   <div style="height:100px"></div>
    




</asp:Content>
