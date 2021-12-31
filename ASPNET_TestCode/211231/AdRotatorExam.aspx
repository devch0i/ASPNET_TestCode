<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdRotatorExam.aspx.cs" Inherits="ASPNET_TestCode._211231.AdRotatorExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:AdRotator ID="adrBooks" runat="server" AdvertisementFile="~/App_Data/ad.xml" Target="_blank" />
        </div>
    </form>
</body>
</html>
