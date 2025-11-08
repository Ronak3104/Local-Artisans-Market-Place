<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pdf_generate.aspx.cs" Inherits="LocalArtisansMarketPlace.Pdf_generate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>
    </head>
<body style="background-color:#6D0016">
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:HyperLink ID="hl1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#FFE9D7" NavigateUrl="~/Default.aspx">Go To Home Page</asp:HyperLink>
            <asp:Panel ID="p1" runat="server">
                <table border="1" align="center">
                    <tr>
                        <td style="text-align:center">
                            <asp:Label ID="l1" runat="server" Text="Retail Invoice" Font-Bold="True" Font-Size="X-Large" ForeColor="#FFE9D7" style="text-align:center"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="l2" runat="server" Text="Order No:" Font-Bold="True" ForeColor="#FFE9D7"></asp:Label>
                            &nbsp;<asp:Label ID="l3" runat="server" Font-Bold="True" ForeColor="#FFE9D7" Text="Label"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="l4" runat="server" Font-Bold="True" ForeColor="#FFE9D7" Text="Order Date:"></asp:Label>
                            &nbsp;<asp:Label ID="l5" runat="server" Text="Label" Font-Bold="True" ForeColor="#FFE9D7"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td style="width:500px" class="auto-style2">
                                        <asp:Label ID="l6" runat="server" Text="Billing Address:" Font-Bold="True" ForeColor="#FFE9D7" Font-Size="Large" Font-Underline="True"></asp:Label>
                                        <br /><br />
                                        <asp:Label ID="l7" runat="server" Text="Label" Font-Bold="True" ForeColor="#FFE9D7"></asp:Label>
                                    </td>
                                    <td style="width:500px" class="auto-style2">
                                        <asp:Label ID="l8" runat="server" Text="Seller Address:" Font-Bold="True" ForeColor="#FFE9D7" Font-Size="Large" Font-Underline="True"></asp:Label>
                                        <br /><br />
                                        <asp:Label ID="l9" runat="server" Text="Hand Made Heaven<br>Shop No. 05, Agarwal Arcade,<br>Ghodhbunder Road, Manpada,<br>Thane West 400610" ForeColor="#FFE9D7"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="gv1" runat="server" AutoGenerateColumns="False" Width="1000px">
                                <Columns>
                                    <asp:BoundField DataField="sno" HeaderText="Sr. No.">
                                    <HeaderStyle Font-Bold="True" ForeColor="#FFE9D7" />
                                    <ItemStyle ForeColor="#FFE9D7" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="productid" HeaderText="Product Id">
                                    <HeaderStyle Font-Bold="True" ForeColor="#FFE9D7" />
                                    <ItemStyle ForeColor="#FFE9D7" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="productname" HeaderText="Product Name">
                                    <HeaderStyle Font-Bold="True" ForeColor="#FFE9D7" />
                                    <ItemStyle ForeColor="#FFE9D7" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                    <HeaderStyle Font-Bold="True" ForeColor="#FFE9D7" />
                                    <ItemStyle ForeColor="#FFE9D7" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="price" HeaderText="Price">
                                    <HeaderStyle Font-Bold="True" ForeColor="#FFE9D7" />
                                    <ItemStyle ForeColor="#FFE9D7" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="totalprice" HeaderText="Total Price">
                                    <HeaderStyle Font-Bold="True" ForeColor="#FFE9D7" />
                                    <ItemStyle ForeColor="#FFE9D7" HorizontalAlign="Center" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">
                            <asp:Label ID="l10" runat="server" Text="Grand Total:" Font-Bold="True" ForeColor="#FFE9D7"></asp:Label>
                            &nbsp;<asp:Label ID="l11" runat="server" Text="Label" Font-Bold="True" ForeColor="#FFE9D7"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:Label ID="l12" runat="server" Text="This is a computer generated bill and does not require signature." Font-Bold="True" ForeColor="#FFE9D7"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>