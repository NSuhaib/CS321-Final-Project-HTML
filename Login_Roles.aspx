<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login_Roles.aspx.cs" Inherits="Login_Roles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LoginView ID="login" runat="server">
            <AnonymousTemplate>
                <h2>You are Anonymous</h2>
                    Why don't you <asp:LoginStatus ID="LoginStatus1" runat="server" />
            </AnonymousTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="user">
                    <ContentTemplate>
                        <p>You are a "User"</p>
                    </ContentTemplate>
                </asp:RoleGroup>
                <asp:RoleGroup Roles="admin">
                    <ContentTemplate>
                        <p>You are an "Admin"</p>
                        <p>Admin Info:</p>
                        <a href="AdminPages/AddUsers.aspx">Add Users</a>
                    </ContentTemplate>
                </asp:RoleGroup>
                <asp:RoleGroup Roles="faculty">
                    <ContentTemplate>
                        <p>You are a member of faculty</p>
                    </ContentTemplate>       
                </asp:RoleGroup>
                <asp:RoleGroup Roles ="student">
                    <ContentTemplate>
                        <p>You are a Student</p>
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView>
    </div>
    </form>
</body>
</html>
