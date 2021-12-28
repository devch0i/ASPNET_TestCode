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

        }

        protected void Calc_ServerClick(object sender, EventArgs e)
        {
            decimal height = Decimal.Parse(Height.Value) / 100;
            // cm 단위를 m 단위로 환산
            decimal weight = Decimal.Parse(Weight.Value);
            decimal BMI = weight / (height * height);
            Result.InnerText = "체질량지수(BMI) : " + BMI.ToString();
        }
    }
}