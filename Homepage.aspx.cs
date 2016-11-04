using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control c = Master.FindControl("lnkLogout");
        if (c != null)
            c.Visible = true;
        c = Master.FindControl("lnkLogin");
        if (c != null)
            c.Visible = false;
        if (!IsPostBack)
        {
               Application.Lock();
                    int pageHits = Convert.ToInt32(Application["PageHits"]);
                    pageHits = pageHits + 1;
                    Application["PageHits"] = pageHits;
                    Application.UnLock();

                    lblPageHits.Text = "You have accessed this page  " + pageHits + " times.";
                    
            SetImageUrl();

            TimeSpan time = (((DateTime)Session["SessionStart"]).AddMinutes(5) - DateTime.Now); int minutes = time.Minutes; int seconds = time.Seconds;
        }
     
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        SetImageUrl();
    }

    private void SetImageUrl()
    {
        if (ViewState["ImageDisplayed"] == null)
        {
            Image1.ImageUrl = "~/Images/1.jpg";
            ViewState["ImageDisplayed"] = 1;
            //Label1.Text = "Image: 1";
        }
        else
        {
            int i = (int)ViewState["ImageDisplayed"];
            if (i == 7)
            {
                Image1.ImageUrl = "~/Images/1.jpg";
                ViewState["ImageDisplayed"] = 1;
                //Label1.Text = "Image: 1";
            }

            else
            {
                i += 1;
                Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
                ViewState["ImageDisplayed"] = i;
                //Label1.Text = "Image: " + i.ToString();
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Timer1.Enabled)
        {
            Timer1.Enabled = false;
            Button1.Text = "Start";
        }
        else
        {
            Timer1.Enabled = true;
            Button1.Text = "Stop";
        }
    }
}