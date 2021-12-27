<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="211227_Change_2.aspx.cs" Inherits="ASPNET_TestCode._211227_Change_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<script runat="server">
    // A 부분
    protected void Page_Load(object sender, EventArgs e) {
        // B 부분
        int dividend = 7;
        int divisor = 5;

        // 몫 1을 원한다면
        int quotient = dividend / divisor;

        // 목 1.4를 원한다면
        float quotientFloat = (float)dividend / (float)divisor;

        ShowResult(quotient + " vs " + quotientFloat);
    }
    void ShowResult(string result) {
        Label lblResult = new Label();
        Page.Controls.Add(lblResult);
        lblResult.Text = result + " <br/>";
    }
</script>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
