<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jump_Break_Continue.aspx.cs" Inherits="ASPNET_TestCode.Jump_Break_Continue" %>

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
        int myInt = 0;
        int sum = 0;

        while (true) {
            myInt++;
            if (myInt % 3 == 0) continue;
            sum += myInt;
            if (sum > 100) break;
        }
        ShowResult("myInt = " + myInt);
        ShowResult("sum = " + sum);
        ShowResult("3의 배수를 제외한 수의 합이 100을 넘었습니다.");
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
