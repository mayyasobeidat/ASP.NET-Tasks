using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication29dec
{
    public partial class Session_State : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["count"] == null)
                {
                    Session["count"] = 0;
                }

                int count = (int)Session["count"];
                count++;
                Session["count"] = count;
                Session.Timeout = 1; //You may add session time out.

                Label1.Text = "You have visited this page " + count + " times.";
            }
        }
    }
}