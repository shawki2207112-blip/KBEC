using System;
using System.Configuration;
using System.Data.SqlClient;

namespace KBEC
{
    public partial class admin_login : System.Web.UI.Page
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
            AND Role='admin'";

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

                Session["Role"] = "admin";

                Response.Redirect("admin-dashboard.aspx");
            }
            else
            {
                lblMessage.Text ="Invalid Email or Password";
            }

            con.Close();
        }
    }
}