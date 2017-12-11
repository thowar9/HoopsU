<%@ Page Title="" Language="C#" MasterPageFile="~/HoopsU.Master" AutoEventWireup="true" CodeBehind="Create Account.aspx.cs" Inherits="HoopsU.Create_Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel style="clear:both" ID="PersonalDetails" runat="server" GroupingText="Personal Details" Width="800px">
        <div style="float:right; color:red">
            * Required Information 
        </div>
    <table>
        <tr>
            <td><asp:Label ID="lblGender" style="color:Black" Text="Gender:" runat="server" /></td>
            <td><asp:RadioButtonList ID="RadioButtonListGender" runat="server" RepeatColumns="2"
                RepeatDirection="Horizontal" RepeatLayout="Flow">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
                <div style="float:right; color:red"">*</div>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                    ControlToValidate="RadioButtonListGender" ForeColor="Red" 
                    ErrorMessage="You must select a gender."/>
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblFirstName" style="color:Black" Text="First Name: " runat="server" /></td>
            <td><asp:TextBox ID="txtFirstName" runat="server" />
                 <div style="float:right; color:red"">*</div>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valReqFirstName" runat="server"
                    ControlToValidate="txtFirstName" 
                    ErrorMessage="You must enter a first name"
                    Display="Dynamic" 
                    ForeColor="Red" />
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblLastName" style="color:Black" Text="Last Name: " runat="server" /></td>
            <td><asp:TextBox ID="txtLastName" runat="server" />
                 <div style="float:right; color:red"">*</div>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valReqLastName" runat="server"
                    ControlToValidate="txtLastName" 
                    ErrorMessage="You must enter a Last Name"
                    Display="Dynamic" 
                    ForeColor="Red" /> 
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblDateOfBirth" style="color:Black" Text="Date of Birth: " runat="server" /></td>
            <td><asp:TextBox ID="txtDateOfBirth" runat="server" />
                <div style="float:right; color:red"">* eg. 11/01/1993</div>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="valRegDateOfBirth" runat="server"
                        ControlToValidate="txtDateOfBirth"
                        ValidationExpression="^\d{1,2}\/\d{1,2}\/\d{4}$"
                        ErrorMessage="D.O.B. must be in correct format."
                        display="Dynamic"
                        ForeColor="Red"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valReqDateOfBirth" runat="server"
                    ControlToValidate="txtDateOfBirth" 
                    ErrorMessage="You must enter your D.O.B."
                    Display="Dynamic" 
                    ForeColor="Red" /> 
            </td>
        </tr>
        <tr>
            <td><asp:Label ID="lblEmailAddress" style="color:Black" Text="Email Address: " runat="server" /></td>
            <td><asp:TextBox ID="txtEmailAddress" runat="server" />
                 <div style="float:right; color:red"">*</div>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="valRegEmailAddress" runat="server"
                        ControlToValidate="txtEmailAddress"
                        ValidationExpression=".*@.*\..*"
                        ErrorMessage="You must enter a valid email."
                        display="Dynamic"
                        ForeColor="Red"/>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valReqEmailAddress" runat="server"
                    ControlToValidate="txtEmailAddress" 
                    ErrorMessage="You must enter your email."
                    Display="Dynamic" 
                    ForeColor="Red" /> 
            </td>
        </tr>
    </table>
    </asp:Panel>
    &nbsp; <!--space between panels-->
    <asp:Panel style="clear:both" ID="compDetails" runat="server" GroupingText="Company Details" Width="800px">
    <table>
        <tr>
            <td><asp:Label ID="lblCompName" style="color:black" Text="Company Name: " runat="server" /></td>
            <td><asp:TextBox ID="txtCompName" runat="server" /></td>

        </tr>
    </table>
    </asp:Panel>
    &nbsp; <!--space between panels-->
    <asp:Panel style="clear:both" ID="address" runat="server" GroupingText="Your Address" Width="800px">
        <table>
            <tr>
                <td><asp:Label ID="lblStAddress" style="color:black" runat="server" Text="Street Address: " /></td>
                <td><asp:TextBox ID="txtStAddress" runat="server" />
                     <div style="float:right; color:red"">*</div>
                </td>
                <td>
                     <asp:RequiredFieldValidator ID="valReqStAddress" runat="server"
                        ControlToValidate="txtStAddress" 
                        ErrorMessage="You must enter your address."
                        Display="Dynamic" 
                        ForeColor="Red" /> 
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblSuburb" style="color:black" runat="server" Text="Suburb: " /></td>
                <td><asp:TextBox ID="txtSuburb" runat="server" /></td>
            </tr>
            <tr>
                <td><asp:Label ID="lblZipCode" style="color:black" runat="server" Text="Zip Code: " /></td>
                <td><asp:TextBox ID="txtZipCode" runat="server" />
                     <div style="float:right; color:red"">*</div>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="valRegZipCode" runat="server"
                        ControlToValidate="txtZipCode"
                        ValidationExpression="\d{5}"
                        ErrorMessage="Zip Code must be 5 numeric digits."
                        display="Dynamic"
                        ForeColor="Red">
                    </asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="valReqZipCode" runat="server"
                        ControlToValidate="txtZipCode" 
                        ErrorMessage="You must enter a Zip Code"
                        Display="Dynamic" 
                        ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblCity" style="color:black" runat="server" Text="City: " /></td>
                <td><asp:TextBox ID="txtCity" runat="server" />
                     <div style="float:right; color:red"">*</div>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="valReqCity" runat="server"
                        ControlToValidate="txtCity" 
                        ErrorMessage="You must enter your city."
                        Display="Dynamic" 
                        ForeColor="Red" /> 
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblState" style="color:black" runat="server" Text="State/Province: " /></td>
                <td><asp:TextBox ID="txtState" runat="server" />
                     <div style="float:right; color:red"">*</div>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="valReqState" runat="server"
                        ControlToValidate="txtState" 
                        ErrorMessage="You must enter your state or province."
                        Display="Dynamic" 
                        ForeColor="Red" /> 
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblCountry" style="color:black" runat="server" Text="Country: " /></td>
                <td>
                    <asp:DropDownList ID="countryList" runat="server" Width="300px"> 
                        <asp:ListItem Selected="True" Value="United States">United States</asp:ListItem>
                        <asp:ListItem Value="Canada">Canada</asp:ListItem>
                        <asp:ListItem Value="Argentina">Argentina</asp:ListItem>
                        <asp:ListItem Value="Brasil">Brasil</asp:ListItem>
                        <asp:ListItem Value="China">China</asp:ListItem>
                        <asp:ListItem Value="India">India</asp:ListItem>
                    </asp:DropDownList>
                     <div style="float:right; color:red"">*</div>
                </td>
            </tr>
        </table>
    </asp:Panel>
    &nbsp; <!--space between panels-->
    <asp:Panel style="clear:both" ID="contactInfo" runat="server" GroupingText="Your Contact Information" Width="800px">
        <table>
            <tr>
                <td><asp:Label ID="lblTelephoneNumber" style="color:black" runat="server" Text="Telephone Number: " /></td>
                <td><asp:TextBox ID="txtTelephoneNumber" runat="server" />
                     <div style="float:right; color:red"">*</div>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="valReqTelephoneNumber" runat="server"
                        ControlToValidate="txtTelephoneNumber" 
                        ErrorMessage="You must enter your phone number."
                        Display="Dynamic" 
                        ForeColor="Red" /> 
                    <asp:RegularExpressionValidator ID="valRegTelephoneNumber" runat="server"
                        ControlToValidate="txtTelephoneNumber"
                        ValidationExpression="\d{10,11}"
                        ErrorMessage="Telephone number must be 10 or 11 digits."
                        display="Dynamic"
                        ForeColor="Red"/>
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblFaxNumber" style="color:black" runat="server" Text="Fax Number: " /></td>
                <td><asp:TextBox ID="txtFaxNumber" runat="server" /></td>
            </tr>
        </table>
    </asp:Panel>
    &nbsp; <!--space between panels-->
    <asp:Panel style="clear:both" ID="options" runat="server" GroupingText="Options" Width="800px">
        <table>
            <tr>
                <td><asp:Label ID="lblNewsletter" style="color:black" runat="server" text="Newsletter: " /></td>
                <td><asp:CheckBox ID="chkNewsletter" runat="server" /></td>
            </tr>
        </table>
    </asp:Panel>
    
    <asp:Panel style="clear:both" ID="password" runat="server" GroupingText="Your Password" Width="800px">
        <table>
            <tr>
                <td><asp:Label ID="lblPassword" style="color:black" runat="server" text="Password: " /></td>
                <td><asp:TextBox ID="txtPassword" TextMode="Password" runat="server" />
                     <div style="float:right; color:red"">*</div>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="valReqPassword" runat="server"
                        ControlToValidate="txtPassword" 
                        ErrorMessage="You must enter a password."
                        Display="Dynamic" 
                        ForeColor="Red" /> 
                </td>
            </tr>
            <tr>
                <td><asp:Label ID="lblConfirmPassowrd" style="color:black" runat="server" text="Confirm Password: " /></td>
                <td><asp:TextBox ID="txtConfirmPassword" TextMode="Password" runat="server" />
                     <div style="float:right; color:red"">*</div>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="valReqConfirmPassword" runat="server"
                        ControlToValidate="txtConfirmPassword" 
                        ErrorMessage="You must enter a password."
                        Display="Dynamic" 
                        ForeColor="Red" /> 
                    <asp:CompareValidator id="valComparePassword" runat="server"
                        ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword"
                        Operator="Equal"
                        ForeColor="Red"
	                    Type="String"
                        ErrorMessage="Password must match."
                        Display="dynamic"/>
                </td>
            </tr>
        </table>
    </asp:Panel>
    &nbsp; <!--space between panels-->
    <div style="text-align:center; width:600px">
        <asp:Button ID="submitButton" Text="Submit" runat="server" OnClick="Submit_Click"/>
    </div>
    <br />
</asp:Content>
