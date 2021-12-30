using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET_TestCode._211230
{
    public partial class ListExam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void rblRepeatDirection_SelectedIndexChanged(object sender, EventArgs e)
        {
            cblInterests.RepeatDirection = (RepeatDirection)rblRepeatDirection.SelectedIndex;
        }

        protected void rblRepeatLayout_SelectedIndexChanged(object sender, EventArgs e)
        {
            cblInterests.RepeatLayout = (RepeatLayout)rblRepeatLayout.SelectedIndex;
        }

        protected void cblInterests_SelectedIndexChanged(object sender, EventArgs e)
        {
            // btlSelectedInterests 컨트롤에 있는 모든 항목 삭제
            btlSelectedInterests.Items.Clear();

            // 선택 항목을 btlSelectedInterests 컨트롤에 삽입
            foreach (ListItem item in cblInterests.Items) { 
                if(item.Selected) btlSelectedInterests.Items.Add(item);
            }
        }

        protected void ddlBulletStyle_SelectedIndexChanged(object sender, EventArgs e)
        {
            btlSelectedInterests.BulletStyle = (BulletStyle)ddlBulletStyle.SelectedIndex;
        }
    }
}