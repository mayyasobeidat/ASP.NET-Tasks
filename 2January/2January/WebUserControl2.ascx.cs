using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2January
{
    public partial class WebUserControl2 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            SqlConnection connect = new SqlConnection("data source=DESKTOP-HDOBIGI\\SQLEXPRESS01;database=voiting; integrated security=SSPI");
            connect.Open();
            SqlCommand cmd = new SqlCommand("select * from voit", connect);
            SqlDataReader sdd = cmd.ExecuteReader();
            while (sdd.Read())
            {
                if (Convert.ToInt32(sdd[0]) == 1)
                {
                    Session["Excellent"] = Convert.ToInt32(sdd[1]);
                }
                else if (Convert.ToInt32(sdd[0]) == 2)
                {
                    Session["VeryGood"] = Convert.ToInt32(sdd[1]);
                }
                else if (Convert.ToInt32(sdd[0]) == 3)
                {
                    Session["Good"] = Convert.ToInt32(sdd[1]);
                }
                else if (Convert.ToInt32(sdd[0]) == 4)
                {
                    Session["Weak"] = Convert.ToInt32(sdd[1]);
                }
                else if (Convert.ToInt32(sdd[0]) == 5)
                {
                    Session["Poor"] = Convert.ToInt32(sdd[1]);
                }

            }

            connect.Close();

            double x1 = Convert.ToInt32(Session["Excellent"]);
            double x2 = Convert.ToInt32(Session["VeryGood"]);
            double x3 = Convert.ToInt32(Session["Good"]);
            double x4 = Convert.ToInt32(Session["Weak"]);
            double x5 = Convert.ToInt32(Session["Poor"]);
            double tot = x1 + x2 + x3 + x4 + x5;
            Session["total"] = Convert.ToString(tot);



            double xx1 = (x1 / tot);
            int exc = Convert.ToInt32(xx1 * 100);
            Excellent.Width = exc + '%';
            Excellent.Text = Convert.ToString(exc) + '%';


            double xx2 = (x2 / tot);
            int vgd = Convert.ToInt32(xx2 * 100);
            VeryGood.Width = vgd + '%';
            VeryGood.Text = Convert.ToString(vgd) + '%';


            double xx3 = (x3 / tot);
            int goo = Convert.ToInt32(xx3 * 100);
            Good.Width = goo + '%';
            Good.Text = Convert.ToString(goo) + '%';


            double xx4 = (x4 / tot);
            int wea = Convert.ToInt32(xx4 * 100);
            Weak.Width = wea + '%';
            Weak.Text = Convert.ToString(wea) + '%';


            double xx5 = (x5 / tot);
            int poo = Convert.ToInt32(xx5 * 100);
            Poor.Width = poo + '%';
            Poor.Text = Convert.ToString(poo) + '%';



            SqlConnection connect3 = new SqlConnection("data source=DESKTOP-HDOBIGI\\SQLEXPRESS01;database=voiting; integrated security=SSPI");
            connect3.Open();
            SqlCommand cmd2 = new SqlCommand("select sum (theCount) from voit", connect3);
            int result = (int)cmd2.ExecuteScalar();
            Label6.Text = result.ToString();



        }



    }
}