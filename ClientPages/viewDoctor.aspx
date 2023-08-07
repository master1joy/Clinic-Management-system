<%@ Page Title="" Language="C#" MasterPageFile="~/ClientPages/ClientSide.Master" AutoEventWireup="true" CodeBehind="viewDoctor.aspx.cs" Inherits="ClinicManagementSystem.viewDoctor" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td class="align_item_right">
                Hello!<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="logOut" />
            </td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td style="width: 205px">
                &nbsp;</td>
            <td style="width: 161px">
                Photo</td>
            <td style="width: 92px">
                Id</td>
            <td style="width: 169px">
                Name</td>
            <td style="width: 200px">
                Qualification</td>
            <td style="width: 159px">
                Experience</td>
            <td style="width: 159px">
                Fees</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 205px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
            </td>
            <td style="width: 161px">
                <asp:Image ID="Image1" runat="server" Height="100px" />
            </td>
            <td style="width: 92px">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 169px">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 200px">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 159px">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 159px">
                <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="Book Appointment" OnClick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td rowspan="7" style="width: 205px">
                &nbsp;</td>
            <td style="width: 161px; height: 104px;">
                <asp:Image ID="Image2" runat="server" Height="100px"/>
            </td>
            <td style="width: 92px; height: 104px">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 169px; height: 104px">
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 200px; height: 104px;">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 159px; height: 104px">
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 159px; height: 104px">
                <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="height: 104px">
                <asp:Button ID="Button4" runat="server" Text="Book Appointment" OnClick="Button4_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
                <asp:Image ID="Image3" runat="server" Height="100px"/>
            </td>
            <td style="width: 92px">
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 169px">
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 200px">
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 159px">
                <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 159px">
                <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button5" runat="server" Text="Book Appointment" OnClick="Button5_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
                <asp:Image ID="Image4" runat="server" Height="100px"/>
            </td>
            <td style="width: 92px">
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 169px">
                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 200px">
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 159px">
                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 159px">
                <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button6" runat="server" Text="Book Appointment" OnClick="Button6_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 161px">
                <asp:Image ID="Image5" runat="server" Height="100px"/>
            </td>
            <td style="width: 92px">
                <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 169px">
                <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 200px">
                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 159px">
                <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 159px">
                <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button7" runat="server" Text="Book Appointment" OnClick="Button7_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td colspan="4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td colspan="4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 161px">&nbsp;</td>
            <td colspan="4">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
