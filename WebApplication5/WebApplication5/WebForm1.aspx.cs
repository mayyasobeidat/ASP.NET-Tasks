using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                // Get the selected color from the form data
                string selectedColor = Request.Form["color"];



                // Save the response to the database
                string connectionString = "Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=MyDatabase;Integrated Security=True;";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "INSERT INTO SurveyResponses (Color) VALUES (@Color)";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@Color", selectedColor);
                    command.ExecuteNonQuery();
                }
            }
            else
            {
                // Get the percentage of users who selected each color from the database
                string connectionString = "Data Source=DESKTOP-LPCCUNQ\\SQLEXPRESS;Database=MyDatabase;Integrated Security=True;";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT COUNT(*) FROM SurveyResponses WHERE Color = 'red'";
                    SqlCommand command = new SqlCommand(query, connection);
                    int numRedResponses = (int)command.ExecuteScalar();

                    query = "SELECT COUNT(*) FROM SurveyResponses WHERE Color = 'green'";
                    command = new SqlCommand(query, connection);
                    int numGreenResponses = (int)command.ExecuteScalar();

                    query = "SELECT COUNT(*) FROM SurveyResponses WHERE Color = 'blue'";
                    command = new SqlCommand(query, connection);
                    int numBlueResponses = (int)command.ExecuteScalar();

                    query = "SELECT COUNT(*) FROM SurveyResponses";
                    command = new SqlCommand(query, connection);
                    int totalResponses = (int)command.ExecuteScalar();

                    // Calculate the percentage of users who selected each color
                    double redPercent = (double)numRedResponses / totalResponses * 100;
                    double greenPercent = (double)numGreenResponses / totalResponses * 100;
                    double bluePercent = (double)numBlueResponses / totalResponses * 100;

                    // Display the results
                    Response.Write($"<p>Red is selected by {redPercent:F1}% of users</p>");
                    Response.Write($"<p>Green is selected by {greenPercent:F1}% of users</p>");
                    Response.Write($"<p>Blue is selected by {bluePercent:F1}% of users</p>");
                }
            }
        }


    }
}
