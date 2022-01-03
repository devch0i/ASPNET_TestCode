<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PitchRaising.aspx.cs" Inherits="ASPNET_TestCode._220103.PitchRasing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align: center">
            <asp:Label ID="lblTitle" runat="server" Text="피치를 올려라!" Font-Size="Large"></asp:Label><br /><br />
            <asp:Button ID="btnPitchDown" runat="server" Text="한 음 내리기" OnClick="btnPitchDown_Click" />
            <asp:Label ID="lblPitch" runat="server" Text="라" style="margin:0 20px;"></asp:Label>
            <asp:Button ID="btnPitchUP" runat="server" Text="한 음 올리기" OnClick="btnPitchUP_Click" />
        </div>
    </form>
</body>
</html>
