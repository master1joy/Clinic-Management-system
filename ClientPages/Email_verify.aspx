<%@ Page Title="" Language="C#" MasterPageFile="~/ClientPages/ClientSide.Master" AutoEventWireup="true" CodeBehind="Email_verify.aspx.cs" Inherits="ClinicManagementSystem.Email_verify" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 239px">&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 239px; height: 30px"></td>
            <td style="height: 30px">
                <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="height: 30px">
                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="234px"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" runat="server" BehaviorID="TextBox1_TextBoxWatermarkExtender" TargetControlID="TextBox1" WatermarkCssClass="text-effect" WatermarkText="Enter your mail id">
                </ajaxToolkit:TextBoxWatermarkExtender>
            </td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="width: 239px">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Verify Email" OnClick="Button1_Click1" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
