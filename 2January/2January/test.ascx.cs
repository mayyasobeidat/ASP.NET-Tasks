using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2January
{
    public partial class task1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

      
            if (Request.Cookies["SurveyAnswer"] != null)
            {
                answerRadioButtonList.SelectedValue = Request.Cookies["SurveyAnswer"].Value;
            }
            //if (Request.Cookies["SurveyAnswer"] != null)
            //{
            //    string answer = Request.Cookies["SurveyAnswer"].Value;
            //    Response.Write("Your answer is: " + answer);
            //}
        }


        //protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //    string vv = answerRadioButtonList.SelectedValue;
        //    int ivv = Convert.ToInt32(vv);
        //    SqlConnection connect = new SqlConnection("data source=DESKTOP-HDOBIGI\\SQLEXPRESS01;database=voit; integrated security=SSPI");
        //    connect.Open();
        //    SqlCommand cmd = new SqlCommand("select theCount from survey where rating='" + ivv + "'", connect);
        //    SqlDataReader sdd = cmd.ExecuteReader();
        //    sdd.Read();
        //    string vvr = Convert.ToString(sdd[0]);
        //    Session["num"] = vvr;
        //    Session["iid"] = ivv;

        //    connect.Close();

        //}


        //protected void SubmitButton_Click(object sender, EventArgs e)
        //{
        //    string vv = answerRadioButtonList.SelectedValue;
        //    int ivv = Convert.ToInt32(vv);
        //    SqlConnection connect1 = new SqlConnection("data source=DESKTOP-HDOBIGI\\SQLEXPRESS01;database=voit; integrated security=SSPI");
        //    connect1.Open();
        //    string vvv = Convert.ToString(Session["num"]);
        //    int ivvr = Convert.ToInt32(vvv);
        //    ivvr++;

        //    SqlCommand ccc = new SqlCommand("Update set theCount='" + ivvr + "' where rating='" + vv + "'", connect1);
        //    ccc.ExecuteNonQuery();
        //    connect1.Close();





        //    SqlConnection con = new SqlConnection("data source=DESKTOP-HDOBIGI\\SQLEXPRESS01;database=voit;integrated security=SSPI");
        //    con.Open();
        //    //box.Visible = false;

        //    //SqlDataReader sdr = comand.ExecuteReader();

        //    if (answerRadioButtonList.SelectedIndex > -1)
        //    {
        //        //box.Visible = true;
        //        Label1.Text = "You selected: " + answerRadioButtonList.SelectedItem.Text;
        //        string y = answerRadioButtonList.SelectedItem.Text;
        //        SqlCommand comand = new SqlCommand($"select * from survey where rating = {y}", con);
        //        SqlDataReader sdr = comand.ExecuteReader();
        //        string x = Convert.ToString(sdr[1]);
        //        resultLabel.Text = x;
        //    }


        //    string answer = answerRadioButtonList.SelectedValue;
        //    HttpCookie cookie = new HttpCookie("SurveyAnswer", answer);
        //    cookie.Expires = DateTime.Now.AddDays(5);
        //    Response.Cookies.Add(cookie);


        //}





    }
}