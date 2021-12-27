<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Jump_Goto.aspx.cs" Inherits="ASPNET_TestCode._211227.Jump_Goto" %>

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
MatchFour:
        myInt++;

        if (myInt == 5) goto LoopOut;

        for (int i = 0; i < 10; i++) {
            // 블록 1
            if (i == 4) goto MatchFour;
        }

LoopOut:
        ShowResult("블록 1이 5번씩 4번 수행");
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
