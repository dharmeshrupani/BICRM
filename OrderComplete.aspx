<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderComplete.aspx.cs" Inherits="CRM.OrderComplete" %>

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
                    <asp:Label ID="lblmessage" runat="server" Font-Bold="True" Font-Names="Century Gothic" ForeColor="#3366FF" style="text-align: center"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/pincode.aspx"></asp:LinkButton>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
