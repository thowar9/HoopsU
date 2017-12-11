<%@ Page Title="" Language="C#" MasterPageFile="~/HoopsU.Master" AutoEventWireup="true" CodeBehind="About Us.aspx.cs" Inherits="HoopsU.About_Us" %>
<%@ Register Assembly="ZedGraph.Web" Namespace="ZedGraph.Web" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <cc1:ZedGraphWeb ID="ZedGraphWeb1" runat="server" OnRenderGraph="ZedGraphWeb1_RenderGraph">

    </cc1:ZedGraphWeb>
</asp:Content>
