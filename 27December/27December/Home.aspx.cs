using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _27December
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                   "swal('Register Completed!', 'You clicked Success button!', 'success')", true);
            }
        }
    }
}