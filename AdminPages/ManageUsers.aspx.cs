using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class AdminPages_ManageUsers : System.Web.UI.Page
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

    protected void gvUsers_SelectedIndexChanged(object sender, EventArgs e)
    {
       
        lblError.Text = "";
        lblError.Visible = true;

        displayUserRole();
    }

    private void displayUserRole()
    {
        MembershipUser user = Membership.GetUser(gvUsers.SelectedDataKey.Values[1].ToString());
        String[] roles = Roles.GetRolesForUser(user.UserName);
        String role = roles[0];
        lstRoles.SelectedIndex = -1;
        if (lstRoles.Items[0].Value.Equals(role))
        {
            lstRoles.SelectedIndex = 0;
        }
        else if(lstRoles.Items[1].Value.Equals(role))
        {
            lstRoles.SelectedIndex = 1;
        }
        else 
        {
            lstRoles.SelectedIndex = 2;
        }
       
        gvUsers.DataBind();
        dvUserInfo.DataBind();
        lblRoles.Visible = true;
        lstRoles.Visible = true;
    }
    protected void dsUserInfo_Updating(object sender, SqlDataSourceCommandEventArgs e)
    {
        e.Command.Connection.Open();
        e.Command.Transaction = e.Command.Connection.BeginTransaction();

    }
    protected void dsUserInfo_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        if (e.Exception != null)
        {
            e.Command.Transaction.Rollback();
            e.ExceptionHandled = true;
            lblError.Text = "An Error occured during updating.  User Name and Email cannot be null and must be unique";
            lblError.Visible = true;
        }
        else
        {
            e.Command.Transaction.Commit();
            gvUsers.DataBind();
            lblError.Text = "Record successfully updated";
            lblError.Visible = true;
        }

    }
    protected void lstRoles_SelectedIndexChanged(object sender, EventArgs e)
    {
        String newRole = lstRoles.SelectedValue;
        String userName = gvUsers.SelectedDataKey.Values[1].ToString();

        Roles.AddUserToRole(userName, newRole);

        if (lstRoles.SelectedIndex!=1 && lstRoles.SelectedIndex!=2 )
        {
            Roles.RemoveUserFromRole(userName, lstRoles.Items[0].Value);
        }
        else if (lstRoles.SelectedIndex != 0 && lstRoles.SelectedIndex != 2)
        {
            Roles.RemoveUserFromRole(userName, lstRoles.Items[1].Value);
        }
        else 
        {
            Roles.RemoveUserFromRole(userName, lstRoles.Items[2].Value);
        }
        
        gvUsers.DataBind();
        dvUserInfo.DataBind();
        lblError.Text = "Role successfully updated";
    }


    
}