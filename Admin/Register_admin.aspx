<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Register_admin.aspx.cs" Inherits="ClinicManagementSystem.Register_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="height: 32px; width: 549px"><h3 style="width: 536px">ADMIN NAME:</h3>&nbsp;</td>
            <td style="width: 103px; height: 32px">
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="192px" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 32px"></td>
        </tr>
        <tr>
            <td style="width: 549px"><h3 style="width: 540px">SET PASSWORD:</h3>&nbsp;</td>
            <td style="width: 103px">
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="185px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 549px"><h3 style="width: 543px">CONFIRM PASSWORD:</h3>&nbsp;</td>
            <td style="width: 103px">
                <asp:TextBox ID="TextBox3" runat="server" Height="24px" style="margin-bottom: 0px" Width="182px" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 549px"><h3 style="width: 542px">&nbsp;</h3>&nbsp;</td>
            <td style="width: 103px">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 549px">&nbsp;</td>
            <td style="width: 103px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
