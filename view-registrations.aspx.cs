using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace KBEC
{
    public partial class view_registrations : System.Web.UI.Page
    {
        string cs =
            ConfigurationManager
            .ConnectionStrings["KBECConnection"]
            .ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        void LoadData()
        {
            SqlConnection con =
                new SqlConnection(cs);

            string query = @"

            SELECT

            E.Title AS EventName,

            U.FullName,

            U.Roll,

            U.Department,

            U.Email

            FROM Registrations R

            INNER JOIN Users U
            ON R.UserID = U.UserID

            INNER JOIN Events E
            ON R.EventID = E.EventID";

            SqlDataAdapter da =
                new SqlDataAdapter(query, con);

            DataTable dt =
                new DataTable();

            da.Fill(dt);

            gvRegistrations.DataSource = dt;

            gvRegistrations.DataBind();
        }
    }
}