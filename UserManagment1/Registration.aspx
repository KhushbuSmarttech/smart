<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="UserManagment1.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td></td>
                    <td align="right"></td>
                    <td align="center">
                        <b>Registration Form</b>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right">
                        <asp:Label ID="lbluser" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuser" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red">Enter UserName</asp:RequiredFieldValidator>
                           </td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right">
                        <asp:Label ID="lblpwd" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd" Display="Dynamic" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right">
                        <asp:Label ID="LblStatus" runat="server" Text="Status"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right">
                        <asp:Label ID="lblExpDate" runat="server" Text="ExpiredDate"></asp:Label>
                    </td>
                    <td>
                        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right">
                        <asp:Label ID="lblMoNo" runat="server" Text="Moblie No"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right">
                        <asp:Label ID="lblEmailID" runat="server" Text="EmailID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right">
                        <asp:Label ID="lblRegDate" runat="server" Text="RegistrationDate"></asp:Label>
                    </td>
                    <td>
                        <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                        <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td align="right" colspan="2">&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>


                    <td align="left">
                        <asp:Button ID="btnSave" runat="server" Text="Save"
                            OnClick="btnsubmit_Click" />
                        &nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <span style="color: Red; font-weight: bold">
                            <asp:Label ID="lblErrorMsg" runat="server"></asp:Label></span>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
