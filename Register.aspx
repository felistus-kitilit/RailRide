<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="RailRide.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="padding-top:50px"></div>
    <div class="login-form">
  <form>
      <div class="form-group">
          <h2 style="color:#663399">Get Started</h2>
          <p style="color:#663399">
              <asp:Label ID="lblSignUp" runat="server" ForeColor="Red" Text="Label" Font-Size="Larger"></asp:Label>
          </p>
      <label for="name">User Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtUname" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtUname" runat="server" BorderRadius="40px"></asp:TextBox>
    </div>
      <div class="form-group">
      <label for="email">Email address</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="email should have @ and ." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
&nbsp;<asp:TextBox ID="txtEmail" runat="server" BorderRadius="40px"></asp:TextBox>
    </div>
      <div class="form-group">
      <label for="address">Address</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddress" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtAddress" runat="server" BorderRadius="40px"></asp:TextBox>
    </div>
    <div class="form-group">
      <label for="phone">Phone Number</label><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtPhone" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:TextBox ID="txtPhone" runat="server" BorderRadius="40px"></asp:TextBox>
    </div>
    <div class="form-group">

      <label for="password">Password&nbsp;</label><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPassword" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
&nbsp;<asp:TextBox ID="txtPassword" runat="server" BorderRadius="40px" TextMode="Password"></asp:TextBox>
    </div>
      <div class="form-group">
      <label for="password">Confirm Password&nbsp;
          <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtCpasword" ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
&nbsp; </label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCpasword" ErrorMessage="Required" ForeColor="Red"></asp:RequiredFieldValidator>
          <asp:TextBox ID="txtCpasword" runat="server" BorderRadius="40px" TextMode="Password"></asp:TextBox>
    </div>
      <asp:Button ID="btnRegister" runat="server" OnClick="Button1_Click" Text="Register" BorderRadius="40px" BackColor="#9370DB" ForeColor="White" />
    <p style="font-size:20px">already have an account?<br /><a href="Login.aspx" style="color:blue;font-size:20px">Login here!!</a></p>
  </form>
</div>
    
    <div style="height:100px">
   
    </div>

  
</asp:Content>
