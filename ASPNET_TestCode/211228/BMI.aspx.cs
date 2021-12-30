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

            // string[,] info = new string[,] { { "0", "1", "2", "3" }, { "저체중", "정상", "과체중", "비만" } }; // 저체중, 정상, 과체중, 비만이 들어갈 변수
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

            /*
            Response.Clear(); // 두 번째 누르는 버튼부터 버퍼를 지워줌
            // 이미지 출력
            if (level.Equals("저체중")) fileName = filePath + "0.png";
            else if (level.Equals("정상")) fileName = filePath + "1.png";
            else if (level.Equals("과체중")) fileName = filePath + "2.png";
            else fileName = filePath + "3.png";
            
            Response.WriteFile(fileName);

            Response.Flush();
            */
            // 왜 한글이 깨지는지 모르겠다.
        }
    }
}