<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerInfo.aspx.cs" Inherits="CRM.CustomerInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 84px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="First Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtfirstname" runat="server" Width="181px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" ControlToValidate="txtfirstname" ErrorMessage="Enter First Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Last Name :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtlastname" runat="server" Width="181px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ControlToValidate="txtlastname" ErrorMessage="Enter Last Name" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Address :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="txtaddress" ErrorMessage="Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Zipcode :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtzipcode" runat="server" Width="181px" Enabled="False" ReadOnly="True"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Email ID :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtemailid" runat="server" Width="181px"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="REEmailID" runat="server" 
                            ControlToValidate="txtemailid" ErrorMessage="Enter Valid Email ID" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Mobile No. :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtmobileno" runat="server" Width="181px"></asp:TextBox>
                &nbsp;<asp:RegularExpressionValidator ID="REVContactNo" runat="server" 
                            ControlToValidate="txtmobileno" ErrorMessage="Enter Valid Contact No." 
                            ValidationExpression="^[789]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
