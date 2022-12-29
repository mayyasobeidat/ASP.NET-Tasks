using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication29dec
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            //craeate new cookies
            HttpCookie cook = new HttpCookie("mylogin");
            cook.Values.Add("email", TextBox4.Text);
            //cook.Expires = DateTime.Now;   //default
            cook.Expires = DateTime.Now.AddYears(10);
            Response.Cookies.Add(cook);


        }
        protected void Button7_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["mylogin"] != null)
            {
                string user1 = Request.Cookies["mylogin"]["email"];
                Label8.Text = user1;
            }

        }
    }
}