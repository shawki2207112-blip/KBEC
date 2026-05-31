using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace KBEC
{
    public partial class manage_registrations : System.Web.UI.Page
    {
        string cs =
            ConfigurationManager
            .ConnectionStrings["KBECConnection"]
            .ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadEvents();
            }
        }

        void LoadEvents()
        {
            SqlConnection con =
                new SqlConnection(cs);

            string query = @"

            SELECT

            EventID,

            Title,

            CASE
            WHEN RegistrationOpen=1
            THEN 'Open'
            ELSE 'Closed'
            END AS RegistrationStatus

            FROM Events";

            SqlDataAdapter da =
                new SqlDataAdapter(query, con);

            DataTable dt =
                new DataTable();

            da.Fill(dt);

            gvEvents.DataSource = dt;
            gvEvents.DataBind();
        }

        protected void gvEvents_RowCommand(
            object sender,
            GridViewCommandEventArgs e)
        {
            int rowIndex =
                Convert.ToInt32(e.CommandArgument);

            int eventId =
                Convert.ToInt32(
                gvEvents.DataKeys[rowIndex].Value);

            int status = 1;

            if (e.CommandName == "CloseRegistration")
                status = 0;

            SqlConnection con =
                new SqlConnection(cs);

            string query = @"

            UPDATE Events

            SET RegistrationOpen=@status

            WHERE EventID=@id";

            SqlCommand cmd =
                new SqlCommand(query, con);

            cmd.Parameters.AddWithValue(
                "@status",
                status);

            cmd.Parameters.AddWithValue(
                "@id",
                eventId);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            LoadEvents();
        }
    }
}