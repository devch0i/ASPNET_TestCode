<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SqlDataSourceTest.aspx.cs" Inherits="ASPNET_TestCode._220113.SqlDataSourceTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="dsrcProduct" runat="server" ConnectionString="<%$ ConnectionStrings:AdventureWorks2019ConnectionString %>" SelectCommand="SELECT ProductID, Name FROM Production.Product WHERE (ProductSubcategoryID = 1)"></asp:SqlDataSource>
            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="dsrcProduct" DataTextField="Name" DataValueField="ProductID"></asp:ListBox>
        </div>
    </form>
</body>
</html>
