using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNET_TestCode._220103
{
    public partial class ShoppingBasket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                // 쇼핑 상품 직접 생성
                Goods book1 = new Goods("Head First C#", "한빛미디어", 32000);
                Goods book2 = new Goods("Effective C#", "한빛미디어", 20000);
                Goods book3 = new Goods("데이터베이스 관리와 실습", "한빛미디어", 25000);

                // 세션에 저장
                Session["Book1"] = book1;
                Session["Book2"] = book2;
                Session["Book3"] = book3;

                // 장바구니 ListBox 항목 추가
                lstGoods.Items.Add(book1.Name);
                lstGoods.Items.Add(book2.Name);
                lstGoods.Items.Add(book3.Name);
            }

            // 세션 정보 보이기
            lblSessionInfo.Text = "세션 ID : " + Session.SessionID;
            lblSessionInfo.Text += "<br/>세션 내 객체 개수 : " + Session.Count.ToString();
            lblSessionInfo.Text += "<br/>세션 모드 : " + Session.Mode.ToString();
            lblSessionInfo.Text += "<br/>쿠키 사용 안함 : " + Session.IsCookieless.ToString();
            lblSessionInfo.Text += "<br/>새 세션 : " + Session.IsCookieless.ToString();
            lblSessionInfo.Text += "<br/>세션 만료 시간 : " + Session.Timeout.ToString() + "분";
            
        }

        protected void btnMoreInfo_Click(object sender, EventArgs e)
        {
            if (lstGoods.SelectedIndex == -1)
            {
                lblGoodsInfo.Text = "장바구니에 있는 상품을 먼저 선택하세요.";
            }
            else { 
                // 선택 상품에 대한 세션 키 만들기
                string key = "Book" + (lstGoods.SelectedIndex + 1).ToString();

                // 세션 키로 상품 객체 얻어오기
                Goods book = (Goods)Session[key];

                // 상세 정보 출력
                lblGoodsInfo.Text = "도서명 : " + book.Name;
                lblGoodsInfo.Text += "<br/>출판사 : " + book.Manufacturer;
                lblGoodsInfo.Text += "<br/>정가 : " + book.Cost;
            }
        }
    }
}