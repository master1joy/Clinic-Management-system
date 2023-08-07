<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Monthly_Report.aspx.cs" Inherits="ClinicManagementSystem.Admin.Monthly_Report" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="ajaxToolkit" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 9px;
        }
        .auto-style2 {
            width: 11px;
        }
        .auto-style3 {
            width: 254px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                <table class="auto-style1" style="width:100%;">
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="From Date"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" BehaviorID="TextBox1_CalendarExtender" TargetControlID="TextBox1">
                </ajaxToolkit:CalendarExtender>
            </td>
            <td style="border:1px solid black;" class="auto-style2">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Appointment Booking" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label2" runat="server" Font-Size="Larger" Text="To Date"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <ajaxToolkit:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" BehaviorID="TextBox2_CalendarExtender" TargetControlID="TextBox2">
                </ajaxToolkit:CalendarExtender>
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="TestBooking" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="879px">
        </rsweb:ReportViewer>
    </form>
</body>
</html>
