<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="211227_Operator.aspx.cs" Inherits="ASPNET_TestCode._211227_Operator" %>

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
        /*
        int myInt = 2;
        int result;

        result = +myInt; ShowResult(result.ToString());
        result = -myInt; ShowResult(result.ToString());
        result = ~myInt; ShowResult(result.ToString());

        // 전위 증감 연산자의 경우 : 증감 연산 후 대입 연산
        result = ++myInt;           // ① myInt = myInt + 1; ② result = myInt;
        ShowResult(result + " vs " + myInt);    // result는 3이며 myInt는 3이다.

        // 후위 증감 연산자의 경우 : 대입 연산 후 증감 연산
        result = myInt++;       // ① result = myInt; ② myInt = myInt + 1;
        ShowResult(result + " vs " + myInt);    // result는 2이며 myInt는 3이다.

        result = myInt--;       // ① result = myInt; ② myInt = myInt - 1;
        ShowResult(result + " vs " + myInt);    // result는 3이며 myInt는 2이다.
        
        // 쉬프트 연산자
        int myInt = 2;
        myInt = myInt << 1;
        ShowResult(myInt.ToString());
        
        // 비트 연산자
        int firstOper = 2;
        int secondOpr = 3;
        int result;

        result = firstOper & secondOpr;     ShowResult(result.ToString());
        result = firstOper | secondOpr;     ShowResult(result.ToString());
        result = firstOper ^ secondOpr;     ShowResult(result.ToString());
        */
        // 논리 연산자
        int myInt = 1;
        int yourInt = 2;

        /*
        bool isBig = (++myInt > ++yourInt) & (++myInt > ++yourInt); // (2 > 3) & (3 > 4) = False
        ShowResult("myInt = " + myInt.ToString());
        ShowResult("isBig = " + isBig.ToString());
        */
        bool isBig = (++myInt > ++yourInt) && (++myInt > ++yourInt); // (2 > 3)False
        ShowResult("myInt = " + myInt.ToString());
        ShowResult("isBig = " + isBig.ToString());
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
