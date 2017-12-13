<%@ Page Title="" Language="C#" MasterPageFile="~/HoopsU.Master" AutoEventWireup="true" CodeBehind="Contact Us.aspx.cs" Inherits="HoopsU.Contact_Us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblJSON" runat="server"></asp:Label>
    <asp:Label ID ="lblAJAX" runat="server" Text="Press button for contact info." stle="float:left"/>
    <input type="button" ID="btnAJAX" value="Update Ajax" OnClick="ParseJSONAJAX()" />
    <div ID="JSONAJAX"></div>
    <script type="text/javascript">
    function getXMLHTTP() {
        if (window.XMLHttpRequest)
            return new XMLHttpRequest();
        else
            return new ActiveXObject("Microsoft.XMLHTTP");
    }
    function ParseJSONAJAX() {
        var xmlHttp = getXMLHTTP();
        xmlHttp.onreadystatechange = function () {
            if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                document.getElementById('JSONAJAX').innerHTML = xmlHttp.responseText;
            }
        }
        var url = "../Handlers/JSONAJAX.ashx"
        xmlHttp.open("POST", url, true);
        xmlHttp.send();
    }
    </script>

</asp:Content>
