using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Principal;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

    
    protected void loginLink_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }

    protected void LoginControl_LoggedIn(object sender, EventArgs e)
    {
        if (Roles.IsUserInRole("admin"))
        {
            LoginControl.DestinationPageUrl = "~/AdminPages/AdminSchedule.aspx";
        }

        else if (Roles.IsUserInRole("user"))
        {
            LoginControl.DestinationPageUrl = "~/Homepage.aspx";
        }

        else if (Roles.IsUserInRole("student"))
        {
            LoginControl.DestinationPageUrl = "~/Students/StudentForm.aspx";
        }
        //student not redirecting
        else
        {
            LoginControl.DestinationPageUrl = "~/Faculty/ProfForm.aspx";
            
        }
        
    }
}