<%@ Page Title="" UICulture="en" Language="C#" MasterPageFile="~/HoopsU.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HoopsU.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:label ID="welcomeMessage" runat="server" text = "<%$ Resources:WebResources, WelcomeMessage %>" />
    <br />
    <asp:Image ID="img1" runat="server" ImageUrl="~/Images/Court Clip.png" height="300px" Width="600px" />
    <br />  
</asp:Content>
