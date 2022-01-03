using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET_TestCode._220103
{
    public partial class FileSearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 이전 페이지가 있을 경우
            if (PreviousPage != null) {
                // 이전 페이지의 컨트롤 구하기
                TextBox txtKeyWord;
                txtKeyWord = (TextBox)PreviousPage.FindControl("txtKeyWord");
                DropDownList ddFileType;
                ddFileType = (DropDownList)PreviousPage.FindControl("ddFileType");

                // 이전 페이지의 입력 정보 처리
                string url = "http://www.google.co.kr/search?q=";
                url += Server.UrlEncode(txtKeyWord.Text + " ");

                string fileType = "";
                switch (ddFileType.SelectedIndex) {
                    case 0:
                        fileType = "filetype:doc";
                        break;
                    case 1:
                        fileType = "filetype:ppt";
                        break;
                    case 2:
                        fileType = "filetype:hwp";
                        break;
                    case 3:
                        fileType = "filetype:pdf";
                        break;
                    case 4:
                        fileType = "filetype:jpg";
                        break;
                }
                url += fileType;

                // 링크 URL 설정
                lnkSearchString.NavigateUrl = url;

                // 페이지에 표시할 텍스트 설정
                lnkSearchString.Text = txtKeyWord.Text + " " + fileType;
            }
        }
    }
}