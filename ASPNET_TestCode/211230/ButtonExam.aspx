<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonExam.aspx.cs" Inherits="ASPNET_TestCode._211230.ButtonExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function ConfirmGoHanbit() { return confirm("한빛미디어로 이동하시겠습니까?"); }
    </script>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Button ID="btnSortAscending" runat="server" Text="오름차순 정렬" CommandName="Sort" CommandArgument="Ascending" OnCommand="CommandBtn_Click" />
            <asp:Button ID="btmSortDescending" runat="server" Text="내림차순 정렬" CommandName="Sort" CommandArgument="Descending" OnCommand="CommandBtn_Click" /><br /><br />
            <asp:LinkButton ID="lbtnGoHanbit" runat="server" OnClientClick="return ConfirmGoHanbit()" OnClick="lbtnGoHanbit_Click">Go! Hanbit Media, Inc.</asp:LinkButton><br /><br />
            <asp:ImageButton ID="ibtnHanbit" runat="server" ImageUrl="~/images/hanbit.png" OnClick="ibtnHanbit_Click" /><br /><br />
            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
