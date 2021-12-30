using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET_TestCode._211230
{
    public partial class ButtonExam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Text = "";
        }

        protected void CommandBtn_Click(object sender, CommandEventArgs e)
        {
            switch (e.CommandName) {
                case "Sort":
                    Sort_List((String)e.CommandArgument);
                    break;
                default:
                    lblMessage.Text = "CommandName을 확인해주세요.";
                    break;
            }
        }

        void Sort_List(string commandArgument) {
            switch (commandArgument) {
                case "Ascending":
                    lblMessage.Text = "자료를 오름차순으로 정렬하였습니다.";
                    break;
                case "Descending":
                    lblMessage.Text = "자료를 내림차순으로 정렬하였습니다.";
                    break;
                default:
                    lblMessage.Text = "CommandArgument를 확인해주세요.";
                    break;
            }
        }

        protected void lbtnGoHanbit_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://www.hanb.co.kr/");
        }

        protected void ibtnHanbit_Click(object sender, ImageClickEventArgs e)
        {
            lblMessage.Text = "그림 위 (" + e.X.ToString() + ", ";
            lblMessage.Text += e.Y.ToString() + ") (을)를 클릭하였습니다.";
        }
    }
}