<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Change_1.aspx.cs" Inherits="ASPNET_TestCode._211227_Change_1" %>

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
        bool myBool = true;
        int myInt = 45;
        float myFloat = 7.8F;

        myFloat = myInt + myFloat;
        ShowResult("합은 " + myFloat + "입니다. (" + myBool + ")");
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
