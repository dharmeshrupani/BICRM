<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmOrder.aspx.cs" Inherits="CRM.checkout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 72%;
        }
        .auto-style2 {
            width: 100px;
            text-align: right;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
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
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Panel ID="Panel1" runat="server" GroupingText="Contact Details" Width="647px">
                        <table class="auto-style1">
                            <tr>
                                <td colspan="2">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label2" runat="server" Text="First Name : " ForeColor="#3C1E1E"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbltxtfirstname" runat="server" ForeColor="#006699"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label3" runat="server" Text="Last name : " ForeColor="#3C1E1E"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbllastname" runat="server" ForeColor="#006699"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label4" runat="server" Text="Address : " ForeColor="#3C1E1E"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lbladdress" runat="server" ForeColor="#006699"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="Label5" runat="server" Text="Zipcode : " ForeColor="#3C1E1E"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblzipcode" runat="server" ForeColor="#006699"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" style="margin-left: 80px">
                                    <asp:Label ID="Label6" runat="server" Text="Email ID : " ForeColor="#3C1E1E"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblemailid" runat="server" ForeColor="#006699"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" style="margin-left: 80px">
                                    <asp:Label ID="Label7" runat="server" Text="Mobile No. :" ForeColor="#3C1E1E"></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblmobileno" runat="server" ForeColor="#006699"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" style="margin-left: 80px">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td style="text-align: center">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Panel ID="Panel2" runat="server" GroupingText="Order Details" Width="647px">
                        <table class="auto-style4">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Your Order ID : " ForeColor="Black"></asp:Label>
                                    <asp:Label ID="lblorderid" runat="server" Font-Bold="True" ForeColor="#000099"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:GridView ID="GridViewCart" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="GridViewCart_SelectedIndexChanged" style="text-align: left">
                                        <Columns>
                                            <asp:CommandField DeleteText="Remove Item" SelectText="Remove Item" ShowSelectButton="True" >
                                            <ItemStyle ForeColor="Red" />
                                            </asp:CommandField>
                                        </Columns>
                                        <FooterStyle BackColor="White" ForeColor="#000066" />
                                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
                                        <RowStyle ForeColor="#000066" />
                                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                                    </asp:GridView>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label8" runat="server" Text="Total Amount : " ForeColor="#3C1E1E"></asp:Label>
                                    <asp:Label ID="Label9" runat="server" Text="₹" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC3300"></asp:Label>
                                    <asp:Label ID="lbltotalamount" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC3300"></asp:Label>
                                    </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnorder" runat="server" Height="31px" Text="Order" Width="99px" OnClick="btnorder_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
    <p style="text-align: left">
        &nbsp;</p>
</body>
</html>
