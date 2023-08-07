<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="system_login.aspx.cs" Inherits="ClinicManagementSystem.Admin.system_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 319px;
        }
        .auto-style3 {
            width: 144px;
        }
        .auto-style4 {
            width: 319px;
            height: 30px;
        }
        .auto-style5 {
            width: 144px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
        }
        .auto-style7 {
            width: 315px;
        }
        .auto-style8 {
            height: 30px;
            width: 315px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="border-top:1px solid blue; border-bottom:1px solid blue;">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style7">    <asp:Label ID="Label1" runat="server" Text="Login to system" ForeColor="#3366FF"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Text="User Id" ForeColor="#660066"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" Width="174px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Password" ForeColor="#660066"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="174px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="Button1" runat="server" ForeColor="#000066" OnClick="Button1_Click" Text="Log On" />
            </td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
