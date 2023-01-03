using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _3January
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "You have selected </br> Item = " +
            RadioButtonList1.SelectedItem.Text + "</br> Value = " +
            RadioButtonList1.SelectedValue + "</br> Index = " +
            RadioButtonList1.SelectedIndex;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.RepeatDirection == RepeatDirection.Vertical)
            {
                RadioButtonList1.RepeatDirection = RepeatDirection.Horizontal;
            }
            else
            {
                RadioButtonList1.RepeatDirection = RepeatDirection.Vertical;
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            TextBox1.Text = CheckBox1.Text;
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label2.Text = Calendar1.SelectedDate.ToString("MM/dd/yyyy");
        }
    }
}