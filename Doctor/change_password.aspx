<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DesignPage.Master" AutoEventWireup="true" CodeBehind="change_password.aspx.cs" Inherits="ClinicManagementSystem.change_password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 336px">Enter User Id:</td>
            <td style="width: 203px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 336px">Enter New Password:</td>
            <td style="width: 203px">
                <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 336px">Confirm Password:</td>
            <td style="width: 203px">
                <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 336px">&nbsp;</td>
            <td style="width: 203px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Change password" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
