using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2January
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void answerRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectV = answerRadioButtonList.SelectedValue;
            int selectV2 = Convert.ToInt32(selectV);
            SqlConnection connect = new SqlConnection("data source=DESKTOP-HDOBIGI\\SQLEXPRESS01;database=voiting; integrated security=SSPI");
            connect.Open();
            SqlCommand cmd = new SqlCommand("select theCount from voit where radioID='" + selectV2 + "'", connect);
            SqlDataReader sdd = cmd.ExecuteReader();
            sdd.Read();
            string answer = Convert.ToString(sdd[0]);
            Session["num"] = answer;
            Session["iid"] = selectV2;

            connect.Close();
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {

            string theAnswer = answerRadioButtonList.SelectedValue;
            HttpCookie cookie = new HttpCookie("SurveyAnswer", theAnswer);
            cookie.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(cookie);


            string selectv = answerRadioButtonList.SelectedValue;
            int selectv2 = Convert.ToInt32(selectv);
            SqlConnection connect = new SqlConnection("data source=DESKTOP-HDOBIGI\\SQLEXPRESS01;database=voiting; integrated security=SSPI");
            connect.Open();
            string x = Convert.ToString(Session["num"]);
            int y = Convert.ToInt32(x);
            y++;

            SqlCommand ccc = new SqlCommand("Update voit set theCount='" + y + "' where radioID='" + selectv2 + "'", connect);
            ccc.ExecuteNonQuery();
            connect.Close();

        }
    }
}