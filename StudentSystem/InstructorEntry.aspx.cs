using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentSystem
{
    public partial class InstructorEntry : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["StudentDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}