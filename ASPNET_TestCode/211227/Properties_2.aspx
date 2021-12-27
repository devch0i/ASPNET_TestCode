<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Properties_2.aspx.cs" Inherits="ASPNET_TestCode._211227.Properties_2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<script runat="server">
    // A 부분
    public class Customer {
        private string m_SocialNumber;
        public string SocialNumber {
            get { return m_SocialNumber; }
            set
            {
                if (!IsValidSocialNumber(value))
                    throw new ArgumentException(value, "주민등록번호 오류");
                else m_SocialNumber = value;
            }
        }

        private bool IsValidSocialNumber(string sn) {
            // 주민번호가 옳으면 true, 틀리면 false 반환
            return true;
        }
    }
    protected void Page_Load(object sender, EventArgs e) {
        // B 부분
        Customer myCustomer = new Customer();
        myCustomer.SocialNumber = "111111-1111111";
        ShowResult(myCustomer.SocialNumber);
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
