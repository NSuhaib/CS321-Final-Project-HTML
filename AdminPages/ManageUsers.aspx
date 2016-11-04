<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="AdminPages_ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="welcome" runat="Server">


    <div>
        <asp:GridView ID="gvUsers" runat="server" DataSourceID="dsAllUsers"
            AutoGenerateColumns="false" DataKeyNames="UserId, UserName"
            OnSelectedIndexChanged="gvUsers_SelectedIndexChanged">
            <SelectedRowStyle BackColor="LightGray" />
            <Columns>

                <asp:CommandField ShowSelectButton="true" SelectText="Select" />
                <asp:CommandField ShowDeleteButton="true" SelectText="Delete" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" Visible="false" SortExpression="UserId"></asp:BoundField>
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName"></asp:BoundField>
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:DetailsView ID="dvUserInfo" runat="server" DataSourceID="dsUserInfo"
            AutoGenerateRows="false" AutoGenerateEditButton="true" DataKeyNames="UserId">
            <Fields>
                <asp:BoundField DataField="UserId" ReadOnly="true" Visible="false" />
                <asp:BoundField DataField="UserName" HeaderText="User Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="CreateDate" ReadOnly="true" HeaderText="Date created" />
                <asp:BoundField DataField="LastLoginDate" ReadOnly="true" HeaderText="Last Login Date" />
                <asp:BoundField DataField="Comment" HeaderText="Comment" />
            </Fields>
        </asp:DetailsView>
        <br />
        <asp:Label ID="lblRoles" runat="server" Visible="false" Text="Select User Role: "></asp:Label>
        <asp:RadioButtonList ID="lstRoles" runat="server" Visible="false"
            OnSelectedIndexChanged="lstRoles_SelectedIndexChanged" AutoPostBack="true">
            <asp:ListItem Text="Admin" Value="admin"></asp:ListItem>
            <asp:ListItem Text="Student" Value="student"></asp:ListItem>
            <asp:ListItem Text="Faculty" Value="faculty"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <asp:Label ID="lblError" Visible="false" ForeColor="Red" Font-Bold="true" runat="server" Text=""></asp:Label>

        <asp:SqlDataSource ID="dsAllUsers" runat="server"
            ConnectionString="<%$ ConnectionStrings:UserDB %>"
            SelectCommand="SELECT Users.UserId, Users.UserName, Memberships.Email, Roles.RoleName
                            FROM Users
                            JOIN Memberships ON Users.UserId = Memberships.UserId
                            JOIN UsersInRoles ON Memberships.UserId = UsersInRoles.UserId
                            JOIN Roles ON UsersInRoles.RoleId = Roles.RoleId"
            DeleteCommand=" DELETE FROM Profiles WHERE UserId=@UserID; DELETE FROM Memberships WHERE UserId=@UserId; DELETE FROM UsersInRoles WHERE UserID=@UserId; DELETE FROM Users WHERE UserId=@UserId; ">
            <DeleteParameters>
                <asp:Parameter Name="UserId"></asp:Parameter>
            </DeleteParameters>

        </asp:SqlDataSource>
        <asp:SqlDataSource ID="dsUserInfo" runat="server"
            ConnectionString="<%$ ConnectionStrings:UserDB %>"
            SelectCommand="SELECT * 
                            FROM Users
                            JOIN Memberships ON Memberships.UserId=Users.UserId
                            WHERE Users.UserId=@UserId"
            UpdateCommand="UPDATE Users SET UserName=@UserName WHERE UserId=@UserId
            UPDATE Memberships SET Email=@Email, Comment=@Comment WHERE UserId=@UserId;"
            OnUpdating="dsUserInfo_Updating"
            OnUpdated="dsUserInfo_Updated"
            DeleteCommand=" DELETE FROM Profiles WHERE UserId=@UserID; DELETE FROM Memberships WHERE UserId=@UserId; DELETE FROM UsersInRoles WHERE UserID=@UserId; DELETE FROM Users WHERE UserId=@UserId; ">
            <DeleteParameters>
                <asp:Parameter Name="UserId"></asp:Parameter>
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="gvUsers" PropertyName="SelectedValue" Name="UserId"></asp:ControlParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserName"></asp:Parameter>
                <asp:Parameter Name="UserId"></asp:Parameter>
                <asp:Parameter Name="Email"></asp:Parameter>
                <asp:Parameter Name="Comment"></asp:Parameter>
            </UpdateParameters>

        </asp:SqlDataSource>

    </div>

</asp:Content>

