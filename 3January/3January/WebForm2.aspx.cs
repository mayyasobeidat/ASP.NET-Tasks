using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3January
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            result.Text = "";
            if (RadioButton1.Checked)
            {
                result.Text = "You are " + RadioButton1.Text;
            }
            else result.Text = "You are " + RadioButton2.Text;
        }
    }
}