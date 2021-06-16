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
    public partial class Login : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["StudentDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BttnSubmit_Click(object sender, EventArgs e)
        {
            string user = txtUser.Text;
            string pass = txtPass.Text;

            try
            {
                using (var db = new SqlConnection(conn))
                {
                    if (db.State == ConnectionState.Closed)
                    {
                        db.Open();
                    }
                    using (var cmd = db.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "SELECT * FROM USER_TBL WHERE USER_NAME= '" + user + " ' AND USER_PASS = '" + pass + "'";


                        var rdr = cmd.ExecuteReader();
                        if (rdr.HasRows)
                        {
                            Session["username"] = user;
                            Session["Password"] = pass;
                            Response.Redirect("Homepage.aspx");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert ('Invalid Credentials. Try Again')</script><pre>" + ex.ToString() + "</pre>");

            }
        }
    }
}