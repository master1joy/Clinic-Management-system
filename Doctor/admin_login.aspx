<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DesignPage.Master" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="ClinicManagementSystem.admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="width: 212px">&nbsp;</td>
            <td style="width: 190px">Enter login Credential</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px">
                <asp:Label ID="Label1" runat="server" Text="Admin Id"></asp:Label>
            </td>
            <td style="width: 190px">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 190px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 212px">&nbsp;</td>
            <td style="width: 190px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LogIn" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
