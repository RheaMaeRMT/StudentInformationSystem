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
    public partial class Reports : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["StudentDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void BttnSearch_Click(object sender, EventArgs e)
        {
            string choice = DDLStatChoice.SelectedValue;
            string str = "";

            if (choice.Equals("All"))
            {
                str = "SELECT * FROM ENROLLMENT";
                /*
                str = "SELECT ENROLLMENT.STUD_ID, STUD_TABLE.STU_FNAME,STU_LNAME COURSE_TABLE.CRSE_NAME, ENROLLMENT.SEM,STATUS"
                    + "FROM ((ENROLLMENT"
                    + "INNER JOIN STUD_TABLE ON ENROLLMENT.STUD_ID = STUD_TABLE.STU_ID)"
                    + "INNER JOIN COURSE_TABLE ON ENROLLMENT.CRSE_NAME = COURSE_TABLE.CRSE_NAME)"; */
            }
            else          
                str = "SELECT * FROM ENROLLMENT WHERE STATUS = '" + choice + "'";
                /*
                str = "SELECT ENROLLMENT.STUD_ID, STUD_TABLE.STU_FNAME,STU_LNAME COURSE_TABLE.CRSE_NAME, ENROLLMENT.SEM,STATUS"
                    + "FROM((ENROLLMENT"
                    + "INNER JOIN STUD_TABLE ON ENROLLMENT.STUD_ID = STUD_TABLE.STU_ID)"
                    + "INNER JOIN COURSE_TABLE ON ENROLLMENT.CRSE_NAME = COURSE_TABLE.CRSE_NAME)"
                    + "WHERE STATUS = '" + choice + "'"; */         
            try
            {
                using (var db = new SqlConnection(conn))
                {
                    db.Open();
                    using (var cmd = db.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = str;
                        cmd.Connection = db;
                        DataTable dt = new DataTable();
                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        sda.Fill(dt);
                        GVOverallReport.DataSource = dt;
                        GVOverallReport.DataBind();
                        db.Close();
                    }
                }
            }
            catch
            {

            }
        }
    }
}