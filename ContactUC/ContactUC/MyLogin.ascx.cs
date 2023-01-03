using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ContactUC
{
    public partial class MyLogin : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("data source = DESKTOP-HDOBIGI\\SQLEXPRESS01; database=28Dec; integrated security=SSPI");
            string comment = TextBox1.Text;
            string name = TextBox2.Text;

            con.Open();

            SqlCommand cm = new SqlCommand($"insert into comments  (commwnt, name) values('{TextBox1.Text}','{TextBox2.Text}')", con);
            cm.ExecuteNonQuery();

            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
            string sel = "select * from comments";
            SqlCommand cmd2 = new SqlCommand(sel, con);
            SqlDataReader cm2 = cmd2.ExecuteReader();
            Label1.Text = "<table class='table table-striped'><tr><th>Name</th><th>Comment</th></tr>";
            while (cm2.Read())
            {
                Label1.Text += $"<tr><td>{cm2[2]}</td><td>{cm2[1]}</td></tr>";
            }
            Label1.Text += "</table>";
            con.Close();
        }
    }
}