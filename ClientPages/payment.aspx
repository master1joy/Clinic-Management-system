<%@ Page Title="" Language="C#" MasterPageFile="~/ClientPages/ClientSide.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="ClinicManagementSystem.payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="width: 296px">Doctor Id:</td>
            <td style="width: 301px">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>Your Mail :
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 296px">Appoint No:</td>
            <td style="width: 301px">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">Fees:</td>
            <td style="width: 301px">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">Booking charges</td>
            <td style="width: 301px">
                <asp:Label ID="Label4" runat="server" Text="45"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Total Amount to pay" />
            </td>
            <td style="width: 301px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 296px">&nbsp;</td>
            <td style="width: 301px">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Pay now" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancel Payment" />
            </td>
        </tr>
    </table>
</asp:Content>
