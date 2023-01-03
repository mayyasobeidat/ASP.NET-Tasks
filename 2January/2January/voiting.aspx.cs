using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2January
{
    public partial class voiting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.Cookies["SurveyAnswer"] != null)
            {
                WebUserControl1.Visible = false;
                WebUserControl2.Visible = true;
            }
            
            else
            {
                WebUserControl1.Visible = true;
                WebUserControl2.Visible = false;
            }
            }
        }
}
