<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Class.aspx.cs" Inherits="ASPNET_TestCode._211227.Class" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<script runat="server">
    public class Customer {
        public string m_Name;
        public string MakeAccount(int accountType) { return accountType.ToString(); }
    }

    protected void Page_Load(object sender, EventArgs e) {
        // B 부분
        Customer myCustomer = new Customer();               // Customer 클래스형의 객체 생성
        myCustomer.m_Name = "홍길동";                       // 클래스 필드 접근
        string accountType = myCustomer.MakeAccount(3);     // 클래스 메서드 접근

        // 고객명 : 홍길동, 계좌 종류 코드 : 3
        ShowResult("고객명 : " + myCustomer.m_Name + ", 계좌 종류 코드 : " + accountType);
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
