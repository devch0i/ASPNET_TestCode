using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;


namespace ASPNET_TestCode._220105
{
    public partial class ConnectionTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConnection_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["AdventureWorks"].ConnectionString;
                        
            SqlConnection conn = new SqlConnection(connectionString);
            lblConnectionInformation.Text = "<font color='red'>";

            try
            {
                conn.Open();
                lblConnectionInformation.Text += "<b>서버 버전 : </b>" + conn.ServerVersion;
                lblConnectionInformation.Text += "<br/><br/>연결 상태 : </b>" + conn.State.ToString();
            }
            catch(Exception error)
            {
                lblConnectionInformation.Text += "<b>데이터베이스 읽기 오류</b><br/>";
                lblConnectionInformation.Text += error.Message;
            }
            finally { 
                conn.Close();

                lblConnectionInformation.Text += "<br/><b>마지막 연결 상태 : </b>" + conn.State.ToString();
            }
            lblConnectionInformation.Text += "</font>";
        }
    }
}