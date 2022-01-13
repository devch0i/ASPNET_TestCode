<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TouringBikeProductManager.aspx.cs" Inherits="ASPNET_TestCode._220110.TouringBikeProductManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        span {
            padding-left:30px;
        }
        .auto-style1 {
            height: 27px;
        }
        .auto-style2 {
            height: 50px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width: 100%; background-color:lightgray; padding:5px;">
                <tr>
                    <td colspan="4" style="text-align:center;"><h2>Touring 자전거 상품 관리</h2></td>
                </tr>
                <tr style="text-align:center;">
                    <td><span style="width:25%; text-align:left; padding-left:30px;">Touring 자전거 상품 선택</span></td>
                    <td style="width:25%;"><asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProducts_SelectedIndexChanged"></asp:DropDownList></td>
                    <td style="width:25%;">
                        <asp:Button ID="btnUpdate" runat="server" Text="상품 정보 수정" OnClick="btnUpdate_Click"/>
                    </td>
                    <td style="width:25%;">
                        <asp:Button ID="btnDelete" runat="server" Text="상품 정보 삭제" OnClick="btnDelete_Click"/>
                    </td>
                </tr>
                <tr style="height:20px;">
                    <td colspan="4"></td>
                </tr>
                <tr style="text-align:center;">
                    <td colspan="4">
                        <asp:Button ID="btnClearInfo" runat="server" Text="새 상품 등록을 위한 초기화" OnClick="btnClearInfo_Click" />&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnInsert" runat="server" Text="새 상품 등록" OnClick="btnInsert_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <div>
        <table id="table2" style="width: 100%; background-color:lightgray; padding:5px;">
            <tr>
                <td><span>상품 번호 : </span></td>
                <td><asp:TextBox ID="txtProductID" runat="server" style="width:300px;" ReadOnly="True"></asp:TextBox>&nbsp;&nbsp;(읽기 전용)</td>
            </tr>
            <tr>
                <td><span>상품명 : </span></td>
                <td><asp:TextBox ID="txtProductName" runat="server" style="width:300px;"></asp:TextBox></td>
            </tr>
            <tr>
                <td><span>상품 코드 : </span></td>
                <td><asp:TextBox ID="txtProductNumber" runat="server" style="width:300px;"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="auto-style1"><span>표준 원가 : </span></td>
                <td class="auto-style1"><asp:TextBox ID="txtStanardCost" runat="server" style="width:300px;"></asp:TextBox></td>
            </tr>
            <tr>
                <td><span>판매 가격 : </span></td>
                <td><asp:TextBox ID="txtListPrice" runat="server" style="width:300px;"></asp:TextBox></td>
            </tr>
            <tr>
                <td><span>판매 시작일 : </span></td>
                <td><asp:TextBox ID="txtSellStartDate" runat="server" style="width:300px;" ReadOnly="True"></asp:TextBox>&nbsp;&nbsp;(읽기 전용)</td>
            </tr>
        </table>
        </div>
        <div style="line-height:50px;" class="auto-style2">
            <asp:Label ID="lblStatus" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
