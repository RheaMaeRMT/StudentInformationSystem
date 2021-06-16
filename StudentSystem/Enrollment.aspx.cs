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
    public partial class Enrollment : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["StudentDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            /*
            try
            {
                using (var db = new SqlConnection(conn))
                {
                    db.Open();
                    using (var cmd = db.CreateCommand())
                    {
                        cmd.CommandType = System.Data.CommandType.Text;
                        cmd.CommandText = "SELECT STU_ID FROM STUD_TABLE";

                        txtIDNo.
                    }
                }
            }
            catch(Exception ex)
            {

            }
            */
        }

        protected void BttnSearch_Click(object sender, EventArgs e)
        {
            string IDNo = txtIDNo.Text;

            try
            {
                using (var db = new SqlConnection(conn))
                {
                    db.Open();
                    using (var cmd = db.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "SELECT * FROM STUD_TABLE WHERE STU_ID = '" +IDNo+ "'";

                        SqlDataReader rdr = cmd.ExecuteReader();
                         if (rdr.Read())
                        {
                            txtFname.Text = rdr["STU_FNAME"].ToString();
                            txtLname.Text = rdr["STU_LNAME"].ToString();
                            txtMname.Text = rdr["STU_MNAME"].ToString();
                            txtEmail.Text = rdr["STU_EMAIL"].ToString();
                            txtBDate.Text = rdr["STU_BDATE"].ToString();
                            txtNum.Text = rdr["STU_PHONE"].ToString();
                            
        
                        }
                        else
                        {
                            Response.Write("<script> alert ('ID Number :  " + IDNo + " NOT FOUND') </script>");
                            
                        }
                    }
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert ('Records NOT SAVED')</script><pre>" + ex.ToString() + "</pre>");
            }
        }
    }
}