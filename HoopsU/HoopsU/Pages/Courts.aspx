<%@ Page Title="" Language="C#" MasterPageFile="~/HoopsU.Master" AutoEventWireup="true" CodeBehind="Courts.aspx.cs" Inherits="HoopsU.Courts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <table>
        <tr>
            <td style="width:60px; height:30px;">Court ID</td>
            <td style="width:200px; height:30px;">Court Name</td>
            <td style="width:60px; height:30px;">Capacity</td>
            <td style="width:100px; height:30px;">Full Size?</td>
            <td style="width:200px; height:30px;">Address</td>
            <td style="width:100px; height:30px;">Parking?</td>
            <td style="width:100px; height:30px;">Location</td>
        </tr>
    </table>
    <asp:GridView ID="grdCourts" runat="server" ShowHeader="False" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField ItemStyle-Width="60px" DataField="fldCourtID"/>
            <asp:BoundField ItemStyle-Width="200px" DataField="fldCourtName"/>
            <asp:BoundField ItemStyle-Width="60px" DataField="fldCourtCapacity"/>
            <asp:BoundField ItemStyle-Width="100px" DataField="fldCourtFullSize"/>
            <asp:BoundField ItemStyle-Width="200px" DataField="fldCourtAddress"/>
            <asp:BoundField ItemStyle-Width="100px" DataField="fldCourtParkingAvailable"/>
            <asp:BoundField ItemStyle-Width="100px" DataField="fldCourtZone"/>
        </Columns>
    </asp:GridView>
    </div>
    <br />
    <br />
</asp:Content>
