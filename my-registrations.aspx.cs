using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace KBEC
{
    public partial class my_registrations : System.Web.UI.Page
    {
        string cs =
            ConfigurationManager
            .ConnectionStrings["KBECConnection"]
            .ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                LoadRegistrations();
            }
        }

        void LoadRegistrations()
        {
            int userId =
                Convert.ToInt32(
                    Session["UserID"]);

            SqlConnection con =
                new SqlConnection(cs);

            string query = @"

            SELECT
                E.Title,
                E.Location,
                E.ImagePath

            FROM Registrations R

            INNER JOIN Events E
            ON R.EventID = E.EventID

            WHERE R.UserID=@userid";

            SqlCommand cmd =
                new SqlCommand(query, con);

            cmd.Parameters.AddWithValue(
                "@userid",
                userId);

            SqlDataAdapter da =
                new SqlDataAdapter(cmd);

            DataTable dt =
                new DataTable();

            da.Fill(dt);

            gvRegistrations.DataSource = dt;

            gvRegistrations.DataBind();
        }
    }
}