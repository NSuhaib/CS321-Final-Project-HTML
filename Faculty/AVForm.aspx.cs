using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AVForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.Visible = false;
        }
        
        Control c = Master.FindControl("lnkLogout");
        if (c != null)
            c.Visible = true;
        c = Master.FindControl("lnkLogin");
        if (c != null)
            c.Visible = false;
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
        txtdateofcomplaint.Text = Calendar1.SelectedDate.ToString("d-" + "MMM-" +"yy");
        Calendar1.Visible = false;
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtdateofcomplaint.Text = "";
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtPhone.Text = "";
        txtEmail.Text = "";
        txtRoomNumber.Text = "";
        txtComplaint.Text = "";
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ExecuteInsert(txtdateofcomplaint, txtFirstName, txtLastName, txtPhone, txtEmail, txtRoomNumber, txtComplaint);
        Response.Redirect("~/Submit.aspx");
    }

    private void ExecuteInsert(TextBox txtdateofcomplaint, TextBox txtFirstName, TextBox txtLastName, TextBox txtPhone, TextBox txtEmail, TextBox txtRoomNumber, TextBox txtComplaint)
    {
         System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(GetConnectionString());
        string sql = "INSERT INTO AVFORM (complaint_date,first_name, last_name, phone, email, room, complaint) Values"
            + "(@complaint_date, @first_name, @last_name, @phone, @email, @room, @complaint)";

        try
        {


            conn.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
            System.Data.SqlClient.SqlParameter[] param = new System.Data.SqlClient.SqlParameter[7];

            param[0] = new System.Data.SqlClient.SqlParameter("@complaint_date", txtdateofcomplaint.Text);
            param[1] = new System.Data.SqlClient.SqlParameter("@first_name",txtFirstName.Text);
            param[2] = new System.Data.SqlClient.SqlParameter("@last_name", txtLastName.Text);
            param[3] = new System.Data.SqlClient.SqlParameter("@phone", txtPhone.Text);
            param[4] = new System.Data.SqlClient.SqlParameter("@email", txtEmail.Text);
            param[5] = new System.Data.SqlClient.SqlParameter("@room", txtRoomNumber.Text);
            param[6] = new System.Data.SqlClient.SqlParameter("@complaint", txtComplaint.Text);
     
            
            param[0].Value = txtdateofcomplaint.Text;
            param[1].Value = txtFirstName.Text;
            param[2].Value = txtLastName.Text;
            param[3].Value = txtPhone.Text;
            param[4].Value = txtEmail.Text;
            param[5].Value = txtRoomNumber.Text;
            param[6].Value = txtComplaint.Text;
            
          
           

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

      
}


