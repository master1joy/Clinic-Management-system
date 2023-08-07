<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DesignPage.Master" AutoEventWireup="true" CodeBehind="labReport_entry.aspx.cs" Inherits="ClinicManagementSystem.labReport_entry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="width: 298px">
                <asp:Label ID="Label1" runat="server" Text="select test report"></asp:Label>
            </td>
            <td style="width: 324px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="confirm" />
            </td>
            <td colspan="2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 298px; text-decoration: underline">
                <strong>Patient Details</strong></td>
            <td style="width: 324px">
                &nbsp;</td>
            <td colspan="2">Book Id</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 298px; height: 37px">
            </td>
            <td style="width: 324px; height: 37px">
                &nbsp;</td>
            <td style="height: 37px; " colspan="2">
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="search" />
            </td>
            <td style="height: 37px" colspan="2">
                &nbsp;</td>
            <td style="height: 37px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 298px; height: 23px">
            </td>
            <td style="width: 324px; height: 23px">
                Patient Name<asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="247px"></asp:TextBox>
            </td>
            <td style="height: 23px; width: 52px">
                <asp:Label ID="Label8" runat="server" Text="Age"></asp:Label>
            </td>
            <td style="height: 23px; width: 123px">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td style="height: 23px; width: 71px;">
                <asp:Label ID="Label7" runat="server" Text="Sex"></asp:Label>
            </td>
            <td style="height: 23px; width: 40px;">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="height: 23px">
            </td>
        </tr>
        <tr>
            <td style="width: 298px">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 324px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td colspan="2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 298px"><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
            <td style="width: 324px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td colspan="2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 298px"><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            <td style="width: 324px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td colspan="2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 298px"><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
            <td style="width: 324px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td colspan="2">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 298px"><asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
            <td style="width: 324px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td colspan="2">&nbsp;</td>
            <td colspan="2">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
