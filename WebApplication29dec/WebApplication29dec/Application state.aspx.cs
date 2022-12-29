using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication29dec
{
    public partial class Application_state : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Application["count"] == null)
                {
                    Application["count"] = 0;
                }

                int count = (int)Application["count"];
                count++;
                Application["count"] = count;

                Label1.Text = "This page has been visited " + count + " times.";
            }
        }
    }
}