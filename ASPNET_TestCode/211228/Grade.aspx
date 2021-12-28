<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grade.aspx.cs" Inherits="ASPNET_TestCode._211228.Chapter3_Grade" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 325px;
        }
        .auto-style2 {
            width: 544px;
        }
    </style>
</head>
<script runat="server">
    // A 부분
    
    protected void Page_Load(object sender, EventArgs e) {
        // B 부분
        
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
            <table style="width: 100%;">
                <tr>
                    <td colspan="3" style="border-style: solid; border-width: 1px; border-color: #000000; text-align: center; height: 50px; border-collapse: collapse;">학점 계산</td>
                </tr>
                <tr>
                    <td class="auto-style1" style="border-style: solid; border-width: 1px; border-color: #000000; text-align: center; height: 50px; border-collapse: collapse; width: 20%;">평점</td>
                    <td class="auto-style2" style="border-style: solid; border-width: 1px; border-color: #000000; text-align: center; height: 50px; border-collapse: collapse; width: 50%;">
                        <asp:TextBox ID="txtScore" runat="server"></asp:TextBox>
                    </td>
                    <td style="border-style: solid; border-width: 1px; border-color: #000000; text-align: center; height: 50px; border-collapse: collapse; width: 30%;">
                        <asp:Button ID="btnGrade" runat="server" Text="학점 계산" OnClick="btnGrade_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1" style="border-style: solid; border-width: 1px; border-color: #000000; text-align: center; height: 50px; border-collapse: collapse; width: 20%;">학점</td>
                    <td colspan="2" style="border-style: solid; border-width: 1px; border-color: #000000; text-align: center; height: 50px; border-collapse: collapse;">
                        <asp:Label ID="lblGrade" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
