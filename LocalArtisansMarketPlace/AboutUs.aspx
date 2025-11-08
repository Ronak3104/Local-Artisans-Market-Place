<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="LocalArtisansMarketPlace.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: center;
            width:10%
        }
        .auto-style5 {
            text-align: center;
            width: 5%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3">
        <tr>
            <td class="auto-style5">
                <asp:Image ID="i1" runat="server" Height="250px" ImageUrl="~/Images/Handmadeheaven.png" Width="250px" />
            </td>
            <td class="auto-style4">
                <asp:Label ID="l1" runat="server" Font-Bold="True" Font-Names="Georgia" Font-Size="30pt" ForeColor="#6D0016" Text="HAND MADE HEAVEN"></asp:Label>
                <br />
                <asp:Label ID="l2" runat="server" Font-Bold="True" Font-Size="Large" Text="For those who love handmade crafts.......!!"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <asp:Label ID="l3" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Marcellus" Font-Size="18pt" ForeColor="#6D0016" Text="Hand Made Heaven is a vibrant platform that celebrates the talents of Indian artisans. Our mission is to honor and showcase their exceptional craftsmanship. By bridging the gap between artisans and discerning customers, we create a space where bespoke, handmade treasures find their way into the hearts and homes of those who appreciate creativity and quality. We’re passionate about preserving traditional skills, fostering creativity, and supporting local communities. Welcome to our world of unique, beautiful&nbsp;creations!"></asp:Label>
    <br /><br />
</asp:Content>
