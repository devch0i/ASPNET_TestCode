<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FileSearch.aspx.cs" Inherits="ASPNET_TestCode._220103.FileSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <h2>검색어를 포함하는 파일 검색</h2><br />
            검색어 : <asp:TextBox ID="txtKeyWord" runat="server" Width="300px"></asp:TextBox><br />
            파일형 : <asp:DropDownList ID="ddFileType" runat="server">
                <asp:ListItem Value="0">워드(*.doc)</asp:ListItem>
                <asp:ListItem Value="1">파워포인트(*.ppt)</asp:ListItem>
                <asp:ListItem Value="2">한글(*.hwp)</asp:ListItem>
                <asp:ListItem Value="3">어도비(*.pdf)</asp:ListItem>
                <asp:ListItem Value="4">이미지(*.jpg)</asp:ListItem>
            </asp:DropDownList><br /><br />
            <asp:Button ID="btnSearch" runat="server" Text="검색어 보기" PostBackUrl="~/220103/FileSearchResult.aspx" />
        </div>
    </form>
</body>
</html>
