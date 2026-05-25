using System;
using System.Configuration;
using System.Data.SqlClient;

namespace KBEC
{
    public partial class add_event : System.Web.UI.Page
    {
        string connStr =
            ConfigurationManager
            .ConnectionStrings["KBECConnection"]
            .ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            // ADMIN CHECK

            if (Session["UserRole"] == null ||
                Session["UserRole"].ToString() != "admin")
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void btnAddEvent_Click(object sender, EventArgs e)
        {
            SqlConnection con =
                new SqlConnection(connStr);

            string query = @"
                INSERT INTO Events (Title,Description,Location,ImagePath,FacebookLink,EventKey,IsFeatured) 
                VALUES ( @Title, @Description, @Location, @ImagePath, @FacebookLink, @EventKey, @IsFeatured) ";


            SqlCommand cmd =
                new SqlCommand(query, con);

            cmd.Parameters.AddWithValue( "@Title",txtEventName.Text);

            cmd.Parameters.AddWithValue(
                "@Description",
                txtDescription.Text);

            cmd.Parameters.AddWithValue(
                "@Location",
                txtLocation.Text);

            string imageName = "";

            if (fileEventImage.HasFile)
            {
                imageName =
                    fileEventImage.FileName;

                string savePath =
                    Server.MapPath("~/Images/")
                    + imageName;

                fileEventImage.SaveAs(savePath);
            }
            cmd.Parameters.AddWithValue(
                "@ImagePath",
                imageName);

            cmd.Parameters.AddWithValue(
                "@FacebookLink",
                txtFacebook.Text);

            cmd.Parameters.AddWithValue(
                "@EventKey",
                txtEventKey.Text);

            cmd.Parameters.AddWithValue(
                "@IsFeatured",
                chkFeatured.Checked);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            lblMessage.Text =
                "Event Added Successfully";

            ClearFields();
        }

        void ClearFields()
        {
            txtEventName.Text = "";
            txtEventKey.Text = "";
            txtDescription.Text = "";
            txtLocation.Text = "";
            txtFacebook.Text = "";

            chkFeatured.Checked = true;
        }
    }
}