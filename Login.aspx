<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="welcome" Runat="Server">
     

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
            PasswordRecoveryText="Did you forget your password?" VisibleWhenLoggedIn ="false">
                      

        </asp:Login>
         <p>Change your password <a href="AccountPages/ChangePassword.aspx">here</a></p>
    </div>
   
</asp:Content>

