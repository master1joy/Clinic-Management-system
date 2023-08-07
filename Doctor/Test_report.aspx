<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test_report.aspx.cs" Inherits="ClinicManagementSystem.Test_report" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 147px;
        }
        .auto-style3 {
            width: 175px;
        }
        .auto-style4 {
            width: 224px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2"><asp:Label ID="Label1" runat="server" Text="Enter Book ID"></asp:Label>&nbsp;</td>
                    <td class="auto-style3"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp;</td>
                    <td class="auto-style4"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />&nbsp;</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="test_name" DataValueField="test_id">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClinicManagementConnectionString %>" SelectCommand="SELECT [test_id], [test_name] FROM [test_info]"></asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" CssClass="auto-style4" Width="1048px"></rsweb:ReportViewer>
        </div>
    </form>
</body>
</html>
