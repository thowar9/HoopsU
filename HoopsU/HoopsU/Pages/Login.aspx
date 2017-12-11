<%@ Page Title="" Language="C#" MasterPageFile="~/HoopsU.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HoopsU.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:Panel style="clear:both" ID="LoginBox" runat="server" GroupingText="Login Info" Width="400px">
        <table>
            <tr>
                <td><asp:Label ID="lblUsername" runat="server" style="color:black" Text="Username: "/></td>
                <td><asp:TextBox ID="txtUsername" runat="server" syle="color:black" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblPassword" runat="server" style="color:black" Text="Password: " /></td>
                <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password" /></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="butLogin" runat="server" text="Login" OnClick="butLogin_Click"/></td>
            </tr>
            <tr>
                <td><a href="Create Account.aspx" style="text-decoration:none">Create Account</a></td>
                <td><asp:Button ID ="butAdminLogin" runat="server" text ="Login as Admin" OnClick="Admin_Login_Click" /></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
