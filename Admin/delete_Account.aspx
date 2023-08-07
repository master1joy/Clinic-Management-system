<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="delete_Account.aspx.cs" Inherits="ClinicManagementSystem.delete_Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 758px">&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
                
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 758px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 758px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 288px">&nbsp;</td>
            <td style="width: 254px">&nbsp;</td>
            <td style="width: 605px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px">&nbsp;</td>
            <td style="width: 254px">Account ID:</td>
            <td style="width: 605px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 288px">&nbsp;</td>
            <td style="width: 254px">&nbsp;</td>
            <td style="width: 605px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Delete Account" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
