using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication29dec
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                HttpCookie cookie = Request.Cookies["userName"];

                if (cookie != null)
                {
                    TextBox1.Text = cookie.Value;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //HttpCookie cookie = new HttpCookie("userName");
            //cookie.Value = TextBox1.Text;
            //cookie.Expires = DateTime.Now.AddDays(30);
            //Response.Cookies.Add(cookie);


            HttpCookie k = new HttpCookie("log");
            k.Values.Add("name", TextBox1.Text);
            k.Values.Add("password", TextBox2.Text);

            if (CheckBox1.Checked)
            {
                k.Expires = DateTime.Now.AddYears(1);
                //k.Expires = DateTime.Now.AddSeconds(1);
                Response.Cookies.Add(k);
                Response.Redirect("homepag.aspx");
            }
        }
    }
}