using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET_TestCode._211228
{
    public partial class Chapter3_Grade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGrade_Click(object sender, EventArgs e)
        {
            int score = int.Parse(txtScore.Text);

            if (score >= 90 && score <= 100)
            {
                lblGrade.Text = "A";
            }
            else if (score < 90 && score >= 80)
            {
                lblGrade.Text = "B";
            }
            else if (score < 80 && score >= 70)
            {
                lblGrade.Text = "C";
            }
            else if (score < 70 && score >= 60)
            {
                lblGrade.Text = "D";
            }
            else if (score < 60 && score >= 0)
            {
                lblGrade.Text = "F";
            }
            else
            {
                lblGrade.Text = "올바른 점수가 아닙니다.";
            }
        }
    }
}