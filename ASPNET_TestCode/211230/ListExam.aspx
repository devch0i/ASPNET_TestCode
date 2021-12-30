<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListExam.aspx.cs" Inherits="ASPNET_TestCode._211230.ListExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblTitle" runat="server" Text="목록형 컨트롤 사용 예제" Font-Size="Large"></asp:Label><br /><br />
            <asp:Label ID="lblRepeatDirection" runat="server" Text="RepeatDirection : "></asp:Label> 

            <asp:RadioButtonList ID="rblRepeatDirection" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" OnSelectedIndexChanged="rblRepeatDirection_SelectedIndexChanged">
                <asp:ListItem Selected="True" Value="0">Horizontal</asp:ListItem>
                <asp:ListItem Value="1">Vertical</asp:ListItem>
            </asp:RadioButtonList><br />
            <asp:Label ID="lblRepeatLayout" runat="server" Text="RepeatLayout : "></asp:Label>

            <asp:RadioButtonList ID="rblRepeatLayout" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" RepeatLayout="Flow" OnSelectedIndexChanged="rblRepeatLayout_SelectedIndexChanged">
                <asp:ListItem Selected="True" Value="0">Table</asp:ListItem>
                <asp:ListItem Value="1">Flow</asp:ListItem>
            </asp:RadioButtonList><br /><br /><br />
            <asp:Label ID="lblMyInterests" runat="server" Text="나의 관심 분야 선택"></asp:Label>
            <asp:CheckBoxList ID="cblInterests" runat="server" AutoPostBack="True" RepeatColumns="3" OnSelectedIndexChanged="cblInterests_SelectedIndexChanged">
                <asp:ListItem>문학</asp:ListItem>
                <asp:ListItem>경제/경영</asp:ListItem>
                <asp:ListItem>외국어</asp:ListItem>
                <asp:ListItem>예술</asp:ListItem>
                <asp:ListItem>자연과학</asp:ListItem>
                <asp:ListItem>취미/실용</asp:ListItem>
                <asp:ListItem>인문</asp:ListItem>
                <asp:ListItem>컴퓨터</asp:ListItem>
                <asp:ListItem>스포츠</asp:ListItem>
                <asp:ListItem>정치/사회</asp:ListItem>
            </asp:CheckBoxList><br />
            <asp:Label ID="lblBulletStyle" runat="server" Text="DisplayMode : "></asp:Label>
            <asp:DropDownList ID="ddlBulletStyle" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlBulletStyle_SelectedIndexChanged">
                <asp:ListItem Value="0">NotSet</asp:ListItem>
                <asp:ListItem Value="1">Numbered</asp:ListItem>
                <asp:ListItem Value="2">LowerAlpha</asp:ListItem>
                <asp:ListItem Value="3">UpperAlpha</asp:ListItem>
                <asp:ListItem Value="4">LowerRoman</asp:ListItem>
                <asp:ListItem Value="5">UpperAlpha</asp:ListItem>
                <asp:ListItem Value="6">Disc</asp:ListItem>
                <asp:ListItem Value="7">Circle</asp:ListItem>
                <asp:ListItem Value="8">Square</asp:ListItem>
            </asp:DropDownList><br /><br /><br />
            <asp:Label ID="lblSelectedInterests" runat="server" Text="선택한 관심 분야 목록"></asp:Label>
            <asp:BulletedList ID="btlSelectedInterests" runat="server"></asp:BulletedList>
        </div>
    </form>
</body>
</html>
