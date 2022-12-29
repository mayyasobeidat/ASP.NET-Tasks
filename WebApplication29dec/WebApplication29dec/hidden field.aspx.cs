using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication29dec
{
    public partial class hidden_field : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (HiddenField1.Value != null)
            {
                Int32 x = Convert.ToInt32(HiddenField1.Value) + 2;
                HiddenField1.Value = x.ToString();
                Label1.Text = x.ToString();
}
        }
    }
}