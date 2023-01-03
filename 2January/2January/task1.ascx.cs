using System;
using System.Collections.Generic;
using System.Linq;
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
            if (Request.Cookies["SurveyAnswer"] != null)
            {
                string answer = Request.Cookies["SurveyAnswer"].Value;
                Response.Write("Your answer is: " + answer);
            }
        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string answer = answerRadioButtonList.SelectedValue;
            HttpCookie cookie = new HttpCookie("SurveyAnswer", answer);
            cookie.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(cookie);
        }
    }
}