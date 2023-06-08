<%@ Page Title="" Language="C#" MasterPageFile="~/Profile.Master" AutoEventWireup="true" CodeBehind="Settings.aspx.cs" Inherits="RailRide.Settings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 45px;
            width: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="height:50px"></div>
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
     <div class="horizontal-form1">
     <asp:PlaceHolder ID="PlaceHolder2" runat="server">
       <h2 style="background-color:mediumpurple;color:white">Personal Info</h2>
         
      </asp:PlaceHolder>
         <br/>
         <asp:PlaceHolder ID="PlaceHolder1" runat="server">
         <asp:Button ID="Update" runat="server" Text="Save" BackColor="MediumPurple" OnClick="Update_Click" Width="107px" />
         </asp:PlaceHolder>
     </div>
 </div>
    <div style="height:50px"></div>
</asp:Content>
