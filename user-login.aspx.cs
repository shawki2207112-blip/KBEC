using System;
using System.Configuration;
using System.Data.SqlClient;

namespace KBEC
{
    public partial class user_login : System.Web.UI.Page
    {
        string cs =
            ConfigurationManager
            .ConnectionStrings["KBECConnection"]
            .ConnectionString;

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con =
                new SqlConnection(cs);

            string query = @"
            SELECT *
            FROM Users
            WHERE Email=@email
            AND Password=@password
            AND Role='user'";

            SqlCommand cmd =
                new SqlCommand(query, con);

            cmd.Parameters.AddWithValue(
                "@email",
                txtEmail.Text.Trim());

            cmd.Parameters.AddWithValue(
                "@password",
                txtPassword.Text.Trim());

            con.Open();

            SqlDataReader dr =
                cmd.ExecuteReader();

            if (dr.Read())
            {
                Session["UserID"] =
                    dr["UserID"].ToString();

                Session["UserName"] =
                    dr["FullName"].ToString();

                Session["Role"] = "user";

                Response.Redirect("kbec.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid User Account";
            }

            con.Close();
        }
    }
}