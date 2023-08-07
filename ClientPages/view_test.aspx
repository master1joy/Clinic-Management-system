<%@ Page Title="" Language="C#" MasterPageFile="~/ClientPages/ClientSide.Master" AutoEventWireup="true" CodeBehind="view_test.aspx.cs" Inherits="ClinicManagementSystem.view_test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        td{
            text-align:center;
        }
        .auto-style1 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" CssClass="customButton" Text="Arterial Gas Blood" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" CssClass="customButton" Text="complete blood count" OnClick="Button2_Click" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" CssClass="customButton" Text="autoantibodies" OnClick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="500"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="550"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="900"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button4" runat="server" CssClass="customButton" Text="Urinalysis" OnClick="Button4_Click" />
            </td>
            <td>
                <asp:Button ID="Button5" runat="server" CssClass="customButton" Text="Urea breath test" OnClick="Button5_Click" />
            </td>
            <td>
                <asp:Button ID="Button6" runat="server" CssClass="customButton" Text="Blood culture" OnClick="Button6_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="400"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="700"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="450"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button7" runat="server" CssClass="customButton" Text="Genetic testing" OnClick="Button7_Click" />
            </td>
            <td>
                <asp:Button ID="Button8" runat="server" CssClass="customButton" Text="Fibro test" OnClick="Button8_Click" />
            </td>
            <td>
                <asp:Button ID="Button9" runat="server" CssClass="customButton" Text="C-reactive protein" OnClick="Button9_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="1100"></asp:Label>
                </td>
            <td>
                <asp:Label ID="Label8" runat="server" Text="1000"></asp:Label>
                </td>
            <td>
                <asp:Label ID="Label9" runat="server" Text="900"></asp:Label>
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
                </td>
            <td>
                <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                </td>
            <td>
                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                </td>
        </tr>
        <tr>
            <td>
                Test id:
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
                Rs.<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                /-</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button10" runat="server" Text="Submit" OnClick="Button10_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
