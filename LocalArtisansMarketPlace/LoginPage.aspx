<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="LocalArtisansMarketPlace.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        h2{
            color: #6D0016;
        }
        .auto-style1 {
            text-align: center;
        }
        .style1 {
            background-color: #6D0016
        }
    </style>
</head>
<body class="style1">
    <form id="form1" runat="server">
        <div>
            <table align="center" style="width: 691px; height: 440px; background-color: #FFE9D7">
                <tr>
                    <td colspan="2">
                        <h2 class="auto-style1">Login Page</h2>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%" class="auto-style1">
                        <asp:Label ID="l1" runat="server" Font-Bold="True" Text="Email ID:" ForeColor="#6D0016"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tb1" runat="server" Height="45px" Width="270px" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%" class="auto-style1">
                        <asp:Label ID="l2" runat="server" Font-Bold="True" Text="Password:" ForeColor="#6D0016"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="tb2" runat="server" Height="45px" Width="270px" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style1">
                        <asp:Button ID="b1" runat="server" Height="45px" Text="Login" Width="230px" BackColor="#6D0016" BorderColor="#6D0016" Font-Bold="True" Font-Size="Large" ForeColor="#FFE9D7" OnClick="b1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:right">
                        <asp:HyperLink ID="hl1" runat="server" Font-Bold="True" Font-Names="Arial Rounded MT Bold" Font-Underline="True" ForeColor="#6D0016" NavigateUrl="~/RegistrationForm.aspx">Register here...</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="l3" runat="server" ForeColor="#6D0016"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>