<%@ Page Title="" Language="C#" MasterPageFile="~/ClientPages/ClientSide.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ClinicManagementSystem.login" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%; border:1px solid blue;">
        <tr>
            <td style="width: 312px; height: 29px;"></td>
            <td style="height: 29px; width: 287px;">
                <h3>Enter your login details</h3></td>
            <td style="height: 29px"></td>
        </tr>
        <tr>
            <td style="width: 312px; height: 31px;"><h3>User id</h3>&nbsp;</td>
            <td style="height: 31px; width: 287px;">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="216px"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" runat="server" BehaviorID="TextBox1_TextBoxWatermarkExtender" TargetControlID="TextBox1" WatermarkCssClass="text-effect" WatermarkText="Enter your email">
                </ajaxToolkit:TextBoxWatermarkExtender>
            </td>
            <td style="height: 31px">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
        <tr>
            <td style="width: 312px; height: 31px;">&nbsp;</td>
            <td style="height: 31px; width: 287px;">
                &nbsp;</td>
            <td style="height: 31px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 312px"><h3>Enter Password</h3></td>
            <td style="height: 26px; width: 287px;">
                <asp:TextBox ID="TextBox2" runat="server" Height="29px" Width="230px" TextMode="Password"></asp:TextBox>
                <ajaxToolkit:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" runat="server" BehaviorID="TextBox2_TextBoxWatermarkExtender" TargetControlID="TextBox2" WatermarkCssClass="text-effect" WatermarkText="Enter password">
                </ajaxToolkit:TextBoxWatermarkExtender>
            </td>
            <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 26px; width: 312px"></td>
            <td style="height: 26px; width: 287px;">
                &nbsp;</td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 312px">&nbsp;</td>
            <td style="width: 287px">
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ForeColor="Red">Forgot password?</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
