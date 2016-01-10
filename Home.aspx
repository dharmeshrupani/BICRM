<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="CRM.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            height: 30px;
            text-align: center;
        }
        .auto-style6 {
            height: 20px;
        }
        .auto-style7 {
            text-align: left;
            height: 20px;
        }
        .auto-style8 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">
                    <asp:TextBox ID="txtsearch" runat="server" Width="494px"></asp:TextBox>
                </td>
                <td style="text-align: center">
                    <asp:Button ID="btncheckout" runat="server" OnClick="btncheckout_Click" Text="Proceed To Checkout" />
                    <br />
                    <asp:Label ID="lblmessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">
                    <asp:Button ID="btnsearch" runat="server" OnClick="btnsearch_Click" Text="Search" />
                    <br />
                    <br />
                    <asp:Label ID="lblerror" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style5">
                    <asp:Panel ID="pnlproductview" runat="server">
                        <asp:GridView ID="GridViewSearch" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" style="text-align: left; margin-top: 0px;" OnSelectedIndexChanged="GridViewSearch_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                    </asp:Panel>
                    <asp:Panel ID="pnlquant" runat="server" style="text-align: center">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="Label1" runat="server" Text="Product :"></asp:Label>
                                    &nbsp;</td>
                                <td class="auto-style4">
                                    <asp:Label ID="lblproductname" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="Label2" runat="server" Text="Size :"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="lblsize" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="Label3" runat="server" Text="Price :"></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:Label ID="lblprice" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">
                                    <asp:Label ID="lblquantity" runat="server" Text="Select Quantity : "></asp:Label>
                                </td>
                                <td class="auto-style4">
                                    <asp:DropDownList ID="cmbquantity" runat="server">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style4">
                                    <asp:Button ID="btnBuy" runat="server" OnClick="btnBuy_Click" Text="Buy This Product" />
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <br />
                    <br />
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
