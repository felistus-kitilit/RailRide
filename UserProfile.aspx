<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="RailRide.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 256px;
        }
        .auto-style2 {
            width: 46px;
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="MenuContainer">
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
      <div class="login-form">
  <form>
    <div class="form-group">
        <h2 style="color:#663399">Reserve Seat</h2>
      <label for="email">Date:&nbsp; </label>
&nbsp;<asp:TextBox ID="txtDate" runat="server" BorderRadius="40px" TextMode="Date"></asp:TextBox>
        
    </div>
      <div class="form-group">
        
          <br />
        
    </div>
    <div class="form-group">
      <label for="From">From:</label>&nbsp;
        <br />
        
        <asp:DropDownList ID="drpFROM" runat="server" Height="50px" Width="398px" BorderRadius="150px">
            <asp:ListItem>Select Depature station</asp:ListItem>
            <asp:ListItem>Nairobi</asp:ListItem>
            <asp:ListItem>Mtito-Andei</asp:ListItem>
            <asp:ListItem>Voi</asp:ListItem>
            <asp:ListItem>Mombasa</asp:ListItem>
        </asp:DropDownList>
        
    </div>
      <br />
      <div class="form-group">
      <label for="From">To:</label>&nbsp;
        <br />
          
        <asp:DropDownList ID="drpTo" runat="server" Height="50px" Width="398px" BorderRadius="40px">
            <asp:ListItem>Select Destination Station</asp:ListItem>
            <asp:ListItem>Nairobi</asp:ListItem>
            <asp:ListItem>Mtito-Andei</asp:ListItem>
            <asp:ListItem>Voi</asp:ListItem>
            <asp:ListItem>Mombasa</asp:ListItem>
        </asp:DropDownList>
         
    </div>
      
    <p style="font-size:20px">
        <asp:Button ID="btnBook" runat="server" BorderStyle="NotSet" Text="Book" BackColor="MediumPurple" BorerRadius="40px" OnClick="btnBook_Click" />
      </p>
      <p style="font-size:20px">
          <asp:Label ID="lblerrormsg" runat="server" ForeColor="Red" Text="Label"></asp:Label>
      </p>
  </form>
</div>
</div>


    
    
    
  
  
</asp:Content>

