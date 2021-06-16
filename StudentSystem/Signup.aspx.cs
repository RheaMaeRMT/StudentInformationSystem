using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentSystem
{
    public partial class Signup : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["StudentDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BttnSignup_Click(object sender, EventArgs e)
        {
            string firstname = txtFname.Text;
            string lastname = txtLName.Text;
            string email = txtEmail.Text;
            string user = txtUser.Text;
            string pass = txtPass.Text;

            try
            {
                using (var db = new SqlConnection(conn))
                {
                    db.Open();
                    using (var cmd = db.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "INSERT INTO USER_TBL (USER_FNAME, USER_LNAME, USER_EMAIL, USER_NAME, USER_PASS)"
                                     + "VALUES("
                                     + "@firstname,"
                                     + "@lastname,"
                                     + "@email,"
                                     + "@user,"
                                     + "@pass)";

                        cmd.Parameters.AddWithValue("@firstname", txtFname.Text);
                        cmd.Parameters.AddWithValue("@lastname", txtLName.Text);
                        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@user", txtUser.Text);
                        cmd.Parameters.AddWithValue("@pass", txtPass.Text);

                        var ctr = cmd.ExecuteNonQuery();

                        if (ctr >= 1)
                        {
                            Response.Write("<script>alert ('REGISTERED!')</script>");
                        }
                        Response.Redirect("login.aspx");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert ('Something went wrong, Please Try Again.')</script><pre>" + ex.ToString() + "</pre>");
            }
        }
    }
}