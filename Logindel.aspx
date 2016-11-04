<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logindel.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <div>
        <asp:Login ID="LoginControl" runat="server"
            OnLoggedIn="LoginControl_LoggedIn"
            CreateUserText="Please Register"
            CreateUserUrl="~/CreateUser.aspx"
            InstructionText="Please enter your username and password"
            FailureText="Please Try Again"
            TitleText="Log In"
            LoginButtonText="This is where the magic happens"
            PasswordRecoveryUrl="~/PasswordRecovery.aspx"
            PasswordRecoveryText="Did you forget your password?">

            <%--<TitleTextStyle BackColor  Font-Bold="" ForeColor />--%>
          <%--  <InstructionTextStyle Font-Italic ="" />
            <FailureTextStyle ForeColor ="" />--%>

           

        </asp:Login>
         <p>Change your password <a href="AccountPages/ChangePassword.aspx">here</a></p>
    </div>
    </form>
</body>
</html>
