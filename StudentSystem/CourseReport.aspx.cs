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
    public partial class CourseReport : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["StudentDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        { 
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
        protected void GVbind()
        {
            using (var db = new SqlConnection(conn))
            {
                db.Open();
                using (var cmd = db.CreateCommand())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "SELECT FROM COURSE_TABLE";
                    SqlDataReader rdr = cmd.ExecuteReader();
                    if (rdr.HasRows == true)
                    {
                        GVCourses.DataSource = rdr;
                        GVCourses.DataBind();
                    }
                }
            }

        }

        }
    }