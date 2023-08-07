<%@ Page Title="" Language="C#" MasterPageFile="~/ClientPages/ClientSide.Master" AutoEventWireup="true" CodeBehind="update_password.aspx.cs" Inherits="ClinicManagementSystem.ClientPages.update_password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" CssClass="align_item_right" Text="user id"></asp:Label>
        </td>
        <td style="width: 204px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td style="width: 132px">
            <asp:Label ID="Label2" runat="server" CssClass="align_item_right" Text="New password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 204px">&nbsp;</td>
        <td style="width: 132px">
            <asp:Label ID="Label3" runat="server" CssClass="align_item_right" Text="confirm password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="password doesn't match" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td style="width: 204px">&nbsp;</td>
        <td style="width: 132px">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </td>
    </tr>
</table>
</asp:Content>
