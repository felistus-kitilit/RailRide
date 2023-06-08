<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RailRide.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
         <img src="Images/welcome.jpg"  width: 410px; padding-left:0px;" style="height: 330px; width: 383px;"/>
        </div>
        <div style="width:100px"></div>
    <div class="login-form">
  <form>
    <div class="form-group">
        <h2 style="color:#663399">Login</h2>
        <p>
            <asp:Label ID="lblInvalid" runat="server" ForeColor="Red" Text="Label"></asp:Label>
        </p>
      <label for="email">User Name&nbsp; </label>
&nbsp;<asp:TextBox ID="txtUname1" runat="server" BorderRadius="40px"></asp:TextBox>
    </div>
    <div class="form-group">
      <label for="password">Password</label>&nbsp;<asp:TextBox ID="txtPassword1" runat="server" BorderRadius="40px" TextMode="Password"></asp:TextBox>
      
    </div>
      <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="#9370DB" ForeColor="White" BorderRadius="40px" OnClick="btnLogin_Click"/>
    <p style="font-size:20px">don't have an account?<br /><a href="Register.aspx" style="color:blue;font-size:20px">register here!!</a></p>
  </form>
</div>
    <div style="height:100px">
       
    </div>

  

</asp:Content>
