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
    public partial class Contact : Page
    {
        string conn = ConfigurationManager.ConnectionStrings["StudentDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }*/

          
        }
    
        protected void BttnSubmit_Click(object sender, EventArgs e)
        {
            string Course = DDLCname.SelectedValue;
            string code = DDLCode.SelectedValue;

            try
            {
                using (var db = new SqlConnection(conn))
                {
                    db.Open();
                    using (var cmd = db.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "INSERT INTO COURSE_TABLE(CRSE_CODE, CRSE_NAME)"
                                        + "VALUES("
                                        + "@code,"
                                        + "@name)";

                        cmd.Parameters.AddWithValue("@code", code);
                        cmd.Parameters.AddWithValue("@name", Course);

                        var ctr = cmd.ExecuteNonQuery();

                        if (ctr >= 1)
                        {
                            Response.Write("<script>alert ('COURSE ADDED!')</script>");
                        }
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