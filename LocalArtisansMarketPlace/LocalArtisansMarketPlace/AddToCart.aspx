<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="LocalArtisansMarketPlace.AddToCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color: #6D0016">
    <form id="form1" runat="server">
        <div align="center" style="margin: 0 auto;">
            <asp:Label ID="l1" runat="server" Text="You have Following Products In Your Cart" Font-Bold="True" Font-Overline="True" Font-Size="25pt" Font-Underline="True" ForeColor="#FFE9D7"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="hl1" runat="server" Font-Bold="True" Font-Names="colnna mt" Font-Size="X-Large" ForeColor="#FFE9D7" NavigateUrl="~/Default.aspx">Continue Shopping</asp:HyperLink>
            <br />
            <br />
            <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" BackColor="#6D0016" BorderColor="#FFE9D7" BorderWidth="2px" EmptyDataText="No Product Available in Shopping Cart." Font-Bold="True" ForeColor="#FFE9D7" Height="257px" ShowFooter="True" Width="1100px" OnRowDeleting="gv1_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Sr. No.">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pid" HeaderText="Product Id">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="pimage" HeaderText="Product Image">
                        <ControlStyle Height="300px" Width="340px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="pname" HeaderText="Product Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pprice" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="pquantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ptotalprice" HeaderText="Total Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#FFE9D7" BorderColor="#FFE9D7" ForeColor="#6D0016" />
                <HeaderStyle BackColor="#FFE9D7" BorderColor="#FFE9D7" ForeColor="#6D0016" />
            </asp:GridView>
            <br />
            <asp:Button ID="b1" runat="server" Text="Payment" BackColor="#6D0016" BorderColor="#FFE9D7" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="#FFE9D7" Height="45px" Width="135px" OnClick="b1_Click" BorderWidth="2px" />
        </div>
    </form>
</body>
</html>
