<%@ Page Title="" Language="C#" MasterPageFile="~/ClientPages/ClientSide.Master" AutoEventWireup="true" CodeBehind="book_Appointment.aspx.cs" Inherits="ClinicManagementSystem.book_Appointment" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="width: 220px; height: 26px">
                <asp:Label ID="Label1" runat="server" Text="Doctor Id"></asp:Label>
            </td>
            <td colspan="3" style="height: 26px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 220px">
                <asp:Label ID="Label2" runat="server" Text="Doctor Name"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 220px">
                <asp:Label ID="Label5" runat="server" Text="Doctor Fees"></asp:Label>
            </td>
            <td colspan="3">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 220px">
                <asp:Label ID="Label3" runat="server" Text=" Select Date"></asp:Label>
            </td>
            <td colspan="3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="TextBox3_CalendarExtender" runat="server" BehaviorID="TextBox3_CalendarExtender" TargetControlID="TextBox3">
                </ajaxToolkit:CalendarExtender>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td style="width: 220px; height: 30px">
            </td>
            <td colspan="3" style="height: 30px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </td>
        </tr>
        <tr>
            <td style="width: 220px">
                &nbsp;</td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 220px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Button" OnClick="Button3_Click" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" Text="Button" OnClick="Button4_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 220px">
                &nbsp;</td>
            <td colspan="3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
