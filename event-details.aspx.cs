using System;
using System.Configuration;
using System.Data.SqlClient;

namespace KBEC
{
    public partial class event_details : System.Web.UI.Page
    {
        string cs =
            ConfigurationManager
            .ConnectionStrings["KBECConnection"]
            .ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // CHANGE BUTTON TEXT

            if (Session["UserID"] == null)
            {
                btnRegister.Text = "Login To Register";
            }
            else
            {
                btnRegister.Text = "Register Now";
            }

            // LOAD EVENT

            if (!IsPostBack)
            {
                LoadEvent();
            }
        }

        void LoadEvent()
        {
            string eventKey =
                Request.QueryString["key"];

            // NO KEY FOUND

            if (eventKey == null)
            {
                lblTitle.Text = "No Event Found";
                return;
            }

            SqlConnection con =
                new SqlConnection(cs);

            string query = @"

                SELECT *
                FROM Events
                WHERE EventKey=@EventKey";

            SqlCommand cmd =
                new SqlCommand(query, con);

            cmd.Parameters.AddWithValue(
                "@EventKey",
                eventKey);

            con.Open();

            SqlDataReader reader =
                cmd.ExecuteReader();

            if (reader.Read())
            {
                lblTitle.Text =
                    reader["Title"].ToString();

                lblDescription.Text =
                    reader["Description"].ToString();

                lblLocation.Text =
                    reader["Location"].ToString();

                imgEvent.ImageUrl =
                    "Images/" +
                    reader["ImagePath"].ToString();

                btnFacebook.NavigateUrl =
                    reader["FacebookLink"].ToString();
            }

            else
            {
                lblTitle.Text =
                    "Event Not Found";
            }

            con.Close();
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // USER NOT LOGGED IN

            if (Session["UserID"] == null)
            {
                Response.Redirect("user-login.aspx");
                return;
            }

            // GET EVENT KEY

            string eventKey =
                Request.QueryString["key"];

            if (eventKey == null)
            {
                Response.Write("No Event Key Found");
                return;
            }

            SqlConnection con =
                new SqlConnection(cs);

            // GET EVENT ID

            string getEventQuery = @"

                SELECT EventID
                FROM Events
                WHERE EventKey=@key";

            SqlCommand getCmd =
                new SqlCommand(getEventQuery, con);

            getCmd.Parameters.AddWithValue(
                "@key",
                eventKey);

            con.Open();

            object result =
                getCmd.ExecuteScalar();

            // EVENT NOT FOUND

            if (result == null)
            {
                Response.Write("Event Not Found");
                con.Close();
                return;
            }

            int eventId =
                Convert.ToInt32(result);

            int userId =
                Convert.ToInt32(Session["UserID"]);

            // CHECH IF REGISTRATION IS CLOSED
            string checkStatus = @"
                SELECT RegistrationOpen
                        FROM Events WHERE EventID=@id";

            SqlCommand statusCmd =
                new SqlCommand(checkStatus, con);

            statusCmd.Parameters.AddWithValue(
                "@id",
                eventId);

            bool isOpen =
                Convert.ToBoolean(
                    statusCmd.ExecuteScalar());

            if (!isOpen)
            {
                Response.Write("Registration Closed");
                con.Close();
                return;
            }

            // CHECK DUPLICATE REGISTRATION

            string checkQuery = @"

                SELECT COUNT(*)
                FROM Registrations
                WHERE UserID=@userid
                AND EventID=@eventid";

            SqlCommand checkCmd =
                new SqlCommand(checkQuery, con);

            checkCmd.Parameters.AddWithValue(
                "@userid",
                userId);

            checkCmd.Parameters.AddWithValue(
                "@eventid",
                eventId);

            int count =
                (int)checkCmd.ExecuteScalar();

            if (count > 0)
            {
                Response.Write("Already Registered");
                con.Close();
                return;
            }

            // INSERT REGISTRATION

            string insertQuery = @"

                INSERT INTO Registrations
                (
                    UserID,
                    EventID
                )

                VALUES
                (
                    @userid,
                    @eventid
                )";

            SqlCommand cmd =
                new SqlCommand(insertQuery, con);

            cmd.Parameters.AddWithValue(
                "@userid",
                userId);

            cmd.Parameters.AddWithValue(
                "@eventid",
                eventId);

            cmd.ExecuteNonQuery();

            con.Close();

            Response.Write("Registered Successfully");
        }
    }
}