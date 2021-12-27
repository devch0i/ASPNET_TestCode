<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Properties_3.aspx.cs" Inherits="ASPNET_TestCode._211227.Properties_3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<script runat="server">
    // A 부분
    public class Customer {
        public string Name { get; set; }
        public string SocialNumber { get; private set; }        // 읽기 전용
    }
    protected void Page_Load(object sender, EventArgs e) {
        // B 부분
        Customer myCustomer = new Customer();
        myCustomer.Name = "홍길동";
        ShowResult("고객명 : " + myCustomer.Name);             // 고객명 : 홍길동
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
