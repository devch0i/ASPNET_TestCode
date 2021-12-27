<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Properties_1.aspx.cs" Inherits="ASPNET_TestCode._211227.Private" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<script runat="server">
    // A 부분
    public class Customer {
        private string m_SocialNumber;                  // private 한정자로 외부에서 사용하는 것을 막음
        public string GetSocialNumber() {               // 메서드를 이용하여 주민번호를 반환
            return m_SocialNumber;
        }
        public void SetSocialNumber(string sn) {        // 메서드를 이용하여 주민번호를 입력
            if(!IsValidSocialNumber(sn))                // if(!false) = if(true)
                throw new ArgumentException(sn, "주민등록번호 오류");
            else m_SocialNumber = sn;
        }

        private bool IsValidSocialNumber(string sn) {
            // 주민번호 형식을 점검하여 true/false 반환
            return true;
        }
    }
    protected void Page_Load(object sender, EventArgs e) {
        // B 부분
        Customer myCustomer = new Customer();
        myCustomer.SetSocialNumber("111111-1111111");
        ShowResult(myCustomer.GetSocialNumber());
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
