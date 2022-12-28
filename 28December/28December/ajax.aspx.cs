using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _28December
{
    public partial class ajax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(2000); 

            int c = Convert.ToInt32(TextBox1.Text);
            int d = Convert.ToInt32(TextBox2.Text);
            int add = c + d;
            int sub = c - d;
            int mul = c * d;
            Label1.Text = "Sum is : " + add;
            Label2.Text = "Sub is : " + sub;
            Label3.Text = "Mul is : " + mul;
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            //Label4.Text = DateTime.Now.ToString();
        }

        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    Label5.Text = DropDownList1.SelectedValue;
        //}
    }
}