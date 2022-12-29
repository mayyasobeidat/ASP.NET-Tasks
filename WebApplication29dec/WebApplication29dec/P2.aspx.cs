using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication29dec
{
    public partial class P2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["mylogin"] != null)
            {
                string user1 = Request.Cookies["mylogin"]["email"];
                Label3.Text += user1;
            }
            else
            {
                Response.Redirect("P1.aspx");
            }
        }
    }
}