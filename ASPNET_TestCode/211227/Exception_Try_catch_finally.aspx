<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exception_Try_catch_finally.aspx.cs" Inherits="ASPNET_TestCode._211227.Exception_Try_catch_finally" %>

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
        string stringValue;
        try
        {
            stringValue = "7.8";
            int myInt = int.Parse(stringValue);
        }
        catch {
            ShowResult("예외 현상 발생");
        }
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
