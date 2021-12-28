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
            Result.InnerText = "체질량지수(BMI) : " + BMI.ToString();
        }
    }
}