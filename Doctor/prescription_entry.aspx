<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DesignPage.Master" AutoEventWireup="true" CodeBehind="prescription_entry.aspx.cs" Inherits="ClinicManagementSystem.prescription_entry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="width: 214px">
                <asp:Label ID="Label1" runat="server" Text="Patient Id:"></asp:Label>
            </td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width: 303px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Fetch" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px; text-decoration: underline;">
                <strong>Patient Information:</strong></td>
            <td style="width: 174px">
                &nbsp;</td>
            <td style="width: 303px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px">
                <asp:Label ID="Label2" runat="server" Text="Patient Name"></asp:Label>
            </td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="width: 303px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px">
                <asp:Label ID="Label3" runat="server" Text="Age"></asp:Label>
            </td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td style="width: 303px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 214px">
                <asp:Label ID="Label4" runat="server" Text="Sex"></asp:Label>
            </td>
            <td style="height: 23px; width: 174px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td style="height: 23px; width: 303px;"></td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 214px">
                <asp:Label ID="Label5" runat="server" Text="Disease"></asp:Label>
            </td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td style="width: 303px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px">
                <asp:Label ID="Label8" runat="server" Text="Symptoms"></asp:Label>
            </td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 303px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px">
                <asp:Label ID="Label6" runat="server" Text="Medication"></asp:Label>
            </td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td style="width: 303px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px">
                <asp:Label ID="Label7" runat="server" Text="Enter Doctor Id"></asp:Label>
            </td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td style="width: 303px">
                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 214px">
                <asp:Label ID="Label9" runat="server" Text="Appointment Id"></asp:Label>
            </td>
            <td style="width: 174px">
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td style="width: 303px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
