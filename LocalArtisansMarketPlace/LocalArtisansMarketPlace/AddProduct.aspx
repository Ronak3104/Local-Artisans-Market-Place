<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="LocalArtisansMarketPlace.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 510px;">
        <table style="width: 700px; height: 390px; background-color: #FFE9D7;" align="center">
            <tr>
                <td align="center" width="50%" colspan="2">
                    <asp:Label ID="l1" runat="server" Text="Adding Product" Font-Bold="True" Font-Size="25pt" ForeColor="#6D0016"></asp:Label>
                    <hr />
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <asp:Label ID="l3" runat="server" Text="Product Name:" Font-Bold="True" ForeColor="#6D0016"></asp:Label>
                </td>
                <td width="50%">
                    <asp:TextBox ID="tb2" runat="server" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <asp:Label ID="l4" runat="server" Text="Product Desc:" Font-Bold="True" ForeColor="#6D0016"></asp:Label>
                </td>
                <td width="50%">
                    <asp:TextBox ID="tb3" runat="server" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <asp:Label ID="l5" runat="server" Text="Product Image:" Font-Bold="True" ForeColor="#6D0016"></asp:Label>
                </td>
                <td width="50%">
                    <asp:FileUpload ID="fu1" runat="server" BackColor="#6D0016" BorderColor="#6D0016"/>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <asp:Label ID="l6" runat="server" Text="Product Price:" Font-Bold="True" ForeColor="#6D0016"></asp:Label>
                </td>
                <td width="50%">
                    <asp:TextBox ID="tb4" runat="server" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%">
                    <asp:Label ID="l7" runat="server" Text="Product Made By:" Font-Bold="True" ForeColor="#6D0016"></asp:Label>
                </td>
                <td width="50%">
                    <asp:TextBox ID="tb5" runat="server" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%" colspan="2">
                    <asp:Button ID="b1" runat="server" Text="Add" BackColor="#6D0016" BorderColor="#6D0016" ForeColor="#FFE9D7" Font-Bold="True" Height="36px" OnClick="b1_Click" Width="80px"/>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%" colspan="2">
                    <asp:Label ID="l8" runat="server" Text="Label" Font-Bold="True" ForeColor="#6D0016"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>