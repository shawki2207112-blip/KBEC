using System;
using System.Configuration;
using System.Data.SqlClient;

namespace KBEC
{
    public partial class events : System.Web.UI.Page
    {
        string connStr =
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
                new SqlConnection(connStr);

            string query =
                "SELECT * FROM Events";

            SqlCommand cmd =
                new SqlCommand(query, con);

            con.Open();

            rptEvents.DataSource =
                cmd.ExecuteReader();

            rptEvents.DataBind();

            con.Close();
        }
    }
}