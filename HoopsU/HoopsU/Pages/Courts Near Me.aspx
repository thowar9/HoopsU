<%@ Page Title="" Language="C#" MasterPageFile="~/HoopsU.Master" AutoEventWireup="true" CodeBehind="Courts Near Me.aspx.cs" Inherits="HoopsU.Courts_Near_Me" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="SelectZone" runat="server" GroupingText="Select Zone" width="600px">
        <table>
            <tr>
                <td><asp:Label ID="lblZone" runat="server" Text="Select zone from list: "></asp:Label></td>
                <td><asp:DropDownList ID="drpZone" runat="server" AutoPostBack="true">
                    <asp:ListItem Value="Towson">Towson</asp:ListItem>
                    <asp:ListItem Value="Annapolis">Annapolis</asp:ListItem>
                    <asp:ListItem Value="East Balitmore">East Balitmore</asp:ListItem>
                    <asp:ListItem Value="West Baltimore">West Baltimore</asp:ListItem>
                    <asp:ListItem Value="Arbutus">Arbutus</asp:ListItem>
                    <asp:ListItem Value="Eldersburg">Eldersburg</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr><td></td><td><asp:Button ID="butSubmit" runat="server" Text="Submit" onclick="butSubmit_Click" /></td></tr>
            <tr><td><a style="color:red">If your zone isn't listed, please contact us.</a></td></tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="CourtsNearMe" GroupingText="Courts Near You - in " runat="server" Width="800px">
        <asp:Label ID="lblChosenZone" Text="" runat="server"/>
        <br />
        <table>
        <tr>
            <td style="width:100px; height:30px;">Court ID</td>
            <td style="width:100px; height:30px;">Court Name</td>
            <td style="width:100px; height:30px;">Capacity</td>
            <td style="width:100px; height:30px;">Full Size?</td>
            <td style="width:200px; height:30px;">Address</td>
            <td style="width:100px; height:30px;">Parking?</td>
            <td style="width:100px; height:30px;">Location</td>
        </tr>
    </table>
        <asp:GridView ID="grdCourts" runat="server" ShowHeader="False" AutoGenerateColumns="False">
            <Columns>
            <asp:BoundField ItemStyle-Width="100px" DataField="fldCourtID"/>
            <asp:BoundField ItemStyle-Width="100px" DataField="fldCourtName"/>
            <asp:BoundField ItemStyle-Width="100px" DataField="fldCourtCapacity"/>
            <asp:BoundField ItemStyle-Width="100px" DataField="fldCourtFullSize"/>
            <asp:BoundField ItemStyle-Width="200px" DataField="fldCourtAddress"/>
            <asp:BoundField ItemStyle-Width="100px" DataField="fldCourtParkingAvailable"/>
            <asp:BoundField ItemStyle-Width="100px" DataField="fldCourtZone"/>
        </Columns>
        <HeaderStyle BackColor="Orange" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
    </asp:Panel>
    <br />
</asp:Content>
