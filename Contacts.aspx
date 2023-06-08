<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contacts.aspx.cs" Inherits="RailRide.Contacts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 24px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-family:Arial;font-size:25px;background-color:white;">
        Contact us</p>
    <div class="container">
  <div class="message1" style="font-size:25px">
    <h2>Let's Get In Touch!!</h2>
    <p>We are open for any suggestion or just to have a chat</p>
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address: 369 cbd<br>&nbsp;<img src="Images/location.png" height="30" />&nbsp;&nbsp;RailRide, Kenya<br>
        <p> &nbsp;<img alt="" class="auto-style2" src="Images/phone.png" />&nbsp; &nbsp;Phone: <a href="tel:+254712345678">+254 748 894 236</a></p>
        <p>&nbsp;<img src="Images/email.png" height="30" style="width: 42px"/> Email: <a href="felistuskitilit@gmail.com">railroad@gmail.com</a></p>
  </div>
  <div class="form-container">
    
    <form>
      <input type="text" placeholder="Name" required>
      <input type="email" placeholder="Email" required>
      <input type="text" placeholder="Subject" required>
      <textarea placeholder="Message" rows="5" required></textarea>
      <button type="submit">Send</button>
    </form>
  </div>
</div>
     <div>
        <p style="text-align:center;font-family:'Times New Roman';font-size:22px;padding-left:450px;padding-right:450px;background-color:white">
            Let's stay in touch! We're always here to listen to your feedback, answer your questions, 
            and help you plan your next 
            journey with RailRide.
        </p>
        </div>
    <div style="height:50px"></div>
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8062412766935!2d36.824466050821336!3d-1.2905578359914398!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f11273b780fc5%3A0x742c08ef4f07d7fd!2sRailways%20Headquarters!5e0!3m2!1sen!2ske!4v1680379517293!5m2!1sen!2ske" 
    width="1000"   height="300" style="border:0;padding-left:200px" allowfullscreen="" loading="lazy"
      referrerpolicy="no-referrer-when-downgrade"></iframe>
  <div style="height:100px"></div>
    


        
</asp:Content>
