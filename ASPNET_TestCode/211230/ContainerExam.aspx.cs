using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET_TestCode._211230
{
    public partial class ContainerExam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pnlDirection.Height = 100;

            LiteralControl Title = new LiteralControl();
            Title.Text = "<br/>컨테이너형 웹 컨트롤 예제<br/><br/>쇼핑 백의 변신 : ";

            pnlDirection.Controls.Add(Title);

            RadioButton optAB_01 = new RadioButton();
            optAB_01.Text = "01";
            optAB_01.Checked = true;
            optAB_01.GroupName = "Selection";
            optAB_01.AutoPostBack = true;
            pnlDirection.Controls.Add(optAB_01);
            optAB_01.CheckedChanged += new System.EventHandler(optAB_01_Checked);

            RadioButton optAB_02 = new RadioButton();
            optAB_02.Text = "02";
            optAB_02.GroupName = "Selection";
            optAB_02.AutoPostBack = true;
            pnlDirection.Controls.Add((optAB_02));
            optAB_02.CheckedChanged += new System.EventHandler(optAB_02_Checked);
        }

        protected void optAB_01_Checked(object sender, EventArgs e) {
            mvAlbum.ActiveViewIndex = 0;
        }

        protected void optAB_02_Checked(object sender, EventArgs e)
        {
            mvAlbum.ActiveViewIndex = 1;
        }
    }
}