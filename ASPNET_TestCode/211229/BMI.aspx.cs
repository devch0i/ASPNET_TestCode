using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET_TestCode._211228
{
    public partial class BMI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {      // not IsPostBack == true일 경우 실행
                Measure.Items.Add(new ListItem("센티미터(cm)", "0.01"));
                Measure.Items.Add(new ListItem("피트(feet)", "0.3048"));
                Measure.Items.Add(new ListItem("미터(m)", "1"));
            }
        }

        protected void Calc_ServerClick(object sender, EventArgs e)
        {
            ListItem item = Measure.Items[Measure.SelectedIndex];
            decimal height = Decimal.Parse(Height.Value) * Decimal.Parse(item.Value);
            // cm 단위를 m 단위로 환산
            decimal weight = Decimal.Parse(Weight.Value);
            decimal BMI = weight / (height * height);

            string level = "";
            string filePath = Request.PhysicalApplicationPath + @"App_Data\";
            string fileName = "";

            // BMI 지수 출력
            if (BMI < 20)
            {
                level = "저체중";
            }
            else if (BMI >= 20 && BMI < 25)
            {
                level = "정상";
            }
            else if (BMI >= 25 && BMI < 30)
            {
                level = "과체중";
            }
            else { // 저체중이 20미만이면 음수와 0이 포함되기 때문에 else를 사용
                level = "비만";
            }
            Result.InnerText = "체질량지수(BMI) : " + BMI.ToString() + "(" + level + ")";

            // 이미지 출력
            if (level.Equals("저체중")) Img.Src = fileName = filePath + "0.png";
            else if (level.Equals("정상")) Img.Src = fileName = filePath + "1.png";
            else if (level.Equals("과체중")) Img.Src = fileName = filePath + "2.png";
            else fileName = Img.Src = filePath + "3.png";
        }
    }
}