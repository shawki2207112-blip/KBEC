using System;
using System.Configuration;
using System.Data.SqlClient;

namespace KBEC
{
    public partial class kbec : System.Web.UI.Page
    {
        string connStr =
            ConfigurationManager
            .ConnectionStrings["KBECConnection"]
            .ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadFeaturedEvents();
            }
        }

        void LoadFeaturedEvents()
        {
            SqlConnection con =
                new SqlConnection(connStr);

            string query =
                "SELECT * FROM Events WHERE IsFeatured = 1";

            SqlCommand cmd =
                new SqlCommand(query, con);

            con.Open();

            rptFeaturedEvents.DataSource =
                cmd.ExecuteReader();

            rptFeaturedEvents.DataBind();

            con.Close();
        }
    }
}