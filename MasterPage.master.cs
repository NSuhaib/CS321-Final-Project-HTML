using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {       
    }
   
    protected void lnkLogin_Click(object sender, EventArgs e)
    {
        lnkLogout.Visible = true;
        lnkLogin.Visible = false;
        Response.Redirect("login.aspx");     

    }
    protected void lnkLogout_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        FormsAuthentication.RedirectToLoginPage();
    }
   
    
}
