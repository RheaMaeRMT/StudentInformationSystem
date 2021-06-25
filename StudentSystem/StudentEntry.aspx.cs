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
    public partial class StudentEntry : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["StudentDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        { 
            if (Session["username"] == null)
            {
                Response.Redirect("Login.aspx");
            } 
        }

        protected void BttnSubmit_Click(object sender, EventArgs e)
        {
            string ID = txtIDNo.Text;
            string firstname = txtFname.Text;
            string lastname = txtLname.Text;
            string middle = txtMname.Text;
            string gender = DDLGender.SelectedValue;
            string phone = txtNum.Text;
            string email = txtEmail.Text;
            string bdate = txtBDate.Text;
            string status = DDLStat.SelectedValue;
            string PreBrngy = txtPBrngy.Text;
            string PreCity = txtPMun.Text;
            string PreProvince = txtPProvince.Text;
            string PreCode = txtPCode.Text;


            try
            {
                using (var db = new SqlConnection(conn))
                {
                    db.Open();
                    using (var cmd = db.CreateCommand())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "INSERT INTO STUD_TABLE (STU_ID,STU_FNAME,STU_MNAME,STU_LNAME,STU_PHONE,STU_GENDER,STU_EMAIL,STU_STATUS,STU_BDATE,STU_PreBrngy,STU_PreCity,STU_PreProvince,STU_PreCode)"
                                            + "VALUES("
                                            + "@ID,"
                                            + "@fname,"
                                            + "@mname,"
                                            + "@lname,"
                                            + "@Phone,"
                                            + "@gender,"
                                            + "@Email,"
                                            + "@status,"
                                            + "@BDate,"
                                            + "@PreBrngy,"
                                            + "@PreCity,"
                                            + "@PreProvince,"
                                            + "@PreCode)";

                        cmd.Parameters.AddWithValue("@ID", txtIDNo.Text);
                        cmd.Parameters.AddWithValue("@fname", txtFname.Text);
                        cmd.Parameters.AddWithValue("@mname", txtMname.Text);
                        cmd.Parameters.AddWithValue("@lname", txtLname.Text);
                        cmd.Parameters.AddWithValue("@Phone", txtNum.Text);
                        cmd.Parameters.AddWithValue("@gender", DDLGender.SelectedValue);
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@status", DDLStat.SelectedValue);
                        cmd.Parameters.AddWithValue("@BDate", txtBDate.Text);
                        cmd.Parameters.AddWithValue("@PreBrngy", txtPBrngy.Text);
                        cmd.Parameters.AddWithValue("@PreCity", txtPMun.Text);
                        cmd.Parameters.AddWithValue("@PreProvince", txtPProvince.Text);
                        cmd.Parameters.AddWithValue("@PreCode", txtPCode.Text);


                        var ctr = cmd.ExecuteNonQuery();

                        if (ctr >= 1)
                        {
                            Response.Write("<script>alert ('Records SAVED ! New Student Added')</script>");
                            ClearScreen();
                        }
                    } // db close
               }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert ('Records NOT SAVED')</script><pre>" + ex.ToString() + "</pre>");
                //  Response.Redirect("enrollform.aspx");
                ClearScreen();
            }
        }

        public void ClearScreen()
        {
            txtIDNo.Text="";
            txtFname.Text = "";
            txtMname.Text = "";
            txtLname.Text = "";
            txtNum.Text = "";
            DDLGender.SelectedValue="";
            txtEmail.Text = "";
            DDLStat.SelectedValue="";
            txtBDate.Text = "";
            txtPCode.Text = "";
            txtPBrngy.Text = "";
            txtPMun.Text = "";
            txtPProvince.Text = "";
            txtPCode.Text = "";

        }

    }
}