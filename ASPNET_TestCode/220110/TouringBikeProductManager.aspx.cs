using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace ASPNET_TestCode._220110
{
    public partial class TouringBikeProductManager : System.Web.UI.Page
    {
        private string connectionString = WebConfigurationManager.ConnectionStrings["AdventureWorks"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack) {
                FillAllProductList();
            }
        }

        private void FillAllProductList() { 
            // 기존 항목을 모두 삭제
            ddlProducts.Items.Clear();

            // Touring 자전거 상품(ProductSubcategoryID=1)의 이름과 상품 고유번호 검색을 위한 SQL문 작성
            string selectSQL = "SELECT name, productid from production.product where productsubcategoryid=1";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, conn);

            SqlDataReader rd; 
            try {
                conn.Open();
                rd = cmd.ExecuteReader();

                // 결과 집합에서 더 이상 읽을 행이 없을 때까지
                while (rd.Read()) {
                    ListItem item = new ListItem();
                    item.Text = rd["Name"].ToString();
                    // 상품의 고유 번호(ID)를 항목의 Value 값에 저장
                    item.Value = rd["ProductID"].ToString();
                    ddlProducts.Items.Add(item);
                }
                rd.Close();
            }
            catch (Exception e) {
                lblStatus.Text = "데이터베이스를 읽는 동안 오류가 발생하였습니다.<br/>";
                lblStatus.Text += e.Message;
            }
            finally {
                conn.Close();
            }
        }

        protected void ddlProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblStatus.Text = "";

            // 상품의 고유 번호로 상품의 모든 열 정보 검색을 위한 매개변수가 있는 SQL문 사용
            string selectSQL = "SELECT * FROM production.product WHERE productid=@productid";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(selectSQL, conn);

            // 드롭다운리스트 컨트롤 항목의 Value 속성에 상품 ID 속성이 저장되어 있다.
            cmd.Parameters.AddWithValue("@productid", ddlProducts.SelectedValue);
            SqlDataReader rd;

            try
            {
                conn.Open();
                rd = cmd.ExecuteReader();

                // 하나의 레코드만이 검색되므로 Read 메서드를 한 번만 사용
                rd.Read();

                // 읽어 들인 행의 열 데이터를 열 이름으로 참조하여 읽어온다.
                txtProductID.Text = rd["ProductID"].ToString();
                txtProductName.Text = rd["Name"].ToString();
                txtProductNumber.Text = rd["ProductNumber"].ToString();
                txtStanardCost.Text = rd["StandardCost"].ToString();
                txtListPrice.Text = rd["ListPrice"].ToString();
                txtSellStartDate.Text = rd["SellStartDate"].ToString();

                rd.Close();
            }
            catch (Exception error)
            {
                lblStatus.Text = "데이터베이스를 읽는 동안 오류가 발생했습니다.<bt/>";
                lblStatus.Text += error.Message;
            }
            finally {
                conn.Close();
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            // 매개변수가 있는 명령문을 사용하는 SQL문 작성
            string updateSQL = "UPDATE production.product SET Name=@pname, ";
            updateSQL += "ProductNumber=@pnum, StandardCost=@sc, ";
            updateSQL += "ListPrice=@lp, SellStartDate=@ssd WHERE productid=@pid";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(updateSQL, conn);

            // Command 객체에 매개변수와 매개변수 값 추가
            // 단, 매개변수의 값은 TextBox 컨트롤에서 읽어온다.
            cmd.Parameters.AddWithValue("@pname", txtProductName.Text);
            cmd.Parameters.AddWithValue("@pnum", txtProductNumber.Text);
            cmd.Parameters.AddWithValue("@sc", double.Parse(txtStanardCost.Text));
            cmd.Parameters.AddWithValue("@lp", double.Parse(txtListPrice.Text));
            cmd.Parameters.AddWithValue("@ssd", DateTime.Parse(txtSellStartDate.Text));
            cmd.Parameters.AddWithValue("@pid", txtProductID.Text);

            // Command 객체를 실행한 후 수정된 레코드 수를 저장하기 위한 변수
            int updated = 0;
            try
            {
                conn.Open();
                updated = cmd.ExecuteNonQuery();
                lblStatus.Text = updated.ToString() + " 개의 레코드가 수정되었습니다.";
            }
            catch (Exception error)
            {
                lblStatus.Text = "데이터베이스에 쓰는 동안 오류가 발생했습니다.<br/>";
                lblStatus.Text += error.Message;
            }
            finally {
                conn.Close();
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            // 데이터 삭제를 위한 SQL문 작성
            string deleteSQL = "DELETE FROM production.product WHERE productid=@pid";
            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(deleteSQL, conn);

            // command 객체에 매개변수와 매개변수 값 추가
            cmd.Parameters.AddWithValue("@pid", txtProductID.Text);

            // command 객체를 실행 후 삭제된 레코드 수를 저장하기 위한 변수
            int deleted = 0;
            try
            {
                conn.Open();
                deleted = cmd.ExecuteNonQuery();
                lblStatus.Text = deleted.ToString() + " 개의 레코드가 삭제되었습니다.";

                // 화면에 표시된 정보도 삭제
                txtProductID.Text = "";
                txtProductName.Text = "";
                txtProductNumber.Text = "";
                txtStanardCost.Text = "";
                txtListPrice.Text = "";
                txtStanardCost.Text = "";
                txtSellStartDate.Text = "";
            }
            catch (Exception error)
            {
                lblStatus.Text = "데이터를 삭제하는 동안 오류가 발생했습니다.<br/>";
                lblStatus.Text += error.Message;
            }
            finally {
                conn.Close();
            }

            // 삭제된 상품 정보가 있다면 상품 목록을 갱신
            if (deleted > 0) { 
                FillAllProductList();
            }
        }

        protected void btnClearInfo_Click(object sender, EventArgs e)
        {
            txtProductID.Text = "";
            txtProductName.Text = "";
            txtProductNumber.Text = "";
            txtStanardCost.Text = "";
            txtListPrice.Text = "";
            txtStanardCost.Text = "";
            txtSellStartDate.Text = "";

            lblStatus.Text = "제품 정보를 모두 입력한 후 [새 상품 등록] 버튼을 클릭하세요.";
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            // 매개변수가 있는 명령문을 사용하여 삽입하기 위한 SQL문 작성
            string insertSQL = "INSERT INTO production.product ";
            insertSQL += "(name, productnumber, standardcost, listprice, ";
            insertSQL += "productsubcategoryid, sellstartdate, safetystocklevel, reorderpoint, daysTomanufacture) VALUES ";

            // 상품 카테고리 번호 1(Touring 자전거를 의미)은 직접 값을 입력
            // SellStartDate는 현재 날짜를 이용하여 값을 할당
            // GETDATE() 함수는 SQL로 삽입되는 날짜를 반환한다.
            // safetystocklevel은 null이 들어갈 수 없어 임의적으로 1000을 할당
            // reorderpoint는 null이 들어갈 수 없어 임의적으로 750을 할당
            // daysTomanufacture는 null이 들어갈 수 없어 임의적으로 0을 할당
            insertSQL += "(@pname, @pnum, @sc, @lp, 1, GETDATE(), 1000, 750, 0)";

            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, conn);
            cmd.Parameters.AddWithValue("@pname", txtProductName.Text);
            cmd.Parameters.AddWithValue("@pnum", txtProductNumber.Text);
            cmd.Parameters.AddWithValue("@sc", double.Parse(txtStanardCost.Text));
            cmd.Parameters.AddWithValue("@lp", double.Parse(txtListPrice.Text));

            int inserted = 0;
            try
            {
                conn.Open();
                inserted = cmd.ExecuteNonQuery();
                lblStatus.Text = inserted.ToString() + " 개의 레코드가 삽입되었습니다.";
            }
            catch (Exception error)
            {
                lblStatus.Text = "데이터베이스에 쓰는 동안 오류가 발생했습니다.<br/>";
                lblStatus.Text += error.Message;
            }
            finally { 
                conn.Close();
            }

            // 추가된 상품 정보가 있다면 상품 목록을 갱신
            if (inserted > 0) { 
                FillAllProductList();
            }
        }
    }
}