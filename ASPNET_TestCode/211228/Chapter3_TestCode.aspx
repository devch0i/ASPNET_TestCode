<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chapter3_TestCode.aspx.cs" Inherits="ASPNET_TestCode._211228.Chapter3_TestCode" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<script runat="server">
    // A 부분

    protected void Page_Load(object sender, EventArgs e) {
        int result = 0;                 // 정수형 변수로 최종 결과가 저장
        int myInt = 0;                  // 정수형 변수 x를 선언하고 그 값을 0으로 설정

        // while문은 변수 myInt가 7보다 작을 때까지 다음 블록을 계속 실행
        while (myInt < 7) {
            myInt++;                    // 변수 myInt에 1을 더해 변수 myInt에 저장
            result += myInt;            // result에 myInt를 더해 result에 저장

            // 만약 변수 result가 7보다 크면 while문의 블록 다음으로 이동
            if (result > 7) break;
        }

        // 제어 변수i가 0부터 3보다 작을 때까지 반복문 실행
        // 순환할 때마다 제어 변수 i는 1씩 증가
        for (int i = 0; i < 3; i++) {
            result += i;                // result에 i를 더해 result에 저장
        }

        // 정수형 변수 result를 문자열형으로 바꾸어 ShowResult 메서드의 매개변수로 전달
        ShowResult(result.ToString());
        // result가 출력
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
