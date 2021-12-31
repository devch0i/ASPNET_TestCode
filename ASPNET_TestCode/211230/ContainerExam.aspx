<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContainerExam.aspx.cs" Inherits="ASPNET_TestCode._211230.ContainerExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="pnlDirection" runat="server" HorizontalAlign="Center" BackColor="#99CCFF">
                <asp:MultiView ID="mvAlbum" runat="server" ActiveViewIndex="0"></asp:MultiView>
                <asp:View ID="vAdsBag_01" runat="server">
                    <asp:Image ID="imgAdsBag_01" runat="server" Height="150" ImageUrl="~/images/bag_01.bmp" />
                </asp:View>
                <asp:View ID="vAdsBag_02" runat="server">
                    <asp:Image ID="imgAdsBag_02" runat="server" Height="150" ImageUrl="~/images/bag_02.bmp" />
                </asp:View>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
