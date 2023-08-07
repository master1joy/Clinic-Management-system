<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DesignPage.Master" AutoEventWireup="true" CodeBehind="view_testReport.aspx.cs" Inherits="ClinicManagementSystem.view_testReport" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="width: 135px">
                <asp:Label ID="Label1" runat="server" Text="Enter Book ID"></asp:Label>
            </td>
            <td style="width: 136px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px">&nbsp;</td>
            <td style="width: 136px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="914px" Height="565px"></rsweb:ReportViewer>
</asp:Content>
