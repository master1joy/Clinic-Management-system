<%@ Page Title="" Language="C#" MasterPageFile="~/ClientPages/ClientSide.Master" AutoEventWireup="true" CodeBehind="testBook.aspx.cs" Inherits="ClinicManagementSystem.testBook" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%">
        <tr>
            <td style="height: 23px; width: 276px">
                Test id</td>
            <td style="height: 23px; width: 288px">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 276px; height: 23px;">
                Test Name</td>
            <td style="width: 288px; height: 23px;">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="height: 23px"></td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 276px">
                Test Cost</td>
            <td style="width: 288px">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">Choose Date</td>
            <td style="width: 288px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="TextBox1" Format="dd/MM/yyyy">
                </ajaxToolkit:CalendarExtender>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">Choose Time</td>
            <td style="width: 288px">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>8-9</asp:ListItem>
                    <asp:ListItem>9-10</asp:ListItem>
                    <asp:ListItem>10-11</asp:ListItem>
                    <asp:ListItem>11-12</asp:ListItem>
                    <asp:ListItem>12-13</asp:ListItem>
                    <asp:ListItem>13-14</asp:ListItem>
                    <asp:ListItem>14-15</asp:ListItem>
                    <asp:ListItem>15-16</asp:ListItem>
                    <asp:ListItem>16-17</asp:ListItem>
                    <asp:ListItem>17-18</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book now" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">
                <asp:Label ID="Label4" runat="server" Text="Enter the Amount"></asp:Label>
            </td>
            <td style="width: 288px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td style="width: 288px">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Pay now" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Pay cash later" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
<br />
</asp:Content>
