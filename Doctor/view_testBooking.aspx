<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DesignPage.Master" AutoEventWireup="true" CodeBehind="view_testBooking.aspx.cs" Inherits="ClinicManagementSystem.view_testBooking_aspx" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
    <tr>
        <td style="width: 378px">
            <asp:Label ID="Label1" runat="server" Text="choose Date"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="TextBox1" Format="yyyy/MM/dd">
            </ajaxToolkit:CalendarExtender>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 378px">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
        <td>
            <asp:GridView ID="GV" runat="server" Height="279px" style="margin-left: 0px" Width="544px">
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 378px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
