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

            if (!IsPostBack)
            {
                try
                {
                    using (var db = new SqlConnection(conn))
                    {
                        db.Open();
                        using (var cmd = db.CreateCommand())
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.CommandText = "SELECT FNAME FROM INSTRUCTOR_TABLE";

                            DDLInstructor.DataValueField = "FNAME";
                            DDLInstructor.DataTextField = "FNAME";
                            DDLInstructor.DataSource = cmd.ExecuteReader();
                            DDLInstructor.DataBind();

                        }
                    }
                }
                catch (Exception ex)
                {

                }
            }

                if (!IsPostBack)
            {
                try
                {
                    using (var db = new SqlConnection(conn))
                    {
                        db.Open();
                        using (var cmd = db.CreateCommand())
                        {
                            cmd.CommandType = CommandType.Text;
                            cmd.CommandText = "SELECT CRSE_NAME FROM COURSE_TABLE";

                            DDLCname.DataValueField = "CRSE_NAME";
                            DDLCname.DataTextField = "CRSE_NAME";
                            DDLCname.DataSource = cmd.ExecuteReader();
                            DDLCname.DataBind();

                        }
                    }
                }
                catch (Exception ex)
                {

                }
            } //COURSE             
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

        protected void BttnSubmit_Click(object sender, EventArgs e)
        {
            string ID = txtIDNo.Text;
            string Instructor = DDLInstructor.SelectedValue;
            string Course = DDLCname.SelectedValue;
            string level = DDLYrLvl.SelectedValue;
            string Semester = DDLSem.SelectedValue;
            string Sched = DDLSched.SelectedValue;
            string AY = DDLAcadYr.SelectedValue;
            string Stat = DDLStat.SelectedValue;

            try
            {
                using (var db = new SqlConnection(conn))
                {
                    db.Open();
                    using (var cmd = db.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "INSERT INTO ENROLLMENT (STUD_ID,CRSE_NAME,INSTRUCTOR,LEVEL,SEM,SCHED,AY,STATUS)"
                                        + "VALUES("
                                        + "@Stud_ID,"
                                        + "@Course,"
                                        + "@instructor,"
                                        + "@level,"
                                        + "@sem,"
                                        + "@sched,"
                                        + "@AY,"
                                        +"@stat)";


                        cmd.Parameters.AddWithValue("@Stud_ID", ID);
                        cmd.Parameters.AddWithValue("@Course", Course);
                        cmd.Parameters.AddWithValue("@instructor", Instructor);
                        cmd.Parameters.AddWithValue("@level", level);
                        cmd.Parameters.AddWithValue("@sem", Semester);
                        cmd.Parameters.AddWithValue("@sched", Sched);
                        cmd.Parameters.AddWithValue("@AY", AY);
                        cmd.Parameters.AddWithValue("@stat", Stat);
                        var ctr = cmd.ExecuteNonQuery();

                        if (ctr >= 1)
                        {
                            Response.Write("<script>alert ('Successfully Saved')</script>");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert ('Something went Wrong. Try Again')</script><pre>" + ex.ToString() + "</pre>");

            }

        }

    }
}