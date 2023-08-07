<%@ Page Title="" Language="C#" MasterPageFile="~/Doctor/DesignPage.Master" AutoEventWireup="true" CodeBehind="Register_doctor.aspx.cs" Inherits="ClinicManagementSystem.Register_doctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#00FF99" Text="Personal Details"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Image ID="Image1" runat="server" Height="100px" />
            </td>
        </tr>
        <tr>
            <td style="height: 26px; width: 208px;">
                <asp:Label ID="Label1" runat="server" Text="DOCTOR ID"></asp:Label>
                :<span style="color: #FF3300">*</span></td>
            <td style="height: 26px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 26px" class="align_item_right">
                <asp:Label ID="Label8" runat="server" CssClass="align_item_left" Text="IMAGE"></asp:Label>
            </td>
            <td style="height: 26px">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label2" runat="server" Text="DOCTOR NAME"></asp:Label>
                :<span style="color: #FF3300">*</span></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="UPLOAD" />
                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label3" runat="server" Text="ADDRESS"></asp:Label>
                :<span style="color: #FF3300">*</span></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label4" runat="server" Text="PHONE"></asp:Label>
                :<span style="color: #FF3300">*</span></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label5" runat="server" Text="EMAIL"></asp:Label>
                :<span style="color: #FF3300">*</span></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label6" runat="server" Text="QUALIFICATION"></asp:Label>
                :<span style="color: #FF3300">*</span></td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label7" runat="server" Text="DEPARTMENT"></asp:Label>
                :<span style="color: #FF3300">*</span></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label9" runat="server" Text="EXPERIENCE"></asp:Label>
                :<span style="color: #FF3300">*</span></td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Field is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label18" runat="server" Text="Consultation Fees"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 30px; width: 208px;">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#00FF99" Text="Confidential"></asp:Label>
            </td>
            <td style="height: 30px">
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Get OTP on email" />
            </td>
            <td style="height: 30px">
                <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label12" runat="server" Text="Enter OTP"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 208px; height: 26px">
                <asp:Label ID="Label13" runat="server" Text="New Password"></asp:Label>
                :<span style="color: #FF3300">*</span></td>
            <td style="height: 26px">
                <asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 26px"></td>
            <td style="height: 26px"></td>
        </tr>
        <tr>
            <td style="width: 208px">
                <asp:Label ID="Label14" runat="server" Text="confirm Password"></asp:Label>
                :<span style="color: #FF3300">*</span></td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server" TextMode="Password"></asp:TextBox>
                <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox9" ControlToValidate="TextBox10" ErrorMessage="New password should match" ForeColor="Red"></asp:CompareValidator>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 208px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="CREATE PROFILE" OnClick="Button2_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
