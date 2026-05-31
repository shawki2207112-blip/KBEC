using System;
using System.Configuration;
using System.Data.SqlClient;

namespace KBEC
{
    public partial class signup : System.Web.UI.Page
    {
        string cs = ConfigurationManager
            .ConnectionStrings["KBECConnection"]
            .ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSignup_Click(object sender, EventArgs e)
        {
            SqlConnection con =
                new SqlConnection(cs);

            string query = @"

            INSERT INTO Users
            (
                FullName,
                Roll,
                Department,
                Email,
                Password,
                Role
            )

            VALUES
            (
                @fullname,
                @roll,
                @department,
                @email,
                @password,
                'User'
            )";

            SqlCommand cmd =
                new SqlCommand(query, con);

            cmd.Parameters.AddWithValue(
                "@fullname",
                txtName.Text);

            cmd.Parameters.AddWithValue(
                "@roll",
                txtRoll.Text);

            cmd.Parameters.AddWithValue(
                "@department",
                txtDepartment.Text);

            cmd.Parameters.AddWithValue(
                "@email",
                txtEmail.Text);

            cmd.Parameters.AddWithValue(
                "@password",
                txtPassword.Text);

            con.Open();

            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("user-login.aspx");
        }
    }
}