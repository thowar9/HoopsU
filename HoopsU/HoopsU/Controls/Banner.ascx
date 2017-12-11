<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Banner.ascx.cs" 
    Inherits="HoopsU.Controls.Banner" %>
<%@ Register Src="Language.ascx" TagName="Language" TagPrefix="ucLag"%>
<a href="Default.aspx" style="text-decoration:none; color:orange;">
<asp:Label ID="lblBanner" Text="HoopsU" runat="server"></asp:Label>
</a>
<table>
    <tr>
        <td style="font-size: 30px;"><ucLag:Language ID="Lang" runat="server" /></td>
    </tr>
</table>