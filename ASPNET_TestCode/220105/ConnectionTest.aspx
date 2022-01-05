<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConnectionTest.aspx.cs" Inherits="ASPNET_TestCode._220105.ConnectionTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            데이터베이스 연결 실습<br />
            <br />
            <asp:Button ID="btnConnection" runat="server" Text="연결 열기" OnClick="btnConnection_Click" />
            <br />
            <br />
            <asp:Label ID="lblConnectionInformation" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
