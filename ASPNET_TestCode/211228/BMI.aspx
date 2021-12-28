<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BMI.aspx.cs" Inherits="ASPNET_TestCode._211228.BMI" %>

<html>
<head>
    <title>체질량지수 산출기</title>
</head>
<body>
    <form id="WebForm" runat="server">
        <div align="center">
            신장 : &nbsp;
            <input id="Height" type="text" runat="server"/>
            &nbsp;cm&nbsp;&nbsp;&nbsp;몸무게 :&nbsp;
            <input id="Weight" type="text" runat="server"/>
            &nbsp;kg
            <br /><br />
            <input id="Calc" type="submit" value="산출하기" 
                OnServerClick="Calc_ServerClick" runat="server"/>
            <br /><br />
            <p id="Result" runat="server" /></p>
        </div>
    </form>
</body>
</html>
