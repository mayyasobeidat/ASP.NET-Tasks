using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication29dec
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string firstname = Request.QueryString["firstname"];
            string lastname = Request.QueryString["lastname"];
            Label1.Text = "welcome " + firstname + " " + lastname;
        }
    }
}