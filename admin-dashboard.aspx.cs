using System;
using System.Configuration;
using System.Data.SqlClient;

namespace KBEC
{
    public partial class admin_dashboard : System.Web.UI.Page
    {
        string connStr =
            ConfigurationManager
            .ConnectionStrings["KBECConnection"]
            .ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // CHECK ADMIN LOGIN
            if (Session["UserRole"] == null ||
                Session["UserRole"].ToString() != "admin")
            {
                Response.Redirect("login.aspx");
            }

            if (!IsPostBack)
            {
                LoadDashboardData();
            }
        }

        void LoadDashboardData()
        {
            SqlConnection con = new SqlConnection(connStr);

            con.Open();

            // TOTAL EVENTS
            SqlCommand eventCmd =
                new SqlCommand(
                    "SELECT COUNT(*) FROM Events",
                    con);

            lblTotalEvents.Text =
                eventCmd.ExecuteScalar().ToString();

            // TOTAL USERS
            SqlCommand userCmd =
                new SqlCommand(
                    "SELECT COUNT(*) FROM Users WHERE Role='user'",
                    con);

            lblTotalUsers.Text =
                userCmd.ExecuteScalar().ToString();

            // TOTAL REGISTRATIONS
            SqlCommand regCmd =
                new SqlCommand(
                    "SELECT COUNT(*) FROM Registrations",
                    con);

            lblTotalRegistrations.Text =
                regCmd.ExecuteScalar().ToString();

            con.Close();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            Response.Redirect("kbec.aspx");
        }
    }
}