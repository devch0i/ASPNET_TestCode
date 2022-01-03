<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingBasket.aspx.cs" Inherits="ASPNET_TestCode._220103.ShoppingBasket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%;">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblSessionInfo" runat="server" Text="장바구니 보기"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td rowspan="2">&nbsp;</td>
                    <td rowspan="2">
                        <asp:ListBox ID="lstGoods" runat="server" style="width:100%; height:150px;"></asp:ListBox>
                    </td>
                    <td>
                        <asp:Button ID="btnMoreInfo" runat="server" Text="상세 정보 보기" OnClick="btnMoreInfo_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblGoodsInfo" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
