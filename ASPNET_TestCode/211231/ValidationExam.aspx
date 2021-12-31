<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidationExam.aspx.cs" Inherits="ASPNET_TestCode._211231.ValidationExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script type="text/javascript">
        function ValidateSocialNumber(source, args) {
            var sn = args.Value;
            var checkDigit = 0;
            var weight = 2;

            for (var i = 0; i < 13; i++) {
                if (i == 6) continue;
                checkDigit += parseInt(sn.charAt(i)) * weight;
                weight++;
                if (weight > 9) weight = 2;
            }
            checkDigit = (11 - (checkDigit % 11)) % 10;

            if (parseInt(sn.charAt(13)) == checkDigit) args.IsValid = true;
            else args.IsValid = false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="이름 : " Width="150px"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldNameRequired" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="이름을 입력해주세요." SetFocusOnError="True"></asp:RequiredFieldValidator>
            <br />

            <asp:Label ID="Label2" runat="server" Text="비밀번호 : " Width="150px"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldPasswordRequired" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="비밀번호를 입력해주세요." SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="vldPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="비밀번호는 4자 이상 10자 이하여야 합니다." SetFocusOnError="True" ValidationExpression="\w{4,10}"></asp:RegularExpressionValidator>
            <br />

            <asp:Label ID="Label3" runat="server" Text="비밀번호(확인) : " Width="150px"></asp:Label>
            <asp:TextBox ID="txtRetype" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldRetypeRequired" runat="server" ControlToValidate="txtRetype" Display="Dynamic" ErrorMessage="비밀번호(확인)을 다시 입력해주세요."></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="vldRetype" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRetype" Display="Dynamic" ErrorMessage="비밀번호와 일치하지 않습니다."></asp:CompareValidator>
            <br />

            <asp:Label ID="Label4" runat="server" Text="이메일 : " Width="150px"></asp:Label>
            <asp:TextBox ID="txtEMail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldEMailRequired" runat="server" ControlToValidate="txtEMail" Display="Dynamic" ErrorMessage="이메일을 입력해주세요."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="vldEMail" runat="server" ControlToValidate="txtEMail" Display="Dynamic" ErrorMessage="이메일 형식이 아닙니다." ValidationExpression="\S+@\S+\.\S+"></asp:RegularExpressionValidator>
            <br />

            <asp:Label ID="Label5" runat="server" Text="주민등록번호 : " Width="150px"></asp:Label>
            <asp:TextBox ID="txtSocialNumber" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="vldSNRequired" runat="server" ControlToValidate="txtSocialNumber" Display="Dynamic" ErrorMessage="주민등록번호를 입력해주세요."></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="vldSNRegularExpression" runat="server" ControlToValidate="txtSocialNumber" Display="Dynamic" ErrorMessage="주민등록번호를 형식에 맞게 넣어주세요" SetFocusOnError="True" ValidationExpression="\d{6}-[1-4]\d{6}"></asp:RegularExpressionValidator>
            <asp:CustomValidator ID="vldSocialNumber" runat="server" ErrorMessage="주민등록번호가 맞지 않습니다." OnServerValidate="vldSocialNumber_ServerCalidate" ControlToValidate="txtSocialNumber" Display="Dynamic" SetFocusOnError="True" ClientValidationFunction="ValidateSocialNumber"></asp:CustomValidator>
            <br />

            <asp:Label ID="Label6" runat="server" Text="나이 : " Width="150px"></asp:Label>
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="vldAge" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="0 - 150 사이로 입력합니다." MaximumValue="150" MinimumValue="0" Type="Integer"></asp:RangeValidator>
            <br />

            <asp:Button ID="btnSubmit" runat="server" Text="제출하기" OnClick="btnSubmit_Click" style="margin-right:30px;"/>
            <asp:Button ID="btnCancel" runat="server" Text="취소" CausesValidation="False" OnClick="btnCancel_Click" /><br /><br /><br />

            <asp:ValidationSummary ID="vldSummary" runat="server" ShowMessageBox="True" ShowSummary="False" />
        </div>
    </form>
</body>
</html>
