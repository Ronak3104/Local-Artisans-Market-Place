<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Feedback.aspx.cs" Inherits="LocalArtisansMarketPlace.Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            width: 50%;
            height: 60px;
        }
        .auto-style5 {
            height: 49px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" align="center" style="width: 700px; height: 300px; background-color: #6D0016">
        <tr>
            <td style="width:50%">
                <asp:Label ID="l1" runat="server" Text="First Name:" ForeColor="#FFE9D7" Font-Bold="True"></asp:Label>
            </td>
            <td style="width:50%">
                <asp:TextBox ID="tb1" runat="server" BackColor="#FFE9D7" BorderColor="#FFE9D7" ForeColor="#6D0016" Height="45px" Width="270px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="rfv1" runat="server" ErrorMessage="First name cannot be blank" ForeColor="#FFE9D7" ControlToValidate="tb1">*</asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="rev1" runat="server" ErrorMessage="Name can only be in characters " ForeColor="#FFE9D7" ValidationExpression="^[A-Za-z]*$" ControlToValidate="tb1">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="l2" runat="server" Text="Last Name:" ForeColor="#FFE9D7" Font-Bold="True"></asp:Label>
            </td>
            <td style="width:50%">
                <asp:TextBox ID="tb2" runat="server" BackColor="#FFE9D7" BorderColor="#FFE9D7" ForeColor="#6D0016" Height="45px" Width="270px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="tb2" ErrorMessage="Last name cannot be blank" ForeColor="#FFE9D7">*</asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="rev2" runat="server" ControlToValidate="tb2" ErrorMessage="Name can only be in characters " ForeColor="#FFE9D7" ValidationExpression="^[A-Za-z]*$">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width:50%">
                <asp:Label ID="l3" runat="server" Text="Contact Number:" ForeColor="#FFE9D7" Font-Bold="True"></asp:Label>
            </td>
            <td style="width:50%">
                <asp:TextBox ID="tb3" runat="server" BackColor="#FFE9D7" BorderColor="#FFE9D7" ForeColor="#6D0016" Height="45px" Width="270px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="tb3" ErrorMessage="Contact number cannot be blank" ForeColor="#FFE9D7">*</asp:RequiredFieldValidator>
                &nbsp;<asp:RegularExpressionValidator ID="rev3" runat="server" ControlToValidate="tb3" ErrorMessage="Contact number should be in proper format" ForeColor="#FFE9D7" ValidationExpression="\d{10}">*</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Label ID="l4" runat="server" Text="Feedback about the website" ForeColor="#FFE9D7" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="tb4" runat="server" BackColor="#FFE9D7" BorderColor="#FFE9D7" ForeColor="#6D0016" Height="45px" TextMode="MultiLine" Width="270px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="tb4" ErrorMessage="Feedback cannot be blank" ForeColor="#FFE9D7">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style5">
                <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#FFE9D7" BorderColor="#FFE9D7" ForeColor="#6D0016" Font-Bold="True" Height="45px" Width="230px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" class="auto-style3">
                <asp:ValidationSummary ID="vs1" runat="server" ForeColor="#FFE9D7" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="l5" runat="server" ForeColor="#FFE9D7"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>