using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET_TestCode._220103
{
    public partial class PitchRasing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Note = (int)ViewState["Note"];
            }
            else Note = 5;
        }

        protected string[] PitchArray = { "도", "레", "미", "파", "솔", "라", "시" };
        
        protected int Note;

        protected void ShowPitch() { 
            lblPitch.Text = PitchArray[Note];
        }

        protected void btnPitchUP_Click(object sender, EventArgs e)
        {
            // 시 다음에 도가 올 수 있도록 나머지 연산을 사용한다.
            Note = ((int)ViewState["Note"] + 1) % 7;
            ShowPitch(); // 현재의 음을 페이지에 출력
        }

        protected void btnPitchDown_Click(object sender, EventArgs e)
        {
            Note = (int)ViewState["Note"] - 1;

            // 도를 나타내는 Note 값 0에서 1 감소될 경우 시를 나타내는 6으로 변경
            if (Note < 0) Note = 6;
            ShowPitch();
        }

        protected void Page_PreRender(object sender, EventArgs e) {
            ViewState["Note"] = Note; // 뷰 상태에 Note -1 또는 고정된 값 5 등을 넣어보자.
        }
    }
}