using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

public partial class StudentForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
            Calendar2.Visible = false;
             TimeSpan time = (((DateTime)Session["SessionStart"]).AddMinutes(5) - DateTime.Now); 
             int minutes = time.Minutes; 
             int seconds = time.Seconds;
            
             lblSessionTime.Text = "You Session Started at " + DateTime.Now;
             lblRemainingTime.Text = "You have " + minutes + " minutes and " + seconds + " seconds remaining";

             Control c = Master.FindControl("lnkLogout");
             if (c != null)
                 c.Visible = true;
             c = Master.FindControl("lnkLogin");
             if (c != null)
                 c.Visible = false;
        }

       
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ExecuteInsert(txtFirstName, txtLastName, txtPhone, txtEmail, txtNeiuID, 
                        txtPickUpDate, txtReturnDate, txtCourseName, txtProfName, txtcomments);
        Response.Redirect("~/Submit.aspx");
    }

    private void ExecuteInsert(TextBox txtFirstName, TextBox txtLastName, TextBox txtPhone, 
                                TextBox txtEmail, TextBox txtNeiuID, TextBox txtPickUpDate, 
                                TextBox txtReturnDate, TextBox txtCourseName, TextBox txtProfName, TextBox txtcomments)
    {
        
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(GetConnectionString());
        string sql = "INSERT INTO STUDENTFORM (first_name, last_name, phone_number, email, neiu_id_number, pickup_date, return_date, course_name, professor_name, comments) Values"
            + "(@first_name, @last_name, @phone_number, @email, @neiu_id_number, @pickup_date, @return_date, @course_name, @professor_name, @comments)";

        try
        {


            conn.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
            System.Data.SqlClient.SqlParameter[] param = new System.Data.SqlClient.SqlParameter[10];

            param[0] = new System.Data.SqlClient.SqlParameter("@first_name",txtFirstName.Text);
            param[1] = new System.Data.SqlClient.SqlParameter("@last_name", txtLastName.Text);
            param[2] = new System.Data.SqlClient.SqlParameter("@phone_number", txtPhone.Text);
            param[3] = new System.Data.SqlClient.SqlParameter("@email", txtEmail.Text);
            param[4] = new System.Data.SqlClient.SqlParameter("@neiu_id_number", txtNeiuID.Text);
            param[5] = new System.Data.SqlClient.SqlParameter("@pickup_date", txtPickUpDate.Text);
            param[6] = new System.Data.SqlClient.SqlParameter("@return_date", txtReturnDate.Text);
            param[7] = new System.Data.SqlClient.SqlParameter("@course_name", txtCourseName.Text);
            param[8] = new System.Data.SqlClient.SqlParameter("@professor_name", txtProfName.Text);
            param[9] = new System.Data.SqlClient.SqlParameter("@comments", txtcomments.Text);
            
            
            param[0].Value = txtFirstName.Text;
            param[1].Value = txtLastName.Text;
            param[2].Value = txtPhone.Text;
            param[3].Value = txtEmail.Text;
            param[4].Value = txtNeiuID.Text;
            param[5].Value = txtPickUpDate.Text;
            param[6].Value = txtReturnDate.Text;
            param[7].Value = txtCourseName.Text;
            param[8].Value = txtProfName.Text;
            param[9].Value = txtcomments.Text;
           

            for (int i = 0; i < param.Length; i++)
            {
                cmd.Parameters.Add(param[i]);
            }

            cmd.CommandType = System.Data.CommandType.Text;
            cmd.ExecuteNonQuery();
        }

        catch (System.Data.SqlClient.SqlException ex)
        {
            string msg = "Error had occured.  Please try again.";
            msg += ex.Message;
            throw new Exception(msg);
        }

        finally
        {
            conn.Close();
        }
    }

    private string GetConnectionString()
    {
        return System.Configuration.ConfigurationManager.ConnectionStrings["UserDB"].ConnectionString;
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar1.Visible)
        {
            Calendar1.Visible = false;
        }
        else
            Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {

        txtPickUpDate.Text = Calendar1.SelectedDate.ToString("d-" + "MMM-" + "yy");
        Calendar1.Visible = false;
        

       
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (Calendar2.Visible)
        {
            Calendar2.Visible = false;
        }
        else
            Calendar2.Visible = true;
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtReturnDate.Text = Calendar2.SelectedDate.ToString("d-" + "MMM-" + "yy");
        Calendar2.Visible = false;
    }
      protected void btnReset_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtPhone.Text = "";
        txtEmail.Text = "";
        txtNeiuID.Text = "";
        txtPickUpDate.Text = "";
        txtReturnDate.Text = "";
        txtCourseName.Text = "";
        txtProfName.Text = "";
    }
}




   

           


    
    