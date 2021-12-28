<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoffeeRecipe.aspx.cs" Inherits="ASPNET_TestCode._211228.CoffeeRecipe" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="CoffeeForm" runat="server">
        <div>
            커피 종류 선택 :
            <select id="CoffeeType" runat="server">
                <option></option>
            </select>
            <input id="ShowRecipe" type="submit" value="조리법 보기" OnServerClick="Show_ServerClick" runat="server" />
        </div>
    </form>
</body>
</html>
