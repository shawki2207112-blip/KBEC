using System;
using System.Configuration;
using System.Data;
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
            if (Session["UserID"] != null)
            {
                pnlGuest.Visible = false;

                pnlUser.Visible = true;

                lblUserName.Text =
                    Session["UserName"].ToString();
            }

            else
            {
                pnlGuest.Visible = true;

                pnlUser.Visible = false;
            }

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

            SqlDataAdapter sda =
                new SqlDataAdapter(query, con);

            DataTable dt = new DataTable();

            sda.Fill(dt);

            rptFeatured2.DataSource = dt;
            rptFeatured2.DataBind();

            rptFeatured2.DataSource = dt;
            rptFeatured2.DataBind();

         
        }
    }
}