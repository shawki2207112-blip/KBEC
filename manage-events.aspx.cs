using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;

namespace KBEC
{
    public partial class manage_events : System.Web.UI.Page
    {
        string cs = ConfigurationManager
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
            SqlConnection con = new SqlConnection(cs);

            string query = "SELECT * FROM Events";

            SqlDataAdapter da = new SqlDataAdapter(query, con);

            DataTable dt = new DataTable();

            da.Fill(dt);

            gvEvents.DataSource = dt;

            gvEvents.DataBind();
        }

        protected void gvEvents_RowEditing(
            object sender,
            GridViewEditEventArgs e)
        {
            gvEvents.EditIndex = e.NewEditIndex;

            LoadEvents();
        }

        protected void gvEvents_RowCancelingEdit(
            object sender,
            GridViewCancelEditEventArgs e)
        {
            gvEvents.EditIndex = -1;

            LoadEvents();
        }

        protected void gvEvents_RowUpdating(
            object sender,
            GridViewUpdateEventArgs e)
        {
            GridViewRow row = gvEvents.Rows[e.RowIndex];

            int id = Convert.ToInt32(
                gvEvents.DataKeys[e.RowIndex].Value);

            string title =
                ((TextBox)row.FindControl("txtTitle")).Text;

            string description =
                ((TextBox)row.FindControl("txtDescription")).Text;

            string location =
                ((TextBox)row.FindControl("txtLocation")).Text;

            string eventKey =
                ((TextBox)row.FindControl("txtEventKey")).Text;

            FileUpload fu =
                (FileUpload)row.FindControl("fuEditImage");

            SqlConnection con =
                new SqlConnection(cs);

            con.Open();

            string imageName = "";

            // OLD IMAGE
            SqlCommand oldCmd = new SqlCommand(
                "SELECT ImagePath FROM Events WHERE EventID=@id",
                con);

            oldCmd.Parameters.AddWithValue("@id", id);

            imageName = oldCmd.ExecuteScalar().ToString();

            // NEW IMAGE
            if (fu.HasFile)
            {
                imageName = fu.FileName;

                fu.SaveAs(
                    Server.MapPath("~/Images/")
                    + imageName);
            }

            string query = @"
    UPDATE Events
    SET
        Title=@title,
        Description=@description,
        Location=@location,
        ImagePath=@image,
        EventKey=@eventkey
    WHERE EventID=@id";

            SqlCommand cmd =
                new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@title", title);

            cmd.Parameters.AddWithValue("@description", description);

            cmd.Parameters.AddWithValue("@location", location);

            cmd.Parameters.AddWithValue("@image", imageName);

            cmd.Parameters.AddWithValue("@eventkey", eventKey);

            cmd.Parameters.AddWithValue("@id", id);

            cmd.ExecuteNonQuery();

            con.Close();

            gvEvents.EditIndex = -1;

            LoadEvents();
        }

        protected void gvEvents_RowDeleting(
            object sender,
            GridViewDeleteEventArgs e)
        {
            int eventId = Convert.ToInt32(
                gvEvents.DataKeys[e.RowIndex].Value);

            SqlConnection con = new SqlConnection(cs);

            string query =
                "DELETE FROM Events WHERE EventID=@id";

            SqlCommand cmd =
                new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@id", eventId);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            LoadEvents();
        }
    }
}