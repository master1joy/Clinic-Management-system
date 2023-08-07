<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctor_Details.aspx.cs" Inherits="ClinicManagementSystem.Admin.Doctor_Details" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="464px" Width="879px">
            </rsweb:ReportViewer>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>

        </div>
    </form>
</body>
</html>
