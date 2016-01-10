<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pincode.aspx.cs" Inherits="CRM.productinfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#007ACC" Text="Enter Pincode :"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtpincode" runat="server" MaxLength="6"></asp:TextBox>
                </td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click1" Text="Submit" BackColor="#99CCFF" />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">
                    <asp:Label ID="lblerror" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
    <p style="text-align: center">
        &nbsp;</p>
</body>
</html>
