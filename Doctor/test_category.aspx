<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DesignPage.Master" AutoEventWireup="true" CodeBehind="test_category.aspx.cs" Inherits="ClinicManagementSystem.test_category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 334px">&nbsp;</td>
            <td style="width: 292px; text-align:center;">
                <asp:Label ID="Label1" runat="server" Text="Test category"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="139px">
                    <asp:ListItem>select category</asp:ListItem>
                    <asp:ListItem>Biochemistry</asp:ListItem>
                    <asp:ListItem>cytogenetics and Molecular Genetics</asp:ListItem>
                    <asp:ListItem>immunology</asp:ListItem>
                    <asp:ListItem>microbiology</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 334px">&nbsp;</td>
            <td style="width: 292px;text-align:center;">
                <asp:Label ID="Label2" runat="server" Text="Test name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 334px">&nbsp;</td>
            <td style="width: 292px;text-align:center;">
                <asp:Label ID="Label3" runat="server" Text="cost"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 334px">&nbsp;</td>
            <td style="width: 292px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 334px">&nbsp;</td>
            <td style="width: 292px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="save record" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="clear form" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
