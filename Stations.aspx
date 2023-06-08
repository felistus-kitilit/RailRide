<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Stations.aspx.cs" Inherits="RailRide.Stations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="font-family:Arial;font-size:25px;background-color:white;">
        Our Stations</p>
    <p style="text-align:center;font-family:'Times New Roman';font-size:22px;padding-left:450px;padding-right:450px;background-color:white">
            Discover our network of stations - the gateways to your next adventure. From bustling urban centers to picturesque 
        small towns, our stations are where the journey begins!!
        </p>
    <div class="row">
        <div class="stations-col">
            <img src="Images/Nairobi.jpg" />
            <h4>Nairobi Station</h4>
        </div>
        <div class="stations-col">
            <img src="Images/mtito.jpg" />
            <h4>Mtito Station</h4>
        </div>
        <div class="stations-col">
            <img src="Images/voi.jpg" />
            <h4>Voi station</h4>
        </div>
        <div class="stations-col">
            <img src="Images/kibwezi.jpg" />
            <h4>Kibwezi station</h4>
        </div>
    </div>
    <div class="row">
        <div class="stations-col">
            <img src="Images/mombasa.jpg" />
            <h4>Mombasa Station</h4>
        </div>
        <div class="stations-col">
            <img src="Images/mariakani.jpg" />
            <h4>Mariakani Station</h4>
        </div>
        <div class="stations-col">
            <img src="Images/miasenyi_s.jpg" />
            <h4>Miasenyi station</h4>
        </div>
        <div class="stations-col">
            <img src="Images/emali.jpg" />
            <h4>Emali station</h4>
        </div>
    </div>
</asp:Content>
