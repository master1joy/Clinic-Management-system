<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="add_city.aspx.cs" Inherits="ClinicManagementSystem.add_city" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%; border:2px solid">
        <tr>
            <td style="width: 237px">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 847px" class="align_item_right">
                Welcome Admin
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 237px">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Enter city"></asp:Label>
            </td>
            <td style="width: 847px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 237px">&nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Enter District"></asp:Label>
            </td>
            <td style="width: 847px">
                <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 237px">&nbsp;</td>
            <td>&nbsp;</td>
            <td style="width: 847px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save Record " />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
