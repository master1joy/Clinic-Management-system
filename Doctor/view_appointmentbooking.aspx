<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DesignPage.Master" AutoEventWireup="true" CodeBehind="view_appointmentbooking.aspx.cs" Inherits="ClinicManagementSystem.view_appointmentbooking" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
    <tr>
        <td style="width: 244px; height: 26px;">
            <asp:Label ID="Label1" runat="server" Text="choose Date"></asp:Label>
        </td>
        <td style="width: 202px; height: 26px;">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="TextBox1"></ajaxToolkit:CalendarExtender>
        </td>
        <td style="width: 122px; height: 26px;">
            <asp:Label ID="Label2" runat="server" Text="enter Doctor Id" CssClass="align_item_right"></asp:Label>
        </td>
        <td style="width: 122px; height: 26px;">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td style="height: 26px">
        </td>
    </tr>
    <tr>
        <td style="width: 244px">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
        <td style="width: 202px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </td>
        <td style="width: 122px" colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 244px">
            &nbsp;</td>
        <td style="width: 202px">
            &nbsp;</td>
        <td style="width: 122px" colspan="2">
<asp:GridView ID="GridView1" runat="server" Width="549px">
</asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
<br />
</asp:Content>
