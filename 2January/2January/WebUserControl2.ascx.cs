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
                    Session["Exn"] = Convert.ToInt32(sdd[1]);
                }
                else if (Convert.ToInt32(sdd[0]) == 2)
                {
                    Session["Vgn"] = Convert.ToInt32(sdd[1]);
                }
                else if (Convert.ToInt32(sdd[0]) == 3)
                {
                    Session["Gn"] = Convert.ToInt32(sdd[1]);
                }
                else if (Convert.ToInt32(sdd[0]) == 4)
                {
                    Session["Label6"] = Convert.ToInt32(sdd[1]);
                }
                else if (Convert.ToInt32(sdd[0]) == 5)
                {
                    Session["Pn"] = Convert.ToInt32(sdd[1]);
                }

            }

            connect.Close();

            double ee = Convert.ToInt32(Session["Exn"]);
            double vgvg = Convert.ToInt32(Session["Vgn"]);
            double gg = Convert.ToInt32(Session["Gn"]);
            double Label0 = Convert.ToInt32(Session["Label6"]);
            double pp = Convert.ToInt32(Session["Pn"]);
            double tot = ee + vgvg + gg + Label0 + pp;
            Session["total"] = Convert.ToString(tot);


            ///////////////////////////
            double xxe = (ee / tot);
            int exavg = Convert.ToInt32(xxe * 100);
            exp.Width = exavg + '%';
            exp.Text = Convert.ToString(exavg) + '%';
            //////
            double xxv = (vgvg / tot);
            int vavg = Convert.ToInt32(xxv * 100);
            vgp.Width = vavg + '%';
            vgp.Text = Convert.ToString(vavg) + '%';
            //////
            double xxg = (gg / tot);
            int gavg = Convert.ToInt32(xxg * 100);
            gp.Width = gavg + '%';
            gp.Text = Convert.ToString(gavg) + '%';
            //////
            double xxl = (Label0 / tot);
            int pavgl = Convert.ToInt32(xxl * 100);
            mmm.Width = pavgl + '%';
            mmm.Text = Convert.ToString(pavgl) + '%';
            //////
            double xxp = (pp / tot);
            int pavg = Convert.ToInt32(xxp * 100);
            ppp.Width = pavg + '%';
            ppp.Text = Convert.ToString(pavg) + '%';
        }
    }
}