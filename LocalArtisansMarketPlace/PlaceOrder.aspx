<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="LocalArtisansMarketPlace.PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #6D0016">
    <form id="form1" runat="server">
        <div>
            <table style="background-color: #FFE9D7; margin-top:50px; width:531px; height:563px" align="center">
                <tr>
                    <td colspan="2" align="center" style="vertical-align: top">
                        <asp:Label ID="l1" runat="server" Text="Card Details" Font-Bold="True" Font-Size="XX-Large" ForeColor="#6D0016"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="vertical-align: top">
                        <asp:TextBox ID="tb1" runat="server" BackColor="#6D0016" BorderColor="#6D0016" Font-Bold="True" Font-Size="Medium" ForeColor="#FFE9D7" Height="44px" Width="188px" placeholder="Frist Name"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="First Name is Empty" ControlToValidate="tb1" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rev1" runat="server" ErrorMessage="First Name must be in characters" ControlToValidate="tb1" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                    <td align="center" style="vertical-align: top">
                        <asp:TextBox ID="tb2" runat="server" BackColor="#6D0016" BorderColor="#6D0016" Font-Bold="True" Font-Size="Medium" ForeColor="#FFE9D7" Height="44px" Width="188px" placeholder="Last Name"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="rfv2" runat="server" ErrorMessage="Last Name is Empty" ControlToValidate="tb2" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rev2" runat="server" ErrorMessage="Last Name must be in characters" ControlToValidate="tb2" ForeColor="Red" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Image ID="i1" runat="server" BorderColor="Black" BorderWidth="2px" ImageUrl="~/Images/Payment.png" Width="450px" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Label ID="l2" runat="server" Text="Card Number" Font-Bold="True" Font-Size="Large" ForeColor="#6D0016"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="vertical-align:top">
                        <asp:TextBox ID="tb3" runat="server" BackColor="#6D0016" BorderColor="#6D0016" Font-Bold="True" Font-Size="Medium" ForeColor="#FFE9D7" Height="44px" Width="442px" placeholder="16 Digits"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="rfv3" runat="server" ErrorMessage="Card Number is Empty" ControlToValidate="tb3" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rev3" runat="server" ErrorMessage="Card Number must be of 16 digits" ControlToValidate="tb3" ForeColor="Red" ValidationExpression="[0-9]{16}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:Label ID="l3" runat="server" Text="Expiry Date" Font-Bold="True" Font-Size="Large" ForeColor="#6D0016"></asp:Label>
                    </td>
                    <td align="center">
                        <asp:Label ID="l4" runat="server" Text="CVV" Font-Bold="True" Font-Size="Large" ForeColor="#6D0016"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" style="vertical-align:top">
                        <asp:TextBox ID="tb4" runat="server" BackColor="#6D0016" BorderColor="#6D0016" Font-Bold="True" Font-Size="Medium" ForeColor="#FFE9D7" Height="44px" Width="188px" placeholder="MM/YY(06/24)"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="rfv4" runat="server" ErrorMessage="Expiry Date is Empty" ControlToValidate="tb4" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                    <td align="center" style="vertical-align:top">
                        <asp:TextBox ID="tb5" runat="server" BackColor="#6D0016" BorderColor="#6D0016" Font-Bold="True" Font-Size="Medium" ForeColor="#FFE9D7" Height="44px" Width="188px" placeholder="3 Digits"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="rfv5" runat="server" ErrorMessage="CVV is Empty" ControlToValidate="tb5" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rev4" runat="server" ErrorMessage="CVV must be of 3 digits" ControlToValidate="tb5" ForeColor="Red" ValidationExpression="[0-9]{3}">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" style="vertical-align:top">
                        <asp:TextBox ID="tb6" runat="server" BackColor="#6D0016" BorderColor="#6D0016" Font-Bold="True" Font-Size="X-Large" ForeColor="#FFE9D7" Height="50px" Width="442px" placeholder="Billing address" TextMode="MultiLine"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="rfv6" runat="server" ErrorMessage="Address is Empty" ControlToValidate="tb6" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="b1" runat="server" Text="Submit" BackColor="#6D0016" BorderColor="#6D0016" Font-Bold="True" Font-Size="Large" ForeColor="#FFE9D7" Height="44px" Width="188px" OnClick="b1_Click1" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="vs1" runat="server" Font-Bold="True" ForeColor="Red" HeaderText="Fix the following errors" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:HyperLink ID="hl1" runat="server" Font-Bold="True" ForeColor="#6D0016" NavigateUrl="~/AddToCart.aspx">Previous Page</asp:HyperLink>
                    </td>
                    <td align="center">
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" ForeColor="#6D0016" NavigateUrl="~/Default.aspx">Home Page</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
