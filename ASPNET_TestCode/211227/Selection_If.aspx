<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Selection_If.aspx.cs" Inherits="ASPNET_TestCode._211227.Selection_If" %>

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
        int score = 180;
        string stringResult = "";
        if (score > 100 && score <= 200)
        {
            if (score > 170) stringResult = "참 ";
            stringResult = stringResult + "잘했습니다.";
        }
        else {
            stringResult = "노력 바랍니다.";
        }
        ShowResult(stringResult);
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
