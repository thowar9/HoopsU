<%@ Page Title="" Language="C#" MasterPageFile="~/HoopsU.Master" AutoEventWireup="true" CodeBehind="Skills Evaluation.aspx.cs" Inherits="HoopsU.skillsEvalutation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
            var c_value = document.cookie;
            var c_start = c_value.indexOf("userName=");
            if (c_start != -1) {
                c_start = c_value.indexOf("=", c_start) + 1;
                var c_end = c_value.indexOf(";", c_start);
                if (c_end == -1) {
                    c_end = c_value.length;
                }
                c_value = unescape(c_value.substring(c_start, c_end));
                alert(c_value)
            }
        </script>
    <asp:Panel ID="skills" runat="server" GroupingText="Rate your own skills!" Width="600px" style="font-size:18px">
        <table>
            <tr><asp:Label ID="lblHelp" runat="server" Text="1 is the lowest, 5 is the highest." /></tr>
            <tr>
                <td><asp:Label ID="lblDribbling" runat="server" Text="Rate your dribbling ability: " /></td>
                <td><asp:DropDownList ID="drpDribbling" runat="server" Width="50px">
                    <asp:ListItem value=1>1</asp:ListItem>
                    <asp:ListItem value=2>2</asp:ListItem>
                    <asp:ListItem value=3>3</asp:ListItem>
                    <asp:ListItem Value=4>4</asp:ListItem>
                    <asp:ListItem Value=5>5</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblShooting" runat="server" Text="Rate your shooting ability: " /></td>
                <td><asp:DropDownList ID="drpShooting" runat="server" Width="50px">
                    <asp:ListItem value=1>1</asp:ListItem>
                    <asp:ListItem value=2>2</asp:ListItem>
                    <asp:ListItem value=3>3</asp:ListItem>
                    <asp:ListItem Value=4>4</asp:ListItem>
                    <asp:ListItem Value=5>5</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblPassing" runat="server" Text="Rate your passing ability: " /></td>
                <td><asp:DropDownList ID="drpPassing" runat="server" Width="50px">
                    <asp:ListItem value=1>1</asp:ListItem>
                    <asp:ListItem value=2>2</asp:ListItem>
                    <asp:ListItem value=3>3</asp:ListItem>
                    <asp:ListItem Value=4>4</asp:ListItem>
                    <asp:ListItem Value=5>5</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td><asp:label ID="lblBestMove" runat="server" Text="Enter your best move: " /></td>
                <td><asp:TextBox ID="txtBestMove" runat="server" /></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="butSubmitSkills" runat="server" Text="Submit" OnClick="butSubmitSkills_Click" /></td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <asp:Panel ID="skillPanel" runat="server" GroupingText="Your Skills!" Width="600px" style="font-size:18px">
        <table>
            <tr>
                <td><asp:Label ID="lblSkillDribbling" runat="server" Text="Your dribbling skill: " /></td>
                <td><asp:TextBox ID="txtSkillDribbling" runat="server" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblSkillShooting" runat="server" Text="Your shooting skill: " /></td>
                <td><asp:TextBox ID="txtSkillShooting" runat="server" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblSkillPassing" runat="server" Text="Your passing skill: " /></td>
                <td><asp:TextBox ID="txtSkillPassing" runat="server" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblSkillBestMove" runat="server" Text="Your best move: " /></td>
                <td><asp:TextBox ID="txtSkillBestMove" runat="server" /></td>
            </tr>
        </table>
    </asp:Panel>
    <br />
</asp:Content>
