<%@ Page Title="" Language="C#" MasterPageFile="../Doctor/DesignPage.Master" AutoEventWireup="true" CodeBehind="add_schedule.aspx.cs" Inherits="ClinicManagementSystem.add_schedule" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td style="text-align:right;">
                 Welcome!<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
   
    <table style="width:100%;">
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Date"></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Doctor Id"></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Shift-1"></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Shift-2"></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Shift-3"></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Capacity"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="TextBox1">
            </ajaxToolkit:CalendarExtender>
        </td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 19px"></td>
        <td style="height: 19px">&nbsp;</td>
        <td style="height: 19px"></td>
        <td style="height: 19px">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text=" save" />
        </td>
        <td style="height: 19px">
            <asp:Button ID="Button2" runat="server" Text="clear" />
        </td>
        <td style="height: 19px"></td>
    </tr>
    <tr>
        <td colspan="3" style="height: 19px">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
        <td style="height: 19px">&nbsp;</td>
        <td style="height: 19px">&nbsp;</td>
        <td style="height: 19px">&nbsp;</td>
    </tr>
</table>
</asp:Content>
