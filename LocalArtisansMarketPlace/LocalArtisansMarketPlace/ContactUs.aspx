<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="LocalArtisansMarketPlace.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            height: 37px;
        }
        .auto-style4 {
            height: 76px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="align-items:center">
        <tr>
            <td align="center">
                <asp:Image ID="i1" runat="server" Width="1140px" Height="350px" ImageUrl="~/Images/Contact us.png" />
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style4">
                <asp:Label ID="l1" runat="server" Text="HAND MADE HEAVEN" BorderColor="#6D0016" BorderStyle="None" Font-Bold="True" Font-Size="35pt" ForeColor="#6D0016" Height="50px" Width="1140px" Font-Names="georgia" Font-Underline="True"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" >
                <asp:Label ID="l2" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large" ForeColor="#6D0016" Height="40px" Width="1140px"></asp:Label>

            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="l3" runat="server" Text="CLICK ON THE ARROW BELOW TO CHOOSE WHAT YOU HAVE PROBLEM WITH." Height="30px" Width="1140px" ForeColor="#6D0016" BorderStyle="Groove" BorderColor="#6D0016" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style3">
                <asp:DropDownList ID="ddl1" runat="server" BackColor="#6D0016" Font-Bold="True" Font-Size="Large" ForeColor="#FFE9D7" Width="600px" AutoPostBack="True" Font-Names="marcelleus" Height="50px">
                    <asp:ListItem>PLEASE SELECT YOUR ISSUE</asp:ListItem>
                    <asp:ListItem>WANT TO RETURN THE PRODUCT</asp:ListItem><asp:ListItem>ISSUE WITH REFUND PROCESS</asp:ListItem>
                    <asp:ListItem>DAMAGED PRODUCT RECEIVED</asp:ListItem>
                    <asp:ListItem>WRONG ITEM DELIVERED</asp:ListItem>
                    <asp:ListItem>OTHER</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="b1" runat="server" Text="SUBMIT" BackColor="#6D0016" Font-Bold="True" Font-Size="X-Large" ForeColor="#FFE9D7" OnClick="b1_Click"/>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="l4" runat="server" Text="Label" BorderColor="#6D0016" BorderStyle="Dotted" Font-Bold="True" Font-Size="X-Large" ForeColor="#6D0016" Height="40px" Width="1140px"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
