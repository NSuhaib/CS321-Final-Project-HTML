using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AVAssist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control c = Master.FindControl("lnkLogout");
        if (c != null)
            c.Visible = true;
        c = Master.FindControl("lnkLogin");
        if (c != null)
            c.Visible = false;
    }
    protected void lnkavform_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Faculty/AVForm.aspx");
    }
}