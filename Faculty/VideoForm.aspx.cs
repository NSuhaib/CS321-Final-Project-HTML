using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VideoFrom : System.Web.UI.Page
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
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ExecuteInsert(txtFirstName,txtLastName,txtPhone,txtRecordDate, txtRecordLocation, txtDvdLabel,txtFormat,
                        txtComments,txtNumCopies);
        Response.Redirect("~/Submit.aspx");
    }

    private void ExecuteInsert(TextBox txtFirstName, TextBox txtLastName, TextBox txtPhone, TextBox txtRecordDate, TextBox txtRecordLocation, TextBox txtDvdLabel, TextBox txtFormat, TextBox txtComments, TextBox txtNumCopies)
    {
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection(GetConnectionString());
        string sql = "INSERT INTO VIDEOFORM (first_name, last_name, phone_number, date_of_recording, location, DVD_label, format_type, comments, number_copies) Values"
            + "(@first_name, @last_name, @phone_number, @date_of_recording, @location, @DVD_label, @format_type, @comments, @number_copies)";

        try
        {


            conn.Open();
            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(sql, conn);
            System.Data.SqlClient.SqlParameter[] param = new System.Data.SqlClient.SqlParameter[9];

            param[0] = new System.Data.SqlClient.SqlParameter("@first_name",txtFirstName.Text);
            param[1] = new System.Data.SqlClient.SqlParameter("@last_name", txtLastName.Text);
            param[2] = new System.Data.SqlClient.SqlParameter("@phone_number", txtPhone.Text);
            param[3] = new System.Data.SqlClient.SqlParameter("@date_of_recording", txtRecordDate.Text);
            param[4] = new System.Data.SqlClient.SqlParameter("@location", txtRecordLocation.Text);
            param[5] = new System.Data.SqlClient.SqlParameter("@DVD_label", txtDvdLabel.Text);
            param[6] = new System.Data.SqlClient.SqlParameter("@format_type", txtFormat.Text);
            param[7] = new System.Data.SqlClient.SqlParameter("@comments", txtComments.Text);
            param[8] = new System.Data.SqlClient.SqlParameter("@number_copies", txtNumCopies.Text);
            
            
            param[0].Value = txtFirstName.Text;
            param[1].Value = txtLastName.Text;
            param[2].Value = txtPhone.Text;
            param[3].Value = txtRecordDate.Text;
            param[4].Value = txtRecordLocation.Text;
            param[5].Value = txtDvdLabel.Text;
            param[6].Value = txtFormat.Text;
            param[7].Value = txtComments.Text;
            param[8].Value = txtNumCopies.Text;
           

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
        txtRecordDate.Text = Calendar1.SelectedDate.ToString("d-" + "MMM-" + "yy");
        Calendar1.Visible = false;
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtFirstName.Text = "";
        txtLastName.Text = "";
        txtPhone.Text = "";
        txtEmail.Text = "";
        txtRecordDate.Text = "";
        txtRecordLocation.Text = "";
        txtDvdLabel.Text = "";
        txtFormat.Text = "";
        txtNumCopies.Text = "";
    }
}
