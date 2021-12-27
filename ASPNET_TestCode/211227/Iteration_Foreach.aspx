<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Iteration_Foreach.aspx.cs" Inherits="ASPNET_TestCode._211227.Iteration_Foreach" %>

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
        int[] intArray = { 1, 2, 3 };
        int total = 0;
        foreach (int item in intArray) {
            total += item;
        }
        ShowResult("합 = " + total);
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
