<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LocalArtisansMarketPlace.Default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 1150px; height: 30px">
        <tr style="background-color: #6D0016">
            <td colspan="2" style="text-align: right">
                <asp:Label ID="l1" runat="server" style="text-align: left" Font-Bold="True" Font-Italic="True" Font-Names="Bahnscrift Semibold" ForeColor="#FFE9D7"></asp:Label>
                &nbsp;<asp:HyperLink ID="hl1" runat="server" Font-Bold="True" Font-Italic="False" Font-Names="Arial Rounded MT Bold" NavigateUrl="~/LoginPage.aspx" ForeColor="#FFE9D7">Click To Login</asp:HyperLink>
                &nbsp;<asp:Button ID="b1" runat="server" Text="Log Out" BackColor="#FFE9D7" BorderColor="#FFE9D7" Font-Bold="True" Font-Names="Comic Sans MS" ForeColor="#6D0016" Height="27px" Width="105px" OnClick="b1_Click" />
            </td>
            <td style="text-align: right">
                <asp:TextBox ID="tb1" runat="server" Height="21px" Width="174px"></asp:TextBox>
                &nbsp;<asp:ImageButton ID="ib1" runat="server" Height="23px" ImageUrl="~/Images/Search.png" Width="25px" OnClick="ib1_Click" />
            </td>
        </tr>
    </table>
    <asp:DataList ID="dl1" runat="server" DataKeyField="Id" DataSourceID="sds1" Height="293px" Width="310px" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="dl1_ItemCommand">
        <ItemTemplate>
            <table>
                <tr>
                    <td style="text-align: center; background-color: #6D0016">
                        <asp:Label ID="l2" runat="server" Text='<%# Eval("Pname") %>' Font-Bold="True" Font-Names="Open Sans Extrabold" ForeColor="#FFE9D7"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="i1" runat="server" BorderColor="#6D0016" BorderWidth="1px" Height="279px" Width="279px" ImageUrl='<%# Eval("Pimage") %>'/>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; background-color: #6D0016">
                        <asp:Label ID="l3" runat="server" Text="Price: Rs" Font-Bold="True" Font-Names="Arial" ForeColor="#FFE9D7" style="text-align:center"></asp:Label>
                        <asp:Label ID="l4" runat="server" Text='<%# Eval("Pprice") %>' Font-Bold="True" Font-Names="Arial" ForeColor="#FFE9D7" style="text-align:center"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="l5" runat="server" Text="Quantity"></asp:Label>
                        <asp:DropDownList ID="ddl1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:ImageButton ID="ib2" runat="server" Height="40px" ImageUrl="~/Images/Add to cart.png" Width="160px" CommandArgument='<%# Eval("Id") %>' CommandName="AddToCart"/>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="sds1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Id], [Pname], [Pimage], [Pprice] FROM [Product]"></asp:SqlDataSource>
</asp:Content>