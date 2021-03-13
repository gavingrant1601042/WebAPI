<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebServices.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 48%;
        }
        .auto-style3 {
            margin-left: 40px;
            width: 499px;
        }
        .auto-style4 {
            margin-left: 80px;
            width: 499px;
        }
        .auto-style5 {
            margin-left: 120px;
            width: 499px;
        }
        .auto-style6 {
            width: 499px;
        }
        .auto-style7 {
            width: 100%;
        }
    </style>
</head>
<body style="background-color:#6A5ACD;">
    <form id="form1" runat="server">
       Day of the Week Written above:
        <hr />
        <div>
     
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">Name:&nbsp;
                        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Address1:<asp:TextBox ID="txt_address" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">City:<asp:TextBox ID="txt_city" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Country:<asp:TextBox ID="txt_country" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">TelephoneNo:<asp:TextBox ID="txt_telephoneNo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Role:<asp:TextBox ID="txt_role" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">Email:<asp:TextBox ID="txt_email" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">addresslocation:<asp:TextBox ID="txt_addresslocation" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" Text="Add Employee" OnClick="Button1_Click" />
                        <asp:Button ID="Button3" runat="server" Text="Delete Employee" OnClick="Button3_Click" />
                        <asp:Button ID="Button4" runat="server" PostBackUrl="~/WeatherAPI.aspx" Text="WeatherAPI" />
                        <br />
                        Data<br />
                        <table class="auto-style7">
                            <tr>
                                <td>
                                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                        <SortedDescendingHeaderStyle BackColor="#820000" />
                                    </asp:GridView>

                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>

        <hr />

        </div>
    </form>
</body>
</html>
