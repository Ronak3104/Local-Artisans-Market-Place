<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="LocalArtisansMarketPlace.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        h2{
            color: #6D0016;
        }
        .auto-style1 {
            width: 206px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 278px;
        }
        .style1 {
            background-color: #6D0016
        }
        .auto-style5 {
            width: 700px;
            height: 744px;
        }
        .auto-style6 {
            text-align: left;
        }
    </style>
</head>
<body class="style1">
    <form id="form1" runat="server">
    <table align="center" style="width: 700px; height: 744px; background-color: #FFE9D7" class="auto-style5">
        <tr>
            <td colspan="2" class="auto-style2">
                <h2>Registration Page</h2>

            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width:50%">
                &nbsp;
                <asp:Label ID="l1" runat="server" Font-Bold="True" Text="First Name:" ForeColor="#6D0016"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tb1" runat="server" Height="45px" Width="270px" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="tb1" Display="Dynamic" ErrorMessage="First name cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="rev1" runat="server" Display="Dynamic" ErrorMessage="Only characters are allowed" ForeColor="Red" ValidationExpression="^[A-Za-z]*$" ControlToValidate="tb1"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width:50%">
                &nbsp;
                <asp:Label ID="l2" runat="server" Font-Bold="True" Text="Last Name:" ForeColor="#6D0016"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tb2" runat="server" Height="45px" Width="270px" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="tb2" Display="Dynamic" ErrorMessage="Last name cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<asp:RegularExpressionValidator ID="rev2" runat="server" Display="Dynamic" ErrorMessage="Only characters are allowed" ForeColor="Red" ValidationExpression="^[A-Za-z]*$" ControlToValidate="tb2"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width:50%">
                &nbsp;
                <asp:Label ID="l3" runat="server" Font-Bold="True" Text="Email ID:" ForeColor="#6D0016"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tb3" runat="server" Height="45px" Width="270px" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7"></asp:TextBox>
                <asp:RegularExpressionValidator ID="rev3" runat="server" ControlToValidate="tb3" Display="Dynamic" ErrorMessage="Email ID not in proper format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width:50%">
                &nbsp;
                <asp:Label ID="l4" runat="server" Font-Bold="True" Text="Gender:" ForeColor="#6D0016"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="ddl1" runat="server" Width="270px" BackColor="#6D0016" ForeColor="#FFE9D7">
                    <asp:ListItem>Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="ddl1" Display="Dynamic" ErrorMessage="Gender not selected" ForeColor="Red" InitialValue="Select Gender"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width:50%">
                &nbsp;
                <asp:Label ID="l5" runat="server" Font-Bold="True" Text="Address:" ForeColor="#6D0016"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tb4" runat="server" Height="45px" Width="270px" TextMode="MultiLine" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="tb4" Display="Dynamic" ErrorMessage="Address cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width:50%">
                &nbsp;
                <asp:Label ID="l6" runat="server" Font-Bold="True" Text="Contact Number:" ForeColor="#6D0016"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tb5" runat="server" Height="45px" Width="270px" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7"></asp:TextBox>
                <asp:RegularExpressionValidator ID="rev4" runat="server" ControlToValidate="tb5" Display="Dynamic" ErrorMessage="Contact number not in proper format" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width:50%">
                &nbsp;
                <asp:Label ID="l7" runat="server" Font-Bold="True" Text="Password:" ForeColor="#6D0016"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tb6" runat="server" Height="45px" Width="270px" TextMode="Password" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tb6" Display="Dynamic" ErrorMessage="Password cannot be empty" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width:50%">
                &nbsp;
                <asp:Label ID="l8" runat="server" Font-Bold="True" Text="Confirm Password:" ForeColor="#6D0016"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="tb7" runat="server" Height="45px" Width="270px" TextMode="Password" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7"></asp:TextBox>
                <asp:CompareValidator ID="cv1" runat="server" ControlToCompare="tb6" ControlToValidate="tb7" Display="Dynamic" ErrorMessage="Password doesn't match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style2" >
                <asp:Button ID="Button1" runat="server" Text="Register" Font-Bold="True" Height="45px" Width="230px" OnClick="Button1_Click" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style6">
                <asp:Label ID="l9" runat="server" ForeColor="#6D0016"></asp:Label>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>